// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ICO.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// spec_01
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 0 && icoState_ICO[this] != 0 && icoState_ICO[this] != 1))

// spec_02
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 1 && icoState_ICO[this] != 1 && icoState_ICO[this] != 2))

// spec_03
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 2 && icoState_ICO[this] != 2 && icoState_ICO[this] != 3))

// spec_04
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 3 && icoState_ICO[this] != 3 && icoState_ICO[this] != 4))

// spec_05
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 4 && icoState_ICO[this] != 4))

// spec_06
// LTLProperty: [](!finished(GVToken.mint, isPaused_ICO[ico_GVToken[this]] == true))

// spec_07 (the spec cannot be violated because msg.sender is never ICO
// #LTLProperty: [](!finished(GVToken.transfer, icoState_ICO[ico_GVToken[this]] != 4) && !finished(GVToken.transferFrom, icoState_ICO[ico_GVToken[this]] != 4))

// spec_08
// LTLProperty: [](!finished(*, migrationAgent_GVToken[gvToken_ICO[this]] == null && old(totalSupply_ERC20Basic[gvToken_ICO[this]]) > totalSupply_ERC20Basic[gvToken_ICO[this]] && icoState_ICO[this] != 2 && icoState_ICO[this] != 3))

type Ref = int;

type ContractName = int;

var null: Ref;

var ERC20Basic: ContractName;

var SafeMath: ContractName;

var BasicToken: ContractName;

var ERC20: ContractName;

var StandardToken: ContractName;

var MigrationAgent: ContractName;

var GVToken: ContractName;

var GVOptionToken: ContractName;

var GVOptionToken0: ContractName;

var GVOptionToken1: ContractName;

var GVOptionToken2: ContractName;

var GVOptionProgram: ContractName;

var Initable: ContractName;

var ICO: ContractName;

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



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic;



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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
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

procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s10: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s19: Ref, value_s19: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance;



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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
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
    _to_s125: Ref, 
    _value_s125: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s125: Ref, 
    _value_s125: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call balance_s137 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s137 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic;



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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
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
    owner_s149: Ref, 
    spender_s149: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s160: Ref, 
    to_s160: Ref, 
    value_s160: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s169: Ref, 
    value_s169: int)
   returns (__ret_0_: bool);



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
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
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call remaining_s312 := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
        assume revert || gas < 0;
    }
    else
    {
        call remaining_s312 := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} MigrationAgent_MigrationAgent_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} MigrationAgent_MigrationAgent(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance;



implementation MigrationAgent_MigrationAgent(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call MigrationAgent_MigrationAgent__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MigrationAgent_MigrationAgent__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} migrateFrom_MigrationAgent(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _value_s320: int);



var {:access "this.name=name_GVToken[this]"} name_GVToken: [Ref]int;

var {:access "this.symbol=symbol_GVToken[this]"} symbol_GVToken: [Ref]int;

var {:access "this.decimals=decimals_GVToken[this]"} decimals_GVToken: [Ref]int;

var {:access "this.TOKEN_LIMIT=TOKEN_LIMIT_GVToken[this]"} TOKEN_LIMIT_GVToken: [Ref]int;

var {:access "this.ico=ico_GVToken[this]"} ico_GVToken: [Ref]Ref;

var {:access "this.isFrozen=isFrozen_GVToken[this]"} isFrozen_GVToken: [Ref]bool;

var {:access "this.migrationMaster=migrationMaster_GVToken[this]"} migrationMaster_GVToken: [Ref]Ref;

var {:access "this.migrationAgent=migrationAgent_GVToken[this]"} migrationAgent_GVToken: [Ref]Ref;

var {:access "this.totalMigrated=totalMigrated_GVToken[this]"} totalMigrated_GVToken: [Ref]int;

procedure {:inline 1} GVToken_GVToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref);
  modifies Balance, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken, revert;



procedure {:constructor} {:public} {:inline 1} GVToken_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken;



implementation GVToken_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVToken_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _ico_s386, _migrationMaster_s386);
        assume revert || gas < 0;
    }
    else
    {
        call GVToken_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _ico_s386, _migrationMaster_s386);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} mint_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation mint_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call mint_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, holder_s433, value_s433);
        assume revert || gas < 0;
    }
    else
    {
        call mint_GVToken__success(this, msgsender_MSG, msgvalue_MSG, holder_s433, value_s433);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unfreeze_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, isFrozen_GVToken;



implementation unfreeze_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call unfreeze_GVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unfreeze_GVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := transfer_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := transferFrom_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_GVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := approve_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} migrate_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, totalMigrated_GVToken;



implementation migrate_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call migrate_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, value_s586);
        assume revert || gas < 0;
    }
    else
    {
        call migrate_GVToken__success(this, msgsender_MSG, msgvalue_MSG, value_s586);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setMigrationAgent_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, migrationAgent_GVToken;



implementation setMigrationAgent_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call setMigrationAgent_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _agent_s611);
        assume revert || gas < 0;
    }
    else
    {
        call setMigrationAgent_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _agent_s611);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setMigrationMaster_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, migrationMaster_GVToken;



implementation setMigrationMaster_GVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call setMigrationMaster_GVToken__fail(this, msgsender_MSG, msgvalue_MSG, _master_s636);
        assume revert || gas < 0;
    }
    else
    {
        call setMigrationMaster_GVToken__success(this, msgsender_MSG, msgvalue_MSG, _master_s636);
        assume !revert && gas >= 0;
    }
}



var {:access "this.optionProgram=optionProgram_GVOptionToken[this]"} optionProgram_GVOptionToken: [Ref]Ref;

var {:access "this.name=name_GVOptionToken[this]"} name_GVOptionToken: [Ref]int;

var {:access "this.symbol=symbol_GVOptionToken[this]"} symbol_GVOptionToken: [Ref]int;

var {:access "this.decimals=decimals_GVOptionToken[this]"} decimals_GVOptionToken: [Ref]int;

var {:access "this.TOKEN_LIMIT=TOKEN_LIMIT_GVOptionToken[this]"} TOKEN_LIMIT_GVOptionToken: [Ref]int;

procedure {:inline 1} GVOptionToken_GVOptionToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int);
  modifies Balance, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:public} {:inline 1} GVOptionToken_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation GVOptionToken_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVOptionToken_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s697, _name_s697, _symbol_s697, _TOKEN_LIMIT_s697);
        assume revert || gas < 0;
    }
    else
    {
        call GVOptionToken_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s697, _name_s697, _symbol_s697, _TOKEN_LIMIT_s697);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyOptions_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation buyOptions_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call buyOptions_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
        assume revert || gas < 0;
    }
    else
    {
        call buyOptions_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} remainingTokensCount_GVOptionToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas;



implementation remainingTokensCount_GVOptionToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := remainingTokensCount_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := remainingTokensCount_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} executeOption_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation executeOption_GVOptionToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := executeOption_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := executeOption_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} GVOptionToken0_GVOptionToken0_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} GVOptionToken0_GVOptionToken0(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation GVOptionToken0_GVOptionToken0(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVOptionToken0_GVOptionToken0__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
        assume revert || gas < 0;
    }
    else
    {
        call GVOptionToken0_GVOptionToken0__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} GVOptionToken1_GVOptionToken1_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} GVOptionToken1_GVOptionToken1(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation GVOptionToken1_GVOptionToken1(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVOptionToken1_GVOptionToken1__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
        assume revert || gas < 0;
    }
    else
    {
        call GVOptionToken1_GVOptionToken1__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} GVOptionToken2_GVOptionToken2_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} GVOptionToken2_GVOptionToken2(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation GVOptionToken2_GVOptionToken2(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVOptionToken2_GVOptionToken2__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
        assume revert || gas < 0;
    }
    else
    {
        call GVOptionToken2_GVOptionToken2__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
        assume !revert && gas >= 0;
    }
}



var {:access "this.option30perCent=option30perCent_GVOptionProgram[this]"} option30perCent_GVOptionProgram: [Ref]int;

var {:access "this.option20perCent=option20perCent_GVOptionProgram[this]"} option20perCent_GVOptionProgram: [Ref]int;

var {:access "this.option10perCent=option10perCent_GVOptionProgram[this]"} option10perCent_GVOptionProgram: [Ref]int;

var {:access "this.token30perCent=token30perCent_GVOptionProgram[this]"} token30perCent_GVOptionProgram: [Ref]int;

var {:access "this.token20perCent=token20perCent_GVOptionProgram[this]"} token20perCent_GVOptionProgram: [Ref]int;

var {:access "this.token10perCent=token10perCent_GVOptionProgram[this]"} token10perCent_GVOptionProgram: [Ref]int;

var {:access "this.option30name=option30name_GVOptionProgram[this]"} option30name_GVOptionProgram: [Ref]int;

var {:access "this.option20name=option20name_GVOptionProgram[this]"} option20name_GVOptionProgram: [Ref]int;

var {:access "this.option10name=option10name_GVOptionProgram[this]"} option10name_GVOptionProgram: [Ref]int;

var {:access "this.option30symbol=option30symbol_GVOptionProgram[this]"} option30symbol_GVOptionProgram: [Ref]int;

var {:access "this.option20symbol=option20symbol_GVOptionProgram[this]"} option20symbol_GVOptionProgram: [Ref]int;

var {:access "this.option10symbol=option10symbol_GVOptionProgram[this]"} option10symbol_GVOptionProgram: [Ref]int;

var {:access "this.option30_TOKEN_LIMIT=option30_TOKEN_LIMIT_GVOptionProgram[this]"} option30_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var {:access "this.option20_TOKEN_LIMIT=option20_TOKEN_LIMIT_GVOptionProgram[this]"} option20_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var {:access "this.option10_TOKEN_LIMIT=option10_TOKEN_LIMIT_GVOptionProgram[this]"} option10_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var {:access "this.gvAgent=gvAgent_GVOptionProgram[this]"} gvAgent_GVOptionProgram: [Ref]Ref;

var {:access "this.team=team_GVOptionProgram[this]"} team_GVOptionProgram: [Ref]Ref;

var {:access "this.ico=ico_GVOptionProgram[this]"} ico_GVOptionProgram: [Ref]Ref;

var {:access "this.gvOptionToken30=gvOptionToken30_GVOptionProgram[this]"} gvOptionToken30_GVOptionProgram: [Ref]Ref;

var {:access "this.gvOptionToken20=gvOptionToken20_GVOptionProgram[this]"} gvOptionToken20_GVOptionProgram: [Ref]Ref;

var {:access "this.gvOptionToken10=gvOptionToken10_GVOptionProgram[this]"} gvOptionToken10_GVOptionProgram: [Ref]Ref;

procedure {:inline 1} GVOptionProgram_GVOptionProgram_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref);
  modifies Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:public} {:inline 1} GVOptionProgram_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation GVOptionProgram_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call GVOptionProgram_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, _ico_s1007, _gvAgent_s1007, _team_s1007);
        assume revert || gas < 0;
    }
    else
    {
        call GVOptionProgram_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, _ico_s1007, _gvAgent_s1007, _team_s1007);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getBalance_GVOptionProgram(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas;



implementation getBalance_GVOptionProgram(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_, __ret_1_, __ret_2_ := getBalance_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_, __ret_1_, __ret_2_ := getBalance_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} executeOptions_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation executeOptions_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call executedTokens_s1135, remainingCents_s1135 := executeOptions_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135);
        assume revert || gas < 0;
    }
    else
    {
        call executedTokens_s1135, remainingCents_s1135 := executeOptions_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyOptions_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation buyOptions_GVOptionProgram(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call buyOptions_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210);
        assume revert || gas < 0;
    }
    else
    {
        call buyOptions_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} executeIfAvailable0_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1269: Ref, 
    usdCents_s1269: int, 
    txHash_s1269: int, 
    optionToken_s1269: Ref, 
    optionType_s1269: int, 
    optionPerCent_s1269: int)
   returns (executedTokens_s1269: int, remainingCents_s1269: int);
  modifies gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, revert;



procedure {:inline 1} executeIfAvailable1_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1328: Ref, 
    usdCents_s1328: int, 
    txHash_s1328: int, 
    optionToken_s1328: Ref, 
    optionType_s1328: int, 
    optionPerCent_s1328: int)
   returns (executedTokens_s1328: int, remainingCents_s1328: int);
  modifies gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, revert;



procedure {:inline 1} executeIfAvailable2_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1387: Ref, 
    usdCents_s1387: int, 
    txHash_s1387: int, 
    optionToken_s1387: Ref, 
    optionType_s1387: int, 
    optionPerCent_s1387: int)
   returns (executedTokens_s1387: int, remainingCents_s1387: int);
  modifies gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, revert;



procedure {:inline 1} buyIfAvailable0_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1466: Ref, 
    usdCents_s1466: int, 
    txHash_s1466: int, 
    optionToken_s1466: Ref, 
    optionType_s1466: int, 
    optionsPerCent_s1466: int)
   returns (__ret_0_: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyIfAvailable1_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1545: Ref, 
    usdCents_s1545: int, 
    txHash_s1545: int, 
    optionToken_s1545: Ref, 
    optionType_s1545: int, 
    optionsPerCent_s1545: int)
   returns (__ret_0_: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyIfAvailable2_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1624: Ref, 
    usdCents_s1624: int, 
    txHash_s1624: int, 
    optionToken_s1624: Ref, 
    optionType_s1624: int, 
    optionsPerCent_s1624: int)
   returns (__ret_0_: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} Initable_Initable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Initable_Initable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance;



implementation Initable_Initable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call Initable_Initable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Initable_Initable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} init_Initable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1630: Ref);



var {:access "this.TOKENS_FOR_SALE=TOKENS_FOR_SALE_ICO[this]"} TOKENS_FOR_SALE_ICO: [Ref]int;

var {:access "this.gvAgent=gvAgent_ICO[this]"} gvAgent_ICO: [Ref]Ref;

var {:access "this.team=team_ICO[this]"} team_ICO: [Ref]Ref;

var {:access "this.gvToken=gvToken_ICO[this]"} gvToken_ICO: [Ref]Ref;

var {:access "this.optionProgram=optionProgram_ICO[this]"} optionProgram_ICO: [Ref]Ref;

var {:access "this.teamAllocator=teamAllocator_ICO[this]"} teamAllocator_ICO: [Ref]Ref;

var {:access "this.migrationMaster=migrationMaster_ICO[this]"} migrationMaster_ICO: [Ref]Ref;

var {:access "this.tokensSold=tokensSold_ICO[this]"} tokensSold_ICO: [Ref]int;

var {:access "this.isPaused=isPaused_ICO[this]"} isPaused_ICO: [Ref]bool;

var {:access "this.icoState=icoState_ICO[this]"} icoState_ICO: [Ref]int;

procedure {:inline 1} ICO_ICO_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref);
  modifies Balance, TOKENS_FOR_SALE_ICO, gvAgent_ICO, team_ICO, migrationMaster_ICO, tokensSold_ICO, isPaused_ICO, teamAllocator_ICO, gvToken_ICO, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken, revert;



procedure {:constructor} {:public} {:inline 1} ICO_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, Balance, TOKENS_FOR_SALE_ICO, gvAgent_ICO, team_ICO, migrationMaster_ICO, tokensSold_ICO, isPaused_ICO, teamAllocator_ICO, gvToken_ICO, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken;



implementation ICO_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call ICO_ICO__fail(this, msgsender_MSG, msgvalue_MSG, _team_s1744, _gvAgent_s1744, _migrationMaster_s1744, _teamAllocator_s1744);
        assume revert || gas < 0;
    }
    else
    {
        call ICO_ICO__success(this, msgsender_MSG, msgvalue_MSG, _team_s1744, _gvAgent_s1744, _migrationMaster_s1744, _teamAllocator_s1744);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} initOptionProgram_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, optionProgram_ICO, Alloc, Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



implementation initOptionProgram_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call initOptionProgram_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call initOptionProgram_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} startOptionsSelling_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, icoState_ICO;



implementation startOptionsSelling_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call startOptionsSelling_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call startOptionsSelling_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} startIcoForOptionsHolders_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, icoState_ICO;



implementation startIcoForOptionsHolders_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call startIcoForOptionsHolders_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call startIcoForOptionsHolders_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} startIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, icoState_ICO;



implementation startIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call startIco_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call startIco_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} pauseIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, isPaused_ICO;



implementation pauseIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call pauseIco_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call pauseIco_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} resumeIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, isPaused_ICO;



implementation resumeIco_ICO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call resumeIco_ICO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call resumeIco_ICO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finishIco_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, icoState_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken;



implementation finishIco_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call finishIco_ICO__fail(this, msgsender_MSG, msgvalue_MSG, _fund_s1994, _bounty_s1994);
        assume revert || gas < 0;
    }
    else
    {
        call finishIco_ICO__success(this, msgsender_MSG, msgvalue_MSG, _fund_s1994, _bounty_s1994);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, tokensSold_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation buyTokens_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := buyTokens_ICO__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s2026, usdCents_s2026, txHash_s2026);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := buyTokens_ICO__success(this, msgsender_MSG, msgvalue_MSG, buyer_s2026, usdCents_s2026, txHash_s2026);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokensByOptions_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, tokensSold_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation buyTokensByOptions_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call __ret_0_ := buyTokensByOptions_ICO__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s2125, usdCents_s2125, txHash_s2125);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := buyTokensByOptions_ICO__success(this, msgsender_MSG, msgvalue_MSG, buyer_s2125, usdCents_s2125, txHash_s2125);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyOptions_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation buyOptions_ICO(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int)
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
        call buyOptions_ICO__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s2157, usdCents_s2157, txHash_s2157);
        assume revert || gas < 0;
    }
    else
    {
        call buyOptions_ICO__success(this, msgsender_MSG, msgvalue_MSG, buyer_s2157, usdCents_s2157, txHash_s2157);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} buyTokensInternal_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2208: Ref, 
    usdCents_s2208: int, 
    txHash_s2208: int)
   returns (__ret_0_: int);
  modifies gas, revert, tokensSold_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, revert, Balance;



procedure {:inline 1} optionProgramOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} icoOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} teamOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} gvAgentOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_allowed1;



procedure CorralChoice_MigrationAgent(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_MigrationAgent();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_GVToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken, totalMigrated_GVToken, migrationAgent_GVToken, migrationMaster_GVToken;



procedure CorralEntry_GVToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken, totalMigrated_GVToken, migrationAgent_GVToken, migrationMaster_GVToken, Balance, balances_BasicToken, allowed_StandardToken, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken;



procedure CorralChoice_GVOptionToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_GVOptionToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, Balance, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure CorralChoice_GVOptionToken0(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_GVOptionToken0();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, Balance, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure CorralChoice_GVOptionToken1(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_GVOptionToken1();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, Balance, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure CorralChoice_GVOptionToken2(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_GVOptionToken2();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, Balance, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure CorralChoice_GVOptionProgram(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_GVOptionProgram();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure CorralChoice_Initable(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Initable();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ICO(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken, totalMigrated_GVToken, migrationAgent_GVToken, migrationMaster_GVToken, optionProgram_ICO, icoState_ICO, isPaused_ICO, tokensSold_ICO, Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, balances_BasicToken, allowed_StandardToken, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, now, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken, totalMigrated_GVToken, migrationAgent_GVToken, migrationMaster_GVToken, optionProgram_ICO, icoState_ICO, isPaused_ICO, tokensSold_ICO, Balance, TOKENS_FOR_SALE_ICO, gvAgent_ICO, team_ICO, migrationMaster_ICO, teamAllocator_ICO, gvToken_ICO, balances_BasicToken, allowed_StandardToken, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



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

var __tmp__totalSupply_ERC20Basic: [Ref]int;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__name_GVToken: [Ref]int;

var __tmp__symbol_GVToken: [Ref]int;

var __tmp__decimals_GVToken: [Ref]int;

var __tmp__TOKEN_LIMIT_GVToken: [Ref]int;

var __tmp__ico_GVToken: [Ref]Ref;

var __tmp__isFrozen_GVToken: [Ref]bool;

var __tmp__migrationMaster_GVToken: [Ref]Ref;

var __tmp__migrationAgent_GVToken: [Ref]Ref;

var __tmp__totalMigrated_GVToken: [Ref]int;

var __tmp__optionProgram_GVOptionToken: [Ref]Ref;

var __tmp__name_GVOptionToken: [Ref]int;

var __tmp__symbol_GVOptionToken: [Ref]int;

var __tmp__decimals_GVOptionToken: [Ref]int;

var __tmp__TOKEN_LIMIT_GVOptionToken: [Ref]int;

var __tmp__option30perCent_GVOptionProgram: [Ref]int;

var __tmp__option20perCent_GVOptionProgram: [Ref]int;

var __tmp__option10perCent_GVOptionProgram: [Ref]int;

var __tmp__token30perCent_GVOptionProgram: [Ref]int;

var __tmp__token20perCent_GVOptionProgram: [Ref]int;

var __tmp__token10perCent_GVOptionProgram: [Ref]int;

var __tmp__option30name_GVOptionProgram: [Ref]int;

var __tmp__option20name_GVOptionProgram: [Ref]int;

var __tmp__option10name_GVOptionProgram: [Ref]int;

var __tmp__option30symbol_GVOptionProgram: [Ref]int;

var __tmp__option20symbol_GVOptionProgram: [Ref]int;

var __tmp__option10symbol_GVOptionProgram: [Ref]int;

var __tmp__option30_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var __tmp__option20_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var __tmp__option10_TOKEN_LIMIT_GVOptionProgram: [Ref]int;

var __tmp__gvAgent_GVOptionProgram: [Ref]Ref;

var __tmp__team_GVOptionProgram: [Ref]Ref;

var __tmp__ico_GVOptionProgram: [Ref]Ref;

var __tmp__gvOptionToken30_GVOptionProgram: [Ref]Ref;

var __tmp__gvOptionToken20_GVOptionProgram: [Ref]Ref;

var __tmp__gvOptionToken10_GVOptionProgram: [Ref]Ref;

var __tmp__TOKENS_FOR_SALE_ICO: [Ref]int;

var __tmp__gvAgent_ICO: [Ref]Ref;

var __tmp__team_ICO: [Ref]Ref;

var __tmp__gvToken_ICO: [Ref]Ref;

var __tmp__optionProgram_ICO: [Ref]Ref;

var __tmp__teamAllocator_ICO: [Ref]Ref;

var __tmp__migrationMaster_ICO: [Ref]Ref;

var __tmp__tokensSold_ICO: [Ref]int;

var __tmp__isPaused_ICO: [Ref]bool;

var __tmp__icoState_ICO: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s125: Ref, 
    _value_s125: int)
   returns (__ret_0_: bool);
  modifies gas, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s125: Ref, 
    _value_s125: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int);
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
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, revert, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, revert, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} MigrationAgent_MigrationAgent_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} MigrationAgent_MigrationAgent__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} MigrationAgent_MigrationAgent__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} GVToken_GVToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref);
  modifies __tmp__Balance, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, revert;



procedure {:constructor} {:inline 1} GVToken_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken, revert;



procedure {:constructor} {:inline 1} GVToken_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, revert;



procedure {:inline 1} mint_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} mint_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} unfreeze_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, isFrozen_GVToken;



procedure {:inline 1} unfreeze_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__isFrozen_GVToken;



procedure {:inline 1} transfer_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} migrate_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, totalMigrated_GVToken;



procedure {:inline 1} migrate_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, __tmp__totalMigrated_GVToken;



procedure {:inline 1} setMigrationAgent_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref);
  modifies gas, revert, migrationAgent_GVToken;



procedure {:inline 1} setMigrationAgent_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref);
  modifies gas, revert, __tmp__migrationAgent_GVToken;



procedure {:inline 1} setMigrationMaster_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref);
  modifies gas, revert, migrationMaster_GVToken;



procedure {:inline 1} setMigrationMaster_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref);
  modifies gas, revert, __tmp__migrationMaster_GVToken;



procedure {:inline 1} GVOptionToken_GVOptionToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int);
  modifies __tmp__Balance, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionToken_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionToken_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:inline 1} buyOptions_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyOptions_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} remainingTokensCount_GVOptionToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} remainingTokensCount_GVOptionToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} executeOption_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
   returns (__ret_0_: int);
  modifies gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, revert;



procedure {:inline 1} executeOption_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
   returns (__ret_0_: int);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, revert;



procedure {:inline 1} GVOptionToken0_GVOptionToken0_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} GVOptionToken0_GVOptionToken0__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionToken0_GVOptionToken0__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:inline 1} GVOptionToken1_GVOptionToken1_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} GVOptionToken1_GVOptionToken1__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionToken1_GVOptionToken1__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:inline 1} GVOptionToken2_GVOptionToken2_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} GVOptionToken2_GVOptionToken2__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionToken2_GVOptionToken2__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:inline 1} GVOptionProgram_GVOptionProgram_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref);
  modifies __tmp__Balance, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionProgram_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref);
  modifies Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken, revert;



procedure {:constructor} {:inline 1} GVOptionProgram_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref);
  modifies __tmp__Balance, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, revert;



procedure {:inline 1} getBalance_GVOptionProgram__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int);
  modifies gas;



procedure {:inline 1} getBalance_GVOptionProgram__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int);
  modifies gas;



procedure {:inline 1} executeOptions_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} executeOptions_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyOptions_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyOptions_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} executeIfAvailable0_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1269: Ref, 
    usdCents_s1269: int, 
    txHash_s1269: int, 
    optionToken_s1269: Ref, 
    optionType_s1269: int, 
    optionPerCent_s1269: int)
   returns (executedTokens_s1269: int, remainingCents_s1269: int);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, revert;



procedure {:inline 1} executeIfAvailable1_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1328: Ref, 
    usdCents_s1328: int, 
    txHash_s1328: int, 
    optionToken_s1328: Ref, 
    optionType_s1328: int, 
    optionPerCent_s1328: int)
   returns (executedTokens_s1328: int, remainingCents_s1328: int);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, revert;



procedure {:inline 1} executeIfAvailable2_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1387: Ref, 
    usdCents_s1387: int, 
    txHash_s1387: int, 
    optionToken_s1387: Ref, 
    optionType_s1387: int, 
    optionPerCent_s1387: int)
   returns (executedTokens_s1387: int, remainingCents_s1387: int);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, revert;



procedure {:inline 1} buyIfAvailable0_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1466: Ref, 
    usdCents_s1466: int, 
    txHash_s1466: int, 
    optionToken_s1466: Ref, 
    optionType_s1466: int, 
    optionsPerCent_s1466: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyIfAvailable1_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1545: Ref, 
    usdCents_s1545: int, 
    txHash_s1545: int, 
    optionToken_s1545: Ref, 
    optionType_s1545: int, 
    optionsPerCent_s1545: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyIfAvailable2_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1624: Ref, 
    usdCents_s1624: int, 
    txHash_s1624: int, 
    optionToken_s1624: Ref, 
    optionType_s1624: int, 
    optionsPerCent_s1624: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} Initable_Initable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Initable_Initable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Initable_Initable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ICO_ICO_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref);
  modifies __tmp__Balance, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__teamAllocator_ICO, __tmp__gvToken_ICO, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, revert;



procedure {:constructor} {:inline 1} ICO_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref);
  modifies Balance, TOKENS_FOR_SALE_ICO, gvAgent_ICO, team_ICO, migrationMaster_ICO, tokensSold_ICO, isPaused_ICO, teamAllocator_ICO, gvToken_ICO, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, name_GVToken, symbol_GVToken, decimals_GVToken, TOKEN_LIMIT_GVToken, ico_GVToken, isFrozen_GVToken, migrationMaster_GVToken, migrationAgent_GVToken, totalMigrated_GVToken, revert;



procedure {:constructor} {:inline 1} ICO_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref);
  modifies __tmp__Balance, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__teamAllocator_ICO, __tmp__gvToken_ICO, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, revert;



procedure {:inline 1} initOptionProgram_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, optionProgram_ICO, revert, Alloc, Balance, option30perCent_GVOptionProgram, option20perCent_GVOptionProgram, option10perCent_GVOptionProgram, token30perCent_GVOptionProgram, token20perCent_GVOptionProgram, token10perCent_GVOptionProgram, option30name_GVOptionProgram, option20name_GVOptionProgram, option10name_GVOptionProgram, option30symbol_GVOptionProgram, option20symbol_GVOptionProgram, option10symbol_GVOptionProgram, option30_TOKEN_LIMIT_GVOptionProgram, option20_TOKEN_LIMIT_GVOptionProgram, option10_TOKEN_LIMIT_GVOptionProgram, gvAgent_GVOptionProgram, team_GVOptionProgram, ico_GVOptionProgram, gvOptionToken30_GVOptionProgram, gvOptionToken20_GVOptionProgram, gvOptionToken10_GVOptionProgram, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, optionProgram_GVOptionToken, name_GVOptionToken, symbol_GVOptionToken, decimals_GVOptionToken, TOKEN_LIMIT_GVOptionToken;



procedure {:inline 1} initOptionProgram_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__optionProgram_ICO, revert, __tmp__Alloc, __tmp__Balance, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken;



procedure {:inline 1} startOptionsSelling_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, icoState_ICO;



procedure {:inline 1} startOptionsSelling_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__icoState_ICO;



procedure {:inline 1} startIcoForOptionsHolders_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, icoState_ICO;



procedure {:inline 1} startIcoForOptionsHolders_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__icoState_ICO;



procedure {:inline 1} startIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, icoState_ICO;



procedure {:inline 1} startIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__icoState_ICO;



procedure {:inline 1} pauseIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, isPaused_ICO;



procedure {:inline 1} pauseIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__isPaused_ICO;



procedure {:inline 1} resumeIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, isPaused_ICO;



procedure {:inline 1} resumeIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__isPaused_ICO;



procedure {:inline 1} finishIco_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref);
  modifies gas, revert, icoState_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, isFrozen_GVToken;



procedure {:inline 1} finishIco_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref);
  modifies gas, revert, __tmp__icoState_ICO, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, __tmp__isFrozen_GVToken;



procedure {:inline 1} buyTokens_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
   returns (__ret_0_: int);
  modifies gas, revert, tokensSold_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyTokens_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__tokensSold_ICO, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyTokensByOptions_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
   returns (__ret_0_: int);
  modifies gas, revert, tokensSold_ICO, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyTokensByOptions_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__tokensSold_ICO, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyOptions_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} buyOptions_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} buyTokensInternal_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2208: Ref, 
    usdCents_s2208: int, 
    txHash_s2208: int)
   returns (__ret_0_: int);
  modifies gas, revert, __tmp__tokensSold_ICO, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_GVToken, __tmp__symbol_GVToken, __tmp__decimals_GVToken, __tmp__TOKEN_LIMIT_GVToken, __tmp__ico_GVToken, __tmp__isFrozen_GVToken, __tmp__migrationMaster_GVToken, __tmp__migrationAgent_GVToken, __tmp__totalMigrated_GVToken, __tmp__optionProgram_GVOptionToken, __tmp__name_GVOptionToken, __tmp__symbol_GVOptionToken, __tmp__decimals_GVOptionToken, __tmp__TOKEN_LIMIT_GVOptionToken, __tmp__option30perCent_GVOptionProgram, __tmp__option20perCent_GVOptionProgram, __tmp__option10perCent_GVOptionProgram, __tmp__token30perCent_GVOptionProgram, __tmp__token20perCent_GVOptionProgram, __tmp__token10perCent_GVOptionProgram, __tmp__option30name_GVOptionProgram, __tmp__option20name_GVOptionProgram, __tmp__option10name_GVOptionProgram, __tmp__option30symbol_GVOptionProgram, __tmp__option20symbol_GVOptionProgram, __tmp__option10symbol_GVOptionProgram, __tmp__option30_TOKEN_LIMIT_GVOptionProgram, __tmp__option20_TOKEN_LIMIT_GVOptionProgram, __tmp__option10_TOKEN_LIMIT_GVOptionProgram, __tmp__gvAgent_GVOptionProgram, __tmp__team_GVOptionProgram, __tmp__ico_GVOptionProgram, __tmp__gvOptionToken30_GVOptionProgram, __tmp__gvOptionToken20_GVOptionProgram, __tmp__gvOptionToken10_GVOptionProgram, __tmp__TOKENS_FOR_SALE_ICO, __tmp__gvAgent_ICO, __tmp__team_ICO, __tmp__gvToken_ICO, __tmp__optionProgram_ICO, __tmp__teamAllocator_ICO, __tmp__migrationMaster_ICO, __tmp__tokensSold_ICO, __tmp__isPaused_ICO, __tmp__icoState_ICO, revert;



procedure {:inline 1} optionProgramOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} icoOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} teamOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} gvAgentOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int)
{
    gas := gas - 21;
    gas := gas - 182;
    assume b_s48 >= 0;
    assume a_s48 >= 0;
    gas := gas - 98;
    assume a_s48 >= 0;
    assume b_s48 >= 0;
    assume a_s48 - b_s48 >= 0;
    __ret_0_ := a_s48 - b_s48;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int)
{
    gas := gas - 21;
    gas := gas - 182;
    assume b_s48 >= 0;
    assume a_s48 >= 0;
    assert b_s48 <= a_s48;
    gas := gas - 98;
    assume a_s48 >= 0;
    assume b_s48 >= 0;
    assume a_s48 - b_s48 >= 0;
    __ret_0_ := a_s48 - b_s48;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
  var c_s71: int;

    gas := gas - 21;
    gas := gas - 119;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 + b_s72 >= 0;
    c_s71 := a_s72 + b_s72;
    gas := gas - 182;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    gas := gas - 70;
    assume c_s71 >= 0;
    __ret_0_ := c_s71;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
  var c_s71: int;

    gas := gas - 21;
    gas := gas - 119;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 + b_s72 >= 0;
    c_s71 := a_s72 + b_s72;
    gas := gas - 182;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assert c_s71 >= a_s72;
    gas := gas - 70;
    assume c_s71 >= 0;
    __ret_0_ := c_s71;
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
    _to_s125: Ref, 
    _value_s125: int)
   returns (__ret_0_: bool)
{
  var __var_2: int;
  var __var_3: int;

    gas := gas - 21;
    gas := gas - 143059;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s125 >= 0;
    call __var_2 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s125);
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
    gas := gas - 143031;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125] >= 0;
    assume _value_s125 >= 0;
    call __var_3 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125], _value_s125);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125] := __var_3;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s125];
    assume __var_3 >= 0;
    gas := gas - 56;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s125: Ref, 
    _value_s125: int)
   returns (__ret_0_: bool)
{
  var __var_2: int;
  var __var_3: int;

    gas := gas - 21;
    gas := gas - 143059;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s125 >= 0;
    call __var_2 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s125);
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
    gas := gas - 143031;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s125] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s125] >= 0;
    assume _value_s125 >= 0;
    call __var_3 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s125], _value_s125);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s125];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s125] := __var_3;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s125];
    assume __var_3 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 56;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int)
{
    gas := gas - 21;
    gas := gas - 2128;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s137] >= 0;
    balance_s137 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s137];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s137: Ref)
   returns (balance_s137: int)
{
    gas := gas - 21;
    gas := gas - 2128;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s137] >= 0;
    balance_s137 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s137];
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
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
   returns (__ret_0_: bool)
{
  var _allowance_s250: int;
  var __var_5: Ref;
  var __var_6: int;
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: int;

    gas := gas - 18;
    gas := gas - 2376;
    assume _allowance_s250 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]
       == null)
    {
        call __var_5 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251] := __var_5;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG]
       >= 0;
    _allowance_s250 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    gas := gas - 122598;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251] >= 0;
    assume _value_s251 >= 0;
    call __var_6 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251], _value_s251);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251] := __var_6;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s251];
    assume __var_6 >= 0;
    gas := gas - 122598;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251] >= 0;
    assume _value_s251 >= 0;
    call __var_7 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251], _value_s251);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251] := __var_7;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s251];
    assume __var_7 >= 0;
    gas := gas - 121392;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]
       == null)
    {
        call __var_8 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251] := __var_8;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG]
       >= 0;
    assume _allowance_s250 >= 0;
    assume _value_s251 >= 0;
    call __var_9 := sub_SafeMath__fail(this, this, 0, _allowance_s250, _value_s251);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG] := __var_9;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    assume __var_9 >= 0;
    gas := gas - 60;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s251: Ref, 
    _to_s251: Ref, 
    _value_s251: int)
   returns (__ret_0_: bool)
{
  var _allowance_s250: int;
  var __var_5: Ref;
  var __var_6: int;
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: int;

    gas := gas - 18;
    gas := gas - 2376;
    assume _allowance_s250 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251] == null)
    {
        call __var_5 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251] := __var_5;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG]
       >= 0;
    _allowance_s250 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    gas := gas - 122598;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s251] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s251] >= 0;
    assume _value_s251 >= 0;
    call __var_6 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s251], _value_s251);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s251];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s251] := __var_6;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s251];
    assume __var_6 >= 0;
    gas := gas - 122598;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s251] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s251] >= 0;
    assume _value_s251 >= 0;
    call __var_7 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s251], _value_s251);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s251];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s251] := __var_7;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s251];
    assume __var_7 >= 0;
    gas := gas - 121392;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251] == null)
    {
        call __var_8 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251] := __var_8;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG]
       >= 0;
    assume _allowance_s250 >= 0;
    assume _value_s251 >= 0;
    call __var_9 := sub_SafeMath__success(this, this, 0, _allowance_s250, _value_s251);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG] := __var_9;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s251]][msgsender_MSG];
    assume __var_9 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 60;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;

    gas := gas - 18;
    gas := gas - 2652;
    assume _value_s296 >= 0;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
       >= 0;
    if (!(_value_s296 == 0
       || __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
         == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 121194;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
       >= 0;
    assume _value_s296 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296] := _value_s296;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s296];
    gas := gas - 48;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s296: Ref, 
    _value_s296: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;

    gas := gas - 18;
    gas := gas - 2652;
    assume _value_s296 >= 0;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
       >= 0;
    if (!(_value_s296 == 0
       || M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
         == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 121194;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296]
       >= 0;
    assume _value_s296 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296] := _value_s296;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s296];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 48;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int)
{
  var __var_12: Ref;

    gas := gas - 18;
    gas := gas - 2364;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312] := __var_12;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312]][_spender_s312]
       >= 0;
    remaining_s312 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s312]][_spender_s312];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s312: Ref, 
    _spender_s312: Ref)
   returns (remaining_s312: int)
{
  var __var_12: Ref;

    gas := gas - 18;
    gas := gas - 2364;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312] := __var_12;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312]][_spender_s312]
       >= 0;
    remaining_s312 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s312]][_spender_s312];
    return;
}



implementation MigrationAgent_MigrationAgent_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation MigrationAgent_MigrationAgent_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation MigrationAgent_MigrationAgent__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call MigrationAgent_MigrationAgent_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MigrationAgent_MigrationAgent__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call MigrationAgent_MigrationAgent_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation GVToken_GVToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref)
{
  var __var_13: Ref;
  var __var_14: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_GVToken[this] := 23371785;
    __tmp__symbol_GVToken[this] := -731330557;
    __tmp__decimals_GVToken[this] := 18;
    __tmp__TOKEN_LIMIT_GVToken[this] := 44000000000000000000000000;
    __tmp__ico_GVToken[this] := null;
    __tmp__isFrozen_GVToken[this] := true;
    __tmp__migrationMaster_GVToken[this] := null;
    __tmp__migrationAgent_GVToken[this] := null;
    __tmp__totalMigrated_GVToken[this] := 0;
    __var_13 := null;
    if (!(_ico_s386 != null))
    {
        revert := true;
        return;
    }

    __var_14 := null;
    if (!(_migrationMaster_s386 != null))
    {
        revert := true;
        return;
    }

    __tmp__ico_GVToken[this] := _ico_s386;
    __tmp__migrationMaster_GVToken[this] := _migrationMaster_s386;
}



implementation GVToken_GVToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref)
{
  var __var_13: Ref;
  var __var_14: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_GVToken[this] := 23371785;
    symbol_GVToken[this] := -731330557;
    decimals_GVToken[this] := 18;
    TOKEN_LIMIT_GVToken[this] := 44000000000000000000000000;
    ico_GVToken[this] := null;
    isFrozen_GVToken[this] := true;
    migrationMaster_GVToken[this] := null;
    migrationAgent_GVToken[this] := null;
    totalMigrated_GVToken[this] := 0;
    __var_13 := null;
    if (!(_ico_s386 != null))
    {
        revert := true;
        return;
    }

    __var_14 := null;
    if (!(_migrationMaster_s386 != null))
    {
        revert := true;
        return;
    }

    ico_GVToken[this] := _ico_s386;
    migrationMaster_GVToken[this] := _migrationMaster_s386;
}



implementation GVToken_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref)
{
  var __var_13: Ref;
  var __var_14: Ref;

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

    call GVToken_GVToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _ico_s386, _migrationMaster_s386);
    if (revert)
    {
        return;
    }
}



implementation GVToken_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s386: Ref, 
    _migrationMaster_s386: Ref)
{
  var __var_13: Ref;
  var __var_14: Ref;

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

    call GVToken_GVToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _ico_s386, _migrationMaster_s386);
    if (revert)
    {
        return;
    }
}



implementation mint_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int)
{
    gas := gas - 276;
    if (!(msgsender_MSG == __tmp__ico_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume value_s433 >= 0;
    if (!(value_s433 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 235;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume value_s433 >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] + value_s433 >= 0;
    assume __tmp__TOKEN_LIMIT_GVToken[this] >= 0;
    if (!(__tmp__totalSupply_ERC20Basic[this] + value_s433
       <= __tmp__TOKEN_LIMIT_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20329;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][holder_s433] >= 0;
    assume value_s433 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][holder_s433];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][holder_s433] := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][holder_s433]
       + value_s433;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][holder_s433];
    gas := gas - 20233;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume value_s433 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := __tmp__totalSupply_ERC20Basic[this] + value_s433;
}



implementation mint_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    holder_s433: Ref, 
    value_s433: int)
{
    gas := gas - 276;
    if (!(msgsender_MSG == ico_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume value_s433 >= 0;
    if (!(value_s433 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 235;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume value_s433 >= 0;
    assume totalSupply_ERC20Basic[this] + value_s433 >= 0;
    assume TOKEN_LIMIT_GVToken[this] >= 0;
    if (!(totalSupply_ERC20Basic[this] + value_s433 <= TOKEN_LIMIT_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20329;
    assume M_Ref_int_balances0[balances_BasicToken[this]][holder_s433] >= 0;
    assume value_s433 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][holder_s433];
    M_Ref_int_balances0[balances_BasicToken[this]][holder_s433] := M_Ref_int_balances0[balances_BasicToken[this]][holder_s433] + value_s433;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][holder_s433];
    gas := gas - 20233;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume value_s433 >= 0;
    totalSupply_ERC20Basic[this] := totalSupply_ERC20Basic[this] + value_s433;
    assert {:EventEmitted "Transfer_GVToken"} true;
}



implementation unfreeze_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 276;
    if (!(msgsender_MSG == __tmp__ico_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20317;
    __tmp__isFrozen_GVToken[this] := false;
}



implementation unfreeze_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 276;
    if (!(msgsender_MSG == ico_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20317;
    isFrozen_GVToken[this] := false;
}



implementation transfer_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: bool;
  var __var_17: int;

    gas := gas - 3;
    gas := gas - 44;
    __var_15 := null;
    if (!(_to_s477 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 312;
    if (!!__tmp__isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    assume _value_s477 >= 0;
    if (__tmp__DType[this] == GVToken)
    {
        call __var_16 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_16;
    return;
}



implementation transfer_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s477: Ref, 
    _value_s477: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: bool;
  var __var_17: int;

    gas := gas - 3;
    gas := gas - 44;
    __var_15 := null;
    if (!(_to_s477 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 312;
    if (!!isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    assume _value_s477 >= 0;
    if (DType[this] == GVToken)
    {
        call __var_16 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_16;
    return;
}



implementation transferFrom_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
   returns (__ret_0_: bool)
{
  var __var_18: bool;
  var __var_19: int;

    gas := gas - 3;
    gas := gas - 312;
    if (!!__tmp__isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 18;
    assume _value_s501 >= 0;
    if (__tmp__DType[this] == GVToken)
    {
        call __var_18 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_18;
    return;
}



implementation transferFrom_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s501: Ref, 
    _to_s501: Ref, 
    _value_s501: int)
   returns (__ret_0_: bool)
{
  var __var_18: bool;
  var __var_19: int;

    gas := gas - 3;
    gas := gas - 312;
    if (!!isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 18;
    assume _value_s501 >= 0;
    if (DType[this] == GVToken)
    {
        call __var_18 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_18;
    return;
}



implementation approve_GVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
   returns (__ret_0_: bool)
{
  var __var_20: bool;
  var __var_21: int;

    gas := gas - 3;
    gas := gas - 312;
    if (!!__tmp__isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    assume _value_s522 >= 0;
    if (__tmp__DType[this] == GVToken)
    {
        call __var_20 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_20;
    return;
}



implementation approve_GVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s522: Ref, 
    _value_s522: int)
   returns (__ret_0_: bool)
{
  var __var_20: bool;
  var __var_21: int;

    gas := gas - 3;
    gas := gas - 312;
    if (!!isFrozen_GVToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    assume _value_s522 >= 0;
    if (DType[this] == GVToken)
    {
        call __var_20 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_20;
    return;
}



implementation migrate_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int)
{
  var __var_22: Ref;
  var agent_s585: Ref;
  var __var_23: Ref;
  var __var_24: int;

    gas := gas - 280;
    __var_22 := null;
    if (!(__tmp__migrationAgent_GVToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume value_s586 >= 0;
    if (!(value_s586 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 327;
    assume value_s586 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(value_s586
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20328;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume value_s586 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]
       - value_s586;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    gas := gas - 20233;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume value_s586 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := __tmp__totalSupply_ERC20Basic[this] - value_s586;
    gas := gas - 20233;
    assume __tmp__totalMigrated_GVToken[this] >= 0;
    assume value_s586 >= 0;
    __tmp__totalMigrated_GVToken[this] := __tmp__totalMigrated_GVToken[this] + value_s586;
    gas := gas - 247;
    agent_s585 := __tmp__migrationAgent_GVToken[this];
    gas := gas - 37053;
    assume __tmp__DType[agent_s585] == MigrationAgent;
    __var_23 := agent_s585;
    assume value_s586 >= 0;
    call migrateFrom_MigrationAgent(__var_23, this, __var_24, msgsender_MSG, value_s586);
}



implementation migrate_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s586: int)
{
  var __var_22: Ref;
  var agent_s585: Ref;
  var __var_23: Ref;
  var __var_24: int;

    gas := gas - 280;
    __var_22 := null;
    if (!(migrationAgent_GVToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume value_s586 >= 0;
    if (!(value_s586 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 327;
    assume value_s586 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(value_s586 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20328;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume value_s586 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] - value_s586;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    gas := gas - 20233;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume value_s586 >= 0;
    totalSupply_ERC20Basic[this] := totalSupply_ERC20Basic[this] - value_s586;
    gas := gas - 20233;
    assume totalMigrated_GVToken[this] >= 0;
    assume value_s586 >= 0;
    totalMigrated_GVToken[this] := totalMigrated_GVToken[this] + value_s586;
    gas := gas - 247;
    agent_s585 := migrationAgent_GVToken[this];
    gas := gas - 37053;
    assume DType[agent_s585] == MigrationAgent;
    __var_23 := agent_s585;
    assume value_s586 >= 0;
    call migrateFrom_MigrationAgent(__var_23, this, __var_24, msgsender_MSG, value_s586);
    assert {:EventEmitted "Migrate_GVToken"} true;
}



implementation setMigrationAgent_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref)
{
  var __var_25: Ref;

    gas := gas - 277;
    __var_25 := null;
    if (!(__tmp__migrationAgent_GVToken[this] == null))
    {
        revert := true;
        return;
    }

    gas := gas - 276;
    if (!(msgsender_MSG == __tmp__migrationMaster_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__migrationAgent_GVToken[this] := _agent_s611;
}



implementation setMigrationAgent_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _agent_s611: Ref)
{
  var __var_25: Ref;

    gas := gas - 277;
    __var_25 := null;
    if (!(migrationAgent_GVToken[this] == null))
    {
        revert := true;
        return;
    }

    gas := gas - 276;
    if (!(msgsender_MSG == migrationMaster_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    migrationAgent_GVToken[this] := _agent_s611;
}



implementation setMigrationMaster_GVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref)
{
  var __var_26: Ref;

    gas := gas - 276;
    if (!(msgsender_MSG == __tmp__migrationMaster_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 44;
    __var_26 := null;
    if (!(_master_s636 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__migrationMaster_GVToken[this] := _master_s636;
}



implementation setMigrationMaster_GVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _master_s636: Ref)
{
  var __var_26: Ref;

    gas := gas - 276;
    if (!(msgsender_MSG == migrationMaster_GVToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 44;
    __var_26 := null;
    if (!(_master_s636 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    migrationMaster_GVToken[this] := _master_s636;
}



implementation GVOptionToken_GVOptionToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int)
{
  var __var_27: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__optionProgram_GVOptionToken[this] := null;
    __tmp__name_GVOptionToken[this] := -440710548;
    __tmp__symbol_GVOptionToken[this] := -440710548;
    __tmp__decimals_GVOptionToken[this] := 18;
    __tmp__TOKEN_LIMIT_GVOptionToken[this] := 0;
    __var_27 := null;
    if (!(_optionProgram_s697 != null))
    {
        revert := true;
        return;
    }

    __tmp__optionProgram_GVOptionToken[this] := _optionProgram_s697;
    __tmp__name_GVOptionToken[this] := _name_s697;
    __tmp__symbol_GVOptionToken[this] := _symbol_s697;
    assume __tmp__TOKEN_LIMIT_GVOptionToken[this] >= 0;
    assume _TOKEN_LIMIT_s697 >= 0;
    __tmp__TOKEN_LIMIT_GVOptionToken[this] := _TOKEN_LIMIT_s697;
}



implementation GVOptionToken_GVOptionToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int)
{
  var __var_27: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    optionProgram_GVOptionToken[this] := null;
    name_GVOptionToken[this] := -440710548;
    symbol_GVOptionToken[this] := -440710548;
    decimals_GVOptionToken[this] := 18;
    TOKEN_LIMIT_GVOptionToken[this] := 0;
    __var_27 := null;
    if (!(_optionProgram_s697 != null))
    {
        revert := true;
        return;
    }

    optionProgram_GVOptionToken[this] := _optionProgram_s697;
    name_GVOptionToken[this] := _name_s697;
    symbol_GVOptionToken[this] := _symbol_s697;
    assume TOKEN_LIMIT_GVOptionToken[this] >= 0;
    assume _TOKEN_LIMIT_s697 >= 0;
    TOKEN_LIMIT_GVOptionToken[this] := _TOKEN_LIMIT_s697;
}



implementation GVOptionToken_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int)
{
  var __var_27: Ref;

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

    call GVOptionToken_GVOptionToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s697, _name_s697, _symbol_s697, _TOKEN_LIMIT_s697);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s697: Ref, 
    _name_s697: int, 
    _symbol_s697: int, 
    _TOKEN_LIMIT_s697: int)
{
  var __var_27: Ref;

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

    call GVOptionToken_GVOptionToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s697, _name_s697, _symbol_s697, _TOKEN_LIMIT_s697);
    if (revert)
    {
        return;
    }
}



implementation buyOptions_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int)
{
    call optionProgramOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 116;
    assume value_s739 >= 0;
    if (!(value_s739 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 1752;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume value_s739 >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] + value_s739 >= 0;
    assume __tmp__TOKEN_LIMIT_GVOptionToken[this] >= 0;
    if (!(__tmp__totalSupply_ERC20Basic[this] + value_s739
       <= __tmp__TOKEN_LIMIT_GVOptionToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 81316;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][buyer_s739] >= 0;
    assume value_s739 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][buyer_s739];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][buyer_s739] := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][buyer_s739]
       + value_s739;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][buyer_s739];
    gas := gas - 80932;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume value_s739 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := __tmp__totalSupply_ERC20Basic[this] + value_s739;
}



implementation buyOptions_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s739: Ref, 
    value_s739: int)
{
    call optionProgramOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 116;
    assume value_s739 >= 0;
    if (!(value_s739 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 1752;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume value_s739 >= 0;
    assume totalSupply_ERC20Basic[this] + value_s739 >= 0;
    assume TOKEN_LIMIT_GVOptionToken[this] >= 0;
    if (!(totalSupply_ERC20Basic[this] + value_s739 <= TOKEN_LIMIT_GVOptionToken[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 81316;
    assume M_Ref_int_balances0[balances_BasicToken[this]][buyer_s739] >= 0;
    assume value_s739 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][buyer_s739];
    M_Ref_int_balances0[balances_BasicToken[this]][buyer_s739] := M_Ref_int_balances0[balances_BasicToken[this]][buyer_s739] + value_s739;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][buyer_s739];
    gas := gas - 80932;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume value_s739 >= 0;
    totalSupply_ERC20Basic[this] := totalSupply_ERC20Basic[this] + value_s739;
    assert {:EventEmitted "Transfer_GVOptionToken"} true;
}



implementation remainingTokensCount_GVOptionToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 1656;
    assume __tmp__TOKEN_LIMIT_GVOptionToken[this] >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume __tmp__TOKEN_LIMIT_GVOptionToken[this] - __tmp__totalSupply_ERC20Basic[this]
       >= 0;
    __ret_0_ := __tmp__TOKEN_LIMIT_GVOptionToken[this] - __tmp__totalSupply_ERC20Basic[this];
    return;
}



implementation remainingTokensCount_GVOptionToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 1656;
    assume TOKEN_LIMIT_GVOptionToken[this] >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume TOKEN_LIMIT_GVOptionToken[this] - totalSupply_ERC20Basic[this] >= 0;
    __ret_0_ := TOKEN_LIMIT_GVOptionToken[this] - totalSupply_ERC20Basic[this];
    return;
}



implementation executeOption_GVOptionToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
   returns (__ret_0_: int)
{
  var cnt_s796: int;

    gas := gas - 12;
    call optionProgramOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    assume cnt_s796 >= 0;
    assume optionsCount_s797 >= 0;
    cnt_s796 := optionsCount_s797;
    gas := gas - 1220;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797] >= 0;
    assume cnt_s796 >= 0;
    if (__tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797]
       < cnt_s796)
    {
        gas := gas - 1216;
        assume cnt_s796 >= 0;
        assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797] >= 0;
        cnt_s796 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797];
    }

    gas := gas - 36;
    assume cnt_s796 >= 0;
    if (cnt_s796 == 0)
    {
        gas := gas - 84;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 81316;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797] >= 0;
    assume cnt_s796 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797] := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797]
       - cnt_s796;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][addr_s797];
    gas := gas - 80932;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume cnt_s796 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := __tmp__totalSupply_ERC20Basic[this] - cnt_s796;
    gas := gas - 40;
    assume cnt_s796 >= 0;
    __ret_0_ := cnt_s796;
    return;
}



implementation executeOption_GVOptionToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    addr_s797: Ref, 
    optionsCount_s797: int)
   returns (__ret_0_: int)
{
  var cnt_s796: int;

    gas := gas - 12;
    call optionProgramOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    assume cnt_s796 >= 0;
    assume optionsCount_s797 >= 0;
    cnt_s796 := optionsCount_s797;
    gas := gas - 1220;
    assume M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] >= 0;
    assume cnt_s796 >= 0;
    if (M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] < cnt_s796)
    {
        gas := gas - 1216;
        assume cnt_s796 >= 0;
        assume M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] >= 0;
        cnt_s796 := M_Ref_int_balances0[balances_BasicToken[this]][addr_s797];
    }

    gas := gas - 36;
    assume cnt_s796 >= 0;
    if (cnt_s796 == 0)
    {
        gas := gas - 84;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 81316;
    assume M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] >= 0;
    assume cnt_s796 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][addr_s797];
    M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] := M_Ref_int_balances0[balances_BasicToken[this]][addr_s797] - cnt_s796;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][addr_s797];
    gas := gas - 80932;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume cnt_s796 >= 0;
    totalSupply_ERC20Basic[this] := totalSupply_ERC20Basic[this] - cnt_s796;
    gas := gas - 40;
    assume cnt_s796 >= 0;
    __ret_0_ := cnt_s796;
    return;
}



implementation GVOptionToken0_GVOptionToken0_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation GVOptionToken0_GVOptionToken0_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation GVOptionToken0_GVOptionToken0__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int)
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

    assume _TOKEN_LIMIT_s818 >= 0;
    call GVOptionToken_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
    if (revert)
    {
        return;
    }

    call GVOptionToken0_GVOptionToken0_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken0_GVOptionToken0__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s818: Ref, 
    _name_s818: int, 
    _symbol_s818: int, 
    _TOKEN_LIMIT_s818: int)
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

    assume _TOKEN_LIMIT_s818 >= 0;
    call GVOptionToken_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
    if (revert)
    {
        return;
    }

    call GVOptionToken0_GVOptionToken0_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken1_GVOptionToken1_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation GVOptionToken1_GVOptionToken1_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation GVOptionToken1_GVOptionToken1__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int)
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

    assume _TOKEN_LIMIT_s839 >= 0;
    call GVOptionToken_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
    if (revert)
    {
        return;
    }

    call GVOptionToken1_GVOptionToken1_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken1_GVOptionToken1__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s839: Ref, 
    _name_s839: int, 
    _symbol_s839: int, 
    _TOKEN_LIMIT_s839: int)
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

    assume _TOKEN_LIMIT_s839 >= 0;
    call GVOptionToken_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
    if (revert)
    {
        return;
    }

    call GVOptionToken1_GVOptionToken1_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken2_GVOptionToken2_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation GVOptionToken2_GVOptionToken2_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation GVOptionToken2_GVOptionToken2__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int)
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

    assume _TOKEN_LIMIT_s860 >= 0;
    call GVOptionToken_GVOptionToken__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
    if (revert)
    {
        return;
    }

    call GVOptionToken2_GVOptionToken2_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
    if (revert)
    {
        return;
    }
}



implementation GVOptionToken2_GVOptionToken2__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _optionProgram_s860: Ref, 
    _name_s860: int, 
    _symbol_s860: int, 
    _TOKEN_LIMIT_s860: int)
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

    assume _TOKEN_LIMIT_s860 >= 0;
    call GVOptionToken_GVOptionToken__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
    if (revert)
    {
        return;
    }

    call GVOptionToken2_GVOptionToken2_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
    if (revert)
    {
        return;
    }
}



implementation GVOptionProgram_GVOptionProgram_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref)
{
  var __var_28: Ref;
  var __var_29: Ref;
  var __var_30: Ref;
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;
  var __var_34: Ref;
  var __var_35: Ref;
  var __var_36: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__option30perCent_GVOptionProgram[this] := 260000000000000000;
    __tmp__option20perCent_GVOptionProgram[this] := 240000000000000000;
    __tmp__option10perCent_GVOptionProgram[this] := 220000000000000000;
    __tmp__token30perCent_GVOptionProgram[this] := 13684210526315800;
    __tmp__token20perCent_GVOptionProgram[this] := 12631578947368500;
    __tmp__token10perCent_GVOptionProgram[this] := 11578947368421100;
    __tmp__option30name_GVOptionProgram[this] := -626061846;
    __tmp__option20name_GVOptionProgram[this] := -563873025;
    __tmp__option10name_GVOptionProgram[this] := 913160292;
    __tmp__option30symbol_GVOptionProgram[this] := -1239492324;
    __tmp__option20symbol_GVOptionProgram[this] := -423878944;
    __tmp__option10symbol_GVOptionProgram[this] := -1057053936;
    __tmp__option30_TOKEN_LIMIT_GVOptionProgram[this] := 2600000000000000000000000;
    __tmp__option20_TOKEN_LIMIT_GVOptionProgram[this] := 3600000000000000000000000;
    __tmp__option10_TOKEN_LIMIT_GVOptionProgram[this] := 5500000000000000000000000;
    __tmp__gvAgent_GVOptionProgram[this] := null;
    __tmp__team_GVOptionProgram[this] := null;
    __tmp__ico_GVOptionProgram[this] := null;
    call __var_29 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_30 := this;
    assume __tmp__option30_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume __tmp__DType[__var_29] == GVOptionToken0;
    call GVOptionToken0_GVOptionToken0__fail(__var_29, this, 0, this, __tmp__option30name_GVOptionProgram[this], __tmp__option30symbol_GVOptionProgram[this], __tmp__option30_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_28 := __var_29;
    __tmp__gvOptionToken30_GVOptionProgram[this] := __var_28;
    call __var_32 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_33 := this;
    assume __tmp__option20_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume __tmp__DType[__var_32] == GVOptionToken1;
    call GVOptionToken1_GVOptionToken1__fail(__var_32, this, 0, this, __tmp__option20name_GVOptionProgram[this], __tmp__option20symbol_GVOptionProgram[this], __tmp__option20_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_31 := __var_32;
    __tmp__gvOptionToken20_GVOptionProgram[this] := __var_31;
    call __var_35 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_36 := this;
    assume __tmp__option10_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume __tmp__DType[__var_35] == GVOptionToken2;
    call GVOptionToken2_GVOptionToken2__fail(__var_35, this, 0, this, __tmp__option10name_GVOptionProgram[this], __tmp__option10symbol_GVOptionProgram[this], __tmp__option10_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_34 := __var_35;
    __tmp__gvOptionToken10_GVOptionProgram[this] := __var_34;
    __tmp__gvAgent_GVOptionProgram[this] := _gvAgent_s1007;
    __tmp__team_GVOptionProgram[this] := _team_s1007;
    __tmp__ico_GVOptionProgram[this] := _ico_s1007;
}



implementation GVOptionProgram_GVOptionProgram_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref)
{
  var __var_28: Ref;
  var __var_29: Ref;
  var __var_30: Ref;
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;
  var __var_34: Ref;
  var __var_35: Ref;
  var __var_36: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    option30perCent_GVOptionProgram[this] := 260000000000000000;
    option20perCent_GVOptionProgram[this] := 240000000000000000;
    option10perCent_GVOptionProgram[this] := 220000000000000000;
    token30perCent_GVOptionProgram[this] := 13684210526315800;
    token20perCent_GVOptionProgram[this] := 12631578947368500;
    token10perCent_GVOptionProgram[this] := 11578947368421100;
    option30name_GVOptionProgram[this] := -626061846;
    option20name_GVOptionProgram[this] := -563873025;
    option10name_GVOptionProgram[this] := 913160292;
    option30symbol_GVOptionProgram[this] := -1239492324;
    option20symbol_GVOptionProgram[this] := -423878944;
    option10symbol_GVOptionProgram[this] := -1057053936;
    option30_TOKEN_LIMIT_GVOptionProgram[this] := 2600000000000000000000000;
    option20_TOKEN_LIMIT_GVOptionProgram[this] := 3600000000000000000000000;
    option10_TOKEN_LIMIT_GVOptionProgram[this] := 5500000000000000000000000;
    gvAgent_GVOptionProgram[this] := null;
    team_GVOptionProgram[this] := null;
    ico_GVOptionProgram[this] := null;
    call __var_29 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_30 := this;
    assume option30_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume DType[__var_29] == GVOptionToken0;
    call GVOptionToken0_GVOptionToken0__success(__var_29, this, 0, this, option30name_GVOptionProgram[this], option30symbol_GVOptionProgram[this], option30_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_28 := __var_29;
    gvOptionToken30_GVOptionProgram[this] := __var_28;
    call __var_32 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_33 := this;
    assume option20_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume DType[__var_32] == GVOptionToken1;
    call GVOptionToken1_GVOptionToken1__success(__var_32, this, 0, this, option20name_GVOptionProgram[this], option20symbol_GVOptionProgram[this], option20_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_31 := __var_32;
    gvOptionToken20_GVOptionProgram[this] := __var_31;
    call __var_35 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_36 := this;
    assume option10_TOKEN_LIMIT_GVOptionProgram[this] >= 0;
    assume DType[__var_35] == GVOptionToken2;
    call GVOptionToken2_GVOptionToken2__success(__var_35, this, 0, this, option10name_GVOptionProgram[this], option10symbol_GVOptionProgram[this], option10_TOKEN_LIMIT_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    __var_34 := __var_35;
    gvOptionToken10_GVOptionProgram[this] := __var_34;
    gvAgent_GVOptionProgram[this] := _gvAgent_s1007;
    team_GVOptionProgram[this] := _team_s1007;
    ico_GVOptionProgram[this] := _ico_s1007;
}



implementation GVOptionProgram_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref)
{
  var __var_28: Ref;
  var __var_29: Ref;
  var __var_30: Ref;
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;
  var __var_34: Ref;
  var __var_35: Ref;
  var __var_36: Ref;

    call GVOptionProgram_GVOptionProgram_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _ico_s1007, _gvAgent_s1007, _team_s1007);
    if (revert)
    {
        return;
    }
}



implementation GVOptionProgram_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _ico_s1007: Ref, 
    _gvAgent_s1007: Ref, 
    _team_s1007: Ref)
{
  var __var_28: Ref;
  var __var_29: Ref;
  var __var_30: Ref;
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;
  var __var_34: Ref;
  var __var_35: Ref;
  var __var_36: Ref;

    call GVOptionProgram_GVOptionProgram_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _ico_s1007, _gvAgent_s1007, _team_s1007);
    if (revert)
    {
        return;
    }
}



implementation getBalance_GVOptionProgram__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int)
{
  var __var_37: int;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: int;

    gas := gas - 9;
    gas := gas - 9297;
    assume __var_37 >= 0;
    if (__tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_39 >= 0;
    if (__tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_41 >= 0;
    if (__tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__fail(__tmp__gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    __ret_1_ := __var_39;
    __ret_2_ := __var_41;
    return;
}



implementation getBalance_GVOptionProgram__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int, __ret_2_: int)
{
  var __var_37: int;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: int;

    gas := gas - 9;
    gas := gas - 9297;
    assume __var_37 >= 0;
    if (DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__success(gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__success(gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__success(gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_37 := remainingTokensCount_GVOptionToken__success(gvOptionToken30_GVOptionProgram[this], this, __var_38);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_39 >= 0;
    if (DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__success(gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__success(gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__success(gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_39 := remainingTokensCount_GVOptionToken__success(gvOptionToken20_GVOptionProgram[this], this, __var_40);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_41 >= 0;
    if (DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__success(gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__success(gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__success(gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else if (DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken)
    {
        call __var_41 := remainingTokensCount_GVOptionToken__success(gvOptionToken10_GVOptionProgram[this], this, __var_42);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    __ret_1_ := __var_39;
    __ret_2_ := __var_41;
    return;
}



implementation executeOptions_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int)
{
  var __var_43: int;
  var __var_44: int;
  var __var_45: Ref;
  var __var_46: int;
  var executed20_s1134: int;
  var __var_47: int;
  var __var_48: int;
  var __var_49: Ref;
  var __var_50: int;
  var executed10_s1134: int;
  var __var_51: int;
  var __var_52: int;
  var __var_53: Ref;
  var __var_54: int;

    gas := gas - 6;
    call icoOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 29;
    assume usdCents_s1135 >= 0;
    if (!(usdCents_s1135 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 275;
    assume executedTokens_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume usdCents_s1135 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2;
    __var_45 := __tmp__gvOptionToken30_GVOptionProgram[this];
    assume __var_46 >= 0;
    __var_46 := 0;
    assume 0 >= 0;
    assume __tmp__token30perCent_GVOptionProgram[this] >= 0;
    call __var_43, __var_44 := executeIfAvailable0_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135, __var_45, 0, __tmp__token30perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executedTokens_s1135 := __var_43;
    remainingCents_s1135 := __var_44;
    gas := gas - 9;
    assume remainingCents_s1135 >= 0;
    if (remainingCents_s1135 == 0)
    {
        gas := gas - 35;
        executedTokens_s1135 := executedTokens_s1135;
        remainingCents_s1135 := 0;
        return;
    }

    gas := gas - 3;
    havoc executed20_s1134;
    gas := gas - 275;
    assume executed20_s1134 >= 0;
    assume remainingCents_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2;
    __var_49 := __tmp__gvOptionToken20_GVOptionProgram[this];
    assume __var_50 >= 0;
    __var_50 := 1;
    assume 1 >= 0;
    assume __tmp__token20perCent_GVOptionProgram[this] >= 0;
    call __var_47, __var_48 := executeIfAvailable1_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, remainingCents_s1135, txHash_s1135, __var_49, 1, __tmp__token20perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executed20_s1134 := __var_47;
    remainingCents_s1135 := __var_48;
    gas := gas - 9;
    assume remainingCents_s1135 >= 0;
    if (remainingCents_s1135 == 0)
    {
        gas := gas - 43;
        assume executedTokens_s1135 >= 0;
        assume executed20_s1134 >= 0;
        executedTokens_s1135 := executedTokens_s1135 + executed20_s1134;
        remainingCents_s1135 := 0;
        return;
    }

    gas := gas - 3;
    havoc executed10_s1134;
    gas := gas - 275;
    assume executed10_s1134 >= 0;
    assume remainingCents_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2;
    __var_53 := __tmp__gvOptionToken10_GVOptionProgram[this];
    assume __var_54 >= 0;
    __var_54 := 2;
    assume 2 >= 0;
    assume __tmp__token10perCent_GVOptionProgram[this] >= 0;
    call __var_51, __var_52 := executeIfAvailable2_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, remainingCents_s1135, txHash_s1135, __var_53, 2, __tmp__token10perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executed10_s1134 := __var_51;
    remainingCents_s1135 := __var_52;
    gas := gas - 32;
    assume executedTokens_s1135 >= 0;
    assume executed20_s1134 >= 0;
    assume executedTokens_s1135 + executed20_s1134 >= 0;
    assume executed10_s1134 >= 0;
    executedTokens_s1135 := executedTokens_s1135 + executed20_s1134 + executed10_s1134;
    remainingCents_s1135 := remainingCents_s1135;
    return;
}



implementation executeOptions_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1135: Ref, 
    usdCents_s1135: int, 
    txHash_s1135: int)
   returns (executedTokens_s1135: int, remainingCents_s1135: int)
{
  var __var_43: int;
  var __var_44: int;
  var __var_45: Ref;
  var __var_46: int;
  var executed20_s1134: int;
  var __var_47: int;
  var __var_48: int;
  var __var_49: Ref;
  var __var_50: int;
  var executed10_s1134: int;
  var __var_51: int;
  var __var_52: int;
  var __var_53: Ref;
  var __var_54: int;

    gas := gas - 6;
    call icoOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 29;
    assume usdCents_s1135 >= 0;
    if (!(usdCents_s1135 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 275;
    assume executedTokens_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume usdCents_s1135 >= 0;
    assume DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2;
    __var_45 := gvOptionToken30_GVOptionProgram[this];
    assume __var_46 >= 0;
    __var_46 := 0;
    assume 0 >= 0;
    assume token30perCent_GVOptionProgram[this] >= 0;
    call __var_43, __var_44 := executeIfAvailable0_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135, __var_45, 0, token30perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executedTokens_s1135 := __var_43;
    remainingCents_s1135 := __var_44;
    gas := gas - 9;
    assume remainingCents_s1135 >= 0;
    if (remainingCents_s1135 == 0)
    {
        gas := gas - 35;
        executedTokens_s1135 := executedTokens_s1135;
        remainingCents_s1135 := 0;
        return;
    }

    gas := gas - 3;
    havoc executed20_s1134;
    gas := gas - 275;
    assume executed20_s1134 >= 0;
    assume remainingCents_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2;
    __var_49 := gvOptionToken20_GVOptionProgram[this];
    assume __var_50 >= 0;
    __var_50 := 1;
    assume 1 >= 0;
    assume token20perCent_GVOptionProgram[this] >= 0;
    call __var_47, __var_48 := executeIfAvailable1_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, remainingCents_s1135, txHash_s1135, __var_49, 1, token20perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executed20_s1134 := __var_47;
    remainingCents_s1135 := __var_48;
    gas := gas - 9;
    assume remainingCents_s1135 >= 0;
    if (remainingCents_s1135 == 0)
    {
        gas := gas - 43;
        assume executedTokens_s1135 >= 0;
        assume executed20_s1134 >= 0;
        executedTokens_s1135 := executedTokens_s1135 + executed20_s1134;
        remainingCents_s1135 := 0;
        return;
    }

    gas := gas - 3;
    havoc executed10_s1134;
    gas := gas - 275;
    assume executed10_s1134 >= 0;
    assume remainingCents_s1135 >= 0;
    assume remainingCents_s1135 >= 0;
    assume DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2;
    __var_53 := gvOptionToken10_GVOptionProgram[this];
    assume __var_54 >= 0;
    __var_54 := 2;
    assume 2 >= 0;
    assume token10perCent_GVOptionProgram[this] >= 0;
    call __var_51, __var_52 := executeIfAvailable2_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, remainingCents_s1135, txHash_s1135, __var_53, 2, token10perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    executed10_s1134 := __var_51;
    remainingCents_s1135 := __var_52;
    gas := gas - 32;
    assume executedTokens_s1135 >= 0;
    assume executed20_s1134 >= 0;
    assume executedTokens_s1135 + executed20_s1134 >= 0;
    assume executed10_s1134 >= 0;
    executedTokens_s1135 := executedTokens_s1135 + executed20_s1134 + executed10_s1134;
    remainingCents_s1135 := remainingCents_s1135;
    return;
}



implementation buyOptions_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int)
{
  var remainUsdCents_s1209: int;
  var __var_55: Ref;
  var __var_56: int;
  var __var_57: Ref;
  var __var_58: int;
  var __var_59: Ref;
  var __var_60: int;

    call icoOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 29;
    assume usdCents_s1210 >= 0;
    if (!(usdCents_s1210 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 263;
    assume remainUsdCents_s1209 >= 0;
    assume usdCents_s1210 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2;
    __var_55 := __tmp__gvOptionToken30_GVOptionProgram[this];
    assume __var_56 >= 0;
    __var_56 := 0;
    assume 0 >= 0;
    assume __tmp__option30perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable0_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210, __var_55, 0, __tmp__option30perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
    gas := gas - 9;
    assume remainUsdCents_s1209 >= 0;
    if (remainUsdCents_s1209 == 0)
    {
        gas := gas - 13;
        return;
    }

    gas := gas - 260;
    assume remainUsdCents_s1209 >= 0;
    assume remainUsdCents_s1209 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2;
    __var_57 := __tmp__gvOptionToken20_GVOptionProgram[this];
    assume __var_58 >= 0;
    __var_58 := 1;
    assume 1 >= 0;
    assume __tmp__option20perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable1_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, remainUsdCents_s1209, txHash_s1210, __var_57, 1, __tmp__option20perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
    gas := gas - 9;
    assume remainUsdCents_s1209 >= 0;
    if (remainUsdCents_s1209 == 0)
    {
        gas := gas - 13;
        return;
    }

    gas := gas - 260;
    assume remainUsdCents_s1209 >= 0;
    assume remainUsdCents_s1209 >= 0;
    assume __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1
       || __tmp__DType[__tmp__gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2;
    __var_59 := __tmp__gvOptionToken10_GVOptionProgram[this];
    assume __var_60 >= 0;
    __var_60 := 2;
    assume 2 >= 0;
    assume __tmp__option10perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable2_GVOptionProgram__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, remainUsdCents_s1209, txHash_s1210, __var_59, 2, __tmp__option10perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
}



implementation buyOptions_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1210: Ref, 
    usdCents_s1210: int, 
    txHash_s1210: int)
{
  var remainUsdCents_s1209: int;
  var __var_55: Ref;
  var __var_56: int;
  var __var_57: Ref;
  var __var_58: int;
  var __var_59: Ref;
  var __var_60: int;

    call icoOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 29;
    assume usdCents_s1210 >= 0;
    if (!(usdCents_s1210 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 263;
    assume remainUsdCents_s1209 >= 0;
    assume usdCents_s1210 >= 0;
    assume DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken30_GVOptionProgram[this]] == GVOptionToken2;
    __var_55 := gvOptionToken30_GVOptionProgram[this];
    assume __var_56 >= 0;
    __var_56 := 0;
    assume 0 >= 0;
    assume option30perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable0_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210, __var_55, 0, option30perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
    gas := gas - 9;
    assume remainUsdCents_s1209 >= 0;
    if (remainUsdCents_s1209 == 0)
    {
        gas := gas - 13;
        return;
    }

    gas := gas - 260;
    assume remainUsdCents_s1209 >= 0;
    assume remainUsdCents_s1209 >= 0;
    assume DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken20_GVOptionProgram[this]] == GVOptionToken2;
    __var_57 := gvOptionToken20_GVOptionProgram[this];
    assume __var_58 >= 0;
    __var_58 := 1;
    assume 1 >= 0;
    assume option20perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable1_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, remainUsdCents_s1209, txHash_s1210, __var_57, 1, option20perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
    gas := gas - 9;
    assume remainUsdCents_s1209 >= 0;
    if (remainUsdCents_s1209 == 0)
    {
        gas := gas - 13;
        return;
    }

    gas := gas - 260;
    assume remainUsdCents_s1209 >= 0;
    assume remainUsdCents_s1209 >= 0;
    assume DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken0
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken1
       || DType[gvOptionToken10_GVOptionProgram[this]] == GVOptionToken2;
    __var_59 := gvOptionToken10_GVOptionProgram[this];
    assume __var_60 >= 0;
    __var_60 := 2;
    assume 2 >= 0;
    assume option10perCent_GVOptionProgram[this] >= 0;
    call remainUsdCents_s1209 := buyIfAvailable2_GVOptionProgram__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, remainUsdCents_s1209, txHash_s1210, __var_59, 2, option10perCent_GVOptionProgram[this]);
    if (revert)
    {
        return;
    }

    remainUsdCents_s1209 := remainUsdCents_s1209;
}



implementation executeIfAvailable0_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1269: Ref, 
    usdCents_s1269: int, 
    txHash_s1269: int, 
    optionToken_s1269: Ref, 
    optionType_s1269: int, 
    optionPerCent_s1269: int)
   returns (executedTokens_s1269: int, remainingCents_s1269: int)
{
  var optionsAmount_s1268: int;
  var __var_61: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1268 >= 0;
    assume usdCents_s1269 >= 0;
    assume usdCents_s1269 * 260000000000000000 >= 0;
    optionsAmount_s1268 := usdCents_s1269 * 260000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1269 >= 0;
    assume optionsAmount_s1268 >= 0;
    if (__tmp__DType[optionToken_s1269] == GVOptionToken2)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__fail(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1269] == GVOptionToken1)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__fail(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1269] == GVOptionToken0)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__fail(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1269] == GVOptionToken)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__fail(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1269 := executedTokens_s1269;
    gas := gas - 39;
    assume remainingCents_s1269 >= 0;
    assume usdCents_s1269 >= 0;
    assume executedTokens_s1269 >= 0;
    assume executedTokens_s1269 / 260000000000000000 >= 0;
    assume usdCents_s1269 - executedTokens_s1269 / 260000000000000000 >= 0;
    remainingCents_s1269 := usdCents_s1269 - executedTokens_s1269 / 260000000000000000;
    gas := gas - 9;
    assume executedTokens_s1269 >= 0;
    if (executedTokens_s1269 > 0)
    {
    }

    gas := gas - 18;
    executedTokens_s1269 := executedTokens_s1269;
    remainingCents_s1269 := remainingCents_s1269;
    return;
}



implementation executeIfAvailable0_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1269: Ref, 
    usdCents_s1269: int, 
    txHash_s1269: int, 
    optionToken_s1269: Ref, 
    optionType_s1269: int, 
    optionPerCent_s1269: int)
   returns (executedTokens_s1269: int, remainingCents_s1269: int)
{
  var optionsAmount_s1268: int;
  var __var_61: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1268 >= 0;
    assume usdCents_s1269 >= 0;
    assume usdCents_s1269 * 260000000000000000 >= 0;
    optionsAmount_s1268 := usdCents_s1269 * 260000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1269 >= 0;
    assume optionsAmount_s1268 >= 0;
    if (DType[optionToken_s1269] == GVOptionToken2)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__success(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1269] == GVOptionToken1)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__success(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1269] == GVOptionToken0)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__success(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1269] == GVOptionToken)
    {
        call executedTokens_s1269 := executeOption_GVOptionToken__success(optionToken_s1269, this, __var_61, buyer_s1269, optionsAmount_s1268);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1269 := executedTokens_s1269;
    gas := gas - 39;
    assume remainingCents_s1269 >= 0;
    assume usdCents_s1269 >= 0;
    assume executedTokens_s1269 >= 0;
    assume executedTokens_s1269 / 260000000000000000 >= 0;
    assume usdCents_s1269 - executedTokens_s1269 / 260000000000000000 >= 0;
    remainingCents_s1269 := usdCents_s1269 - executedTokens_s1269 / 260000000000000000;
    gas := gas - 9;
    assume executedTokens_s1269 >= 0;
    if (executedTokens_s1269 > 0)
    {
        assert {:EventEmitted "ExecuteOptions_GVOptionProgram"} true;
    }

    gas := gas - 18;
    executedTokens_s1269 := executedTokens_s1269;
    remainingCents_s1269 := remainingCents_s1269;
    return;
}



implementation executeIfAvailable1_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1328: Ref, 
    usdCents_s1328: int, 
    txHash_s1328: int, 
    optionToken_s1328: Ref, 
    optionType_s1328: int, 
    optionPerCent_s1328: int)
   returns (executedTokens_s1328: int, remainingCents_s1328: int)
{
  var optionsAmount_s1327: int;
  var __var_62: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1327 >= 0;
    assume usdCents_s1328 >= 0;
    assume usdCents_s1328 * 240000000000000000 >= 0;
    optionsAmount_s1327 := usdCents_s1328 * 240000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1328 >= 0;
    assume optionsAmount_s1327 >= 0;
    if (__tmp__DType[optionToken_s1328] == GVOptionToken2)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__fail(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1328] == GVOptionToken1)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__fail(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1328] == GVOptionToken0)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__fail(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1328] == GVOptionToken)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__fail(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1328 := executedTokens_s1328;
    gas := gas - 39;
    assume remainingCents_s1328 >= 0;
    assume usdCents_s1328 >= 0;
    assume executedTokens_s1328 >= 0;
    assume executedTokens_s1328 / 240000000000000000 >= 0;
    assume usdCents_s1328 - executedTokens_s1328 / 240000000000000000 >= 0;
    remainingCents_s1328 := usdCents_s1328 - executedTokens_s1328 / 240000000000000000;
    gas := gas - 9;
    assume executedTokens_s1328 >= 0;
    if (executedTokens_s1328 > 0)
    {
    }

    gas := gas - 18;
    executedTokens_s1328 := executedTokens_s1328;
    remainingCents_s1328 := remainingCents_s1328;
    return;
}



implementation executeIfAvailable1_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1328: Ref, 
    usdCents_s1328: int, 
    txHash_s1328: int, 
    optionToken_s1328: Ref, 
    optionType_s1328: int, 
    optionPerCent_s1328: int)
   returns (executedTokens_s1328: int, remainingCents_s1328: int)
{
  var optionsAmount_s1327: int;
  var __var_62: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1327 >= 0;
    assume usdCents_s1328 >= 0;
    assume usdCents_s1328 * 240000000000000000 >= 0;
    optionsAmount_s1327 := usdCents_s1328 * 240000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1328 >= 0;
    assume optionsAmount_s1327 >= 0;
    if (DType[optionToken_s1328] == GVOptionToken2)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__success(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1328] == GVOptionToken1)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__success(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1328] == GVOptionToken0)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__success(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1328] == GVOptionToken)
    {
        call executedTokens_s1328 := executeOption_GVOptionToken__success(optionToken_s1328, this, __var_62, buyer_s1328, optionsAmount_s1327);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1328 := executedTokens_s1328;
    gas := gas - 39;
    assume remainingCents_s1328 >= 0;
    assume usdCents_s1328 >= 0;
    assume executedTokens_s1328 >= 0;
    assume executedTokens_s1328 / 240000000000000000 >= 0;
    assume usdCents_s1328 - executedTokens_s1328 / 240000000000000000 >= 0;
    remainingCents_s1328 := usdCents_s1328 - executedTokens_s1328 / 240000000000000000;
    gas := gas - 9;
    assume executedTokens_s1328 >= 0;
    if (executedTokens_s1328 > 0)
    {
        assert {:EventEmitted "ExecuteOptions_GVOptionProgram"} true;
    }

    gas := gas - 18;
    executedTokens_s1328 := executedTokens_s1328;
    remainingCents_s1328 := remainingCents_s1328;
    return;
}



implementation executeIfAvailable2_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1387: Ref, 
    usdCents_s1387: int, 
    txHash_s1387: int, 
    optionToken_s1387: Ref, 
    optionType_s1387: int, 
    optionPerCent_s1387: int)
   returns (executedTokens_s1387: int, remainingCents_s1387: int)
{
  var optionsAmount_s1386: int;
  var __var_63: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1386 >= 0;
    assume usdCents_s1387 >= 0;
    assume usdCents_s1387 * 220000000000000000 >= 0;
    optionsAmount_s1386 := usdCents_s1387 * 220000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1387 >= 0;
    assume optionsAmount_s1386 >= 0;
    if (__tmp__DType[optionToken_s1387] == GVOptionToken2)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__fail(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1387] == GVOptionToken1)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__fail(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1387] == GVOptionToken0)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__fail(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1387] == GVOptionToken)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__fail(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1387 := executedTokens_s1387;
    gas := gas - 39;
    assume remainingCents_s1387 >= 0;
    assume usdCents_s1387 >= 0;
    assume executedTokens_s1387 >= 0;
    assume executedTokens_s1387 / 220000000000000000 >= 0;
    assume usdCents_s1387 - executedTokens_s1387 / 220000000000000000 >= 0;
    remainingCents_s1387 := usdCents_s1387 - executedTokens_s1387 / 220000000000000000;
    gas := gas - 9;
    assume executedTokens_s1387 >= 0;
    if (executedTokens_s1387 > 0)
    {
    }

    gas := gas - 18;
    executedTokens_s1387 := executedTokens_s1387;
    remainingCents_s1387 := remainingCents_s1387;
    return;
}



implementation executeIfAvailable2_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1387: Ref, 
    usdCents_s1387: int, 
    txHash_s1387: int, 
    optionToken_s1387: Ref, 
    optionType_s1387: int, 
    optionPerCent_s1387: int)
   returns (executedTokens_s1387: int, remainingCents_s1387: int)
{
  var optionsAmount_s1386: int;
  var __var_63: int;

    gas := gas - 6;
    gas := gas - 19;
    assume optionsAmount_s1386 >= 0;
    assume usdCents_s1387 >= 0;
    assume usdCents_s1387 * 220000000000000000 >= 0;
    optionsAmount_s1386 := usdCents_s1387 * 220000000000000000;
    gas := gas - 28225;
    assume executedTokens_s1387 >= 0;
    assume optionsAmount_s1386 >= 0;
    if (DType[optionToken_s1387] == GVOptionToken2)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__success(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1387] == GVOptionToken1)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__success(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1387] == GVOptionToken0)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__success(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1387] == GVOptionToken)
    {
        call executedTokens_s1387 := executeOption_GVOptionToken__success(optionToken_s1387, this, __var_63, buyer_s1387, optionsAmount_s1386);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    executedTokens_s1387 := executedTokens_s1387;
    gas := gas - 39;
    assume remainingCents_s1387 >= 0;
    assume usdCents_s1387 >= 0;
    assume executedTokens_s1387 >= 0;
    assume executedTokens_s1387 / 220000000000000000 >= 0;
    assume usdCents_s1387 - executedTokens_s1387 / 220000000000000000 >= 0;
    remainingCents_s1387 := usdCents_s1387 - executedTokens_s1387 / 220000000000000000;
    gas := gas - 9;
    assume executedTokens_s1387 >= 0;
    if (executedTokens_s1387 > 0)
    {
        assert {:EventEmitted "ExecuteOptions_GVOptionProgram"} true;
    }

    gas := gas - 18;
    executedTokens_s1387 := executedTokens_s1387;
    remainingCents_s1387 := remainingCents_s1387;
    return;
}



implementation buyIfAvailable0_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1466: Ref, 
    usdCents_s1466: int, 
    txHash_s1466: int, 
    optionToken_s1466: Ref, 
    optionType_s1466: int, 
    optionsPerCent_s1466: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1465: int;
  var __var_64: int;
  var tokens_s1461: int;
  var __var_65: int;
  var __var_66: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1465 >= 0;
    if (__tmp__DType[optionToken_s1466] == GVOptionToken2)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__fail(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1466] == GVOptionToken1)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__fail(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1466] == GVOptionToken0)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__fail(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1466] == GVOptionToken)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__fail(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1465 := availableTokens_s1465;
    gas := gas - 9;
    assume availableTokens_s1465 >= 0;
    if (availableTokens_s1465 > 0)
    {
        gas := gas - 19;
        assume tokens_s1461 >= 0;
        assume usdCents_s1466 >= 0;
        assume usdCents_s1466 * 260000000000000000 >= 0;
        tokens_s1461 := usdCents_s1466 * 260000000000000000;
        gas := gas - 9;
        assume availableTokens_s1465 >= 0;
        assume tokens_s1461 >= 0;
        if (availableTokens_s1465 >= tokens_s1461)
        {
            gas := gas - 27962;
            assume tokens_s1461 >= 0;
            if (__tmp__DType[optionToken_s1466] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1465 >= 0;
            if (__tmp__DType[optionToken_s1466] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1466] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 54;
            assume usdCents_s1466 >= 0;
            assume availableTokens_s1465 >= 0;
            assume availableTokens_s1465 / 260000000000000000 >= 0;
            assume usdCents_s1466 - availableTokens_s1465 / 260000000000000000 >= 0;
            __ret_0_ := usdCents_s1466 - availableTokens_s1465 / 260000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1466 >= 0;
    __ret_0_ := usdCents_s1466;
    return;
}



implementation buyIfAvailable0_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1466: Ref, 
    usdCents_s1466: int, 
    txHash_s1466: int, 
    optionToken_s1466: Ref, 
    optionType_s1466: int, 
    optionsPerCent_s1466: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1465: int;
  var __var_64: int;
  var tokens_s1461: int;
  var __var_65: int;
  var __var_66: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1465 >= 0;
    if (DType[optionToken_s1466] == GVOptionToken2)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__success(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1466] == GVOptionToken1)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__success(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1466] == GVOptionToken0)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__success(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1466] == GVOptionToken)
    {
        call availableTokens_s1465 := remainingTokensCount_GVOptionToken__success(optionToken_s1466, this, __var_64);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1465 := availableTokens_s1465;
    gas := gas - 9;
    assume availableTokens_s1465 >= 0;
    if (availableTokens_s1465 > 0)
    {
        gas := gas - 19;
        assume tokens_s1461 >= 0;
        assume usdCents_s1466 >= 0;
        assume usdCents_s1466 * 260000000000000000 >= 0;
        tokens_s1461 := usdCents_s1466 * 260000000000000000;
        gas := gas - 9;
        assume availableTokens_s1465 >= 0;
        assume tokens_s1461 >= 0;
        if (availableTokens_s1465 >= tokens_s1461)
        {
            gas := gas - 27962;
            assume tokens_s1461 >= 0;
            if (DType[optionToken_s1466] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_65, buyer_s1466, tokens_s1461);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1465 >= 0;
            if (DType[optionToken_s1466] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1466] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1466, this, __var_66, buyer_s1466, availableTokens_s1465);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 54;
            assume usdCents_s1466 >= 0;
            assume availableTokens_s1465 >= 0;
            assume availableTokens_s1465 / 260000000000000000 >= 0;
            assume usdCents_s1466 - availableTokens_s1465 / 260000000000000000 >= 0;
            __ret_0_ := usdCents_s1466 - availableTokens_s1465 / 260000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1466 >= 0;
    __ret_0_ := usdCents_s1466;
    return;
}



implementation buyIfAvailable1_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1545: Ref, 
    usdCents_s1545: int, 
    txHash_s1545: int, 
    optionToken_s1545: Ref, 
    optionType_s1545: int, 
    optionsPerCent_s1545: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1544: int;
  var __var_67: int;
  var tokens_s1540: int;
  var __var_68: int;
  var __var_69: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1544 >= 0;
    if (__tmp__DType[optionToken_s1545] == GVOptionToken2)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__fail(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1545] == GVOptionToken1)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__fail(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1545] == GVOptionToken0)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__fail(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1545] == GVOptionToken)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__fail(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1544 := availableTokens_s1544;
    gas := gas - 9;
    assume availableTokens_s1544 >= 0;
    if (availableTokens_s1544 > 0)
    {
        gas := gas - 19;
        assume tokens_s1540 >= 0;
        assume usdCents_s1545 >= 0;
        assume usdCents_s1545 * 240000000000000000 >= 0;
        tokens_s1540 := usdCents_s1545 * 240000000000000000;
        gas := gas - 9;
        assume availableTokens_s1544 >= 0;
        assume tokens_s1540 >= 0;
        if (availableTokens_s1544 >= tokens_s1540)
        {
            gas := gas - 27962;
            assume tokens_s1540 >= 0;
            if (__tmp__DType[optionToken_s1545] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1544 >= 0;
            if (__tmp__DType[optionToken_s1545] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1545] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 54;
            assume usdCents_s1545 >= 0;
            assume availableTokens_s1544 >= 0;
            assume availableTokens_s1544 / 240000000000000000 >= 0;
            assume usdCents_s1545 - availableTokens_s1544 / 240000000000000000 >= 0;
            __ret_0_ := usdCents_s1545 - availableTokens_s1544 / 240000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1545 >= 0;
    __ret_0_ := usdCents_s1545;
    return;
}



implementation buyIfAvailable1_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1545: Ref, 
    usdCents_s1545: int, 
    txHash_s1545: int, 
    optionToken_s1545: Ref, 
    optionType_s1545: int, 
    optionsPerCent_s1545: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1544: int;
  var __var_67: int;
  var tokens_s1540: int;
  var __var_68: int;
  var __var_69: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1544 >= 0;
    if (DType[optionToken_s1545] == GVOptionToken2)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__success(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1545] == GVOptionToken1)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__success(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1545] == GVOptionToken0)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__success(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1545] == GVOptionToken)
    {
        call availableTokens_s1544 := remainingTokensCount_GVOptionToken__success(optionToken_s1545, this, __var_67);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1544 := availableTokens_s1544;
    gas := gas - 9;
    assume availableTokens_s1544 >= 0;
    if (availableTokens_s1544 > 0)
    {
        gas := gas - 19;
        assume tokens_s1540 >= 0;
        assume usdCents_s1545 >= 0;
        assume usdCents_s1545 * 240000000000000000 >= 0;
        tokens_s1540 := usdCents_s1545 * 240000000000000000;
        gas := gas - 9;
        assume availableTokens_s1544 >= 0;
        assume tokens_s1540 >= 0;
        if (availableTokens_s1544 >= tokens_s1540)
        {
            gas := gas - 27962;
            assume tokens_s1540 >= 0;
            if (DType[optionToken_s1545] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_68, buyer_s1545, tokens_s1540);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1544 >= 0;
            if (DType[optionToken_s1545] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1545] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1545, this, __var_69, buyer_s1545, availableTokens_s1544);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 54;
            assume usdCents_s1545 >= 0;
            assume availableTokens_s1544 >= 0;
            assume availableTokens_s1544 / 240000000000000000 >= 0;
            assume usdCents_s1545 - availableTokens_s1544 / 240000000000000000 >= 0;
            __ret_0_ := usdCents_s1545 - availableTokens_s1544 / 240000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1545 >= 0;
    __ret_0_ := usdCents_s1545;
    return;
}



implementation buyIfAvailable2_GVOptionProgram__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1624: Ref, 
    usdCents_s1624: int, 
    txHash_s1624: int, 
    optionToken_s1624: Ref, 
    optionType_s1624: int, 
    optionsPerCent_s1624: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1623: int;
  var __var_70: int;
  var tokens_s1619: int;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1623 >= 0;
    if (__tmp__DType[optionToken_s1624] == GVOptionToken2)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__fail(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1624] == GVOptionToken1)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__fail(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1624] == GVOptionToken0)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__fail(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[optionToken_s1624] == GVOptionToken)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__fail(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1623 := availableTokens_s1623;
    gas := gas - 9;
    assume availableTokens_s1623 >= 0;
    if (availableTokens_s1623 > 0)
    {
        gas := gas - 19;
        assume tokens_s1619 >= 0;
        assume usdCents_s1624 >= 0;
        assume usdCents_s1624 * 220000000000000000 >= 0;
        tokens_s1619 := usdCents_s1624 * 220000000000000000;
        gas := gas - 9;
        assume availableTokens_s1623 >= 0;
        assume tokens_s1619 >= 0;
        if (availableTokens_s1623 >= tokens_s1619)
        {
            gas := gas - 27962;
            assume tokens_s1619 >= 0;
            if (__tmp__DType[optionToken_s1624] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1623 >= 0;
            if (__tmp__DType[optionToken_s1624] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (__tmp__DType[optionToken_s1624] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__fail(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            gas := gas - 54;
            assume usdCents_s1624 >= 0;
            assume availableTokens_s1623 >= 0;
            assume availableTokens_s1623 / 220000000000000000 >= 0;
            assume usdCents_s1624 - availableTokens_s1623 / 220000000000000000 >= 0;
            __ret_0_ := usdCents_s1624 - availableTokens_s1623 / 220000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1624 >= 0;
    __ret_0_ := usdCents_s1624;
    return;
}



implementation buyIfAvailable2_GVOptionProgram__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1624: Ref, 
    usdCents_s1624: int, 
    txHash_s1624: int, 
    optionToken_s1624: Ref, 
    optionType_s1624: int, 
    optionsPerCent_s1624: int)
   returns (__ret_0_: int)
{
  var availableTokens_s1623: int;
  var __var_70: int;
  var tokens_s1619: int;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 3;
    gas := gas - 2963;
    assume availableTokens_s1623 >= 0;
    if (DType[optionToken_s1624] == GVOptionToken2)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__success(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1624] == GVOptionToken1)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__success(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1624] == GVOptionToken0)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__success(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionToken_s1624] == GVOptionToken)
    {
        call availableTokens_s1623 := remainingTokensCount_GVOptionToken__success(optionToken_s1624, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    availableTokens_s1623 := availableTokens_s1623;
    gas := gas - 9;
    assume availableTokens_s1623 >= 0;
    if (availableTokens_s1623 > 0)
    {
        gas := gas - 19;
        assume tokens_s1619 >= 0;
        assume usdCents_s1624 >= 0;
        assume usdCents_s1624 * 220000000000000000 >= 0;
        tokens_s1619 := usdCents_s1624 * 220000000000000000;
        gas := gas - 9;
        assume availableTokens_s1623 >= 0;
        assume tokens_s1619 >= 0;
        if (availableTokens_s1623 >= tokens_s1619)
        {
            gas := gas - 27962;
            assume tokens_s1619 >= 0;
            if (DType[optionToken_s1624] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_71, buyer_s1624, tokens_s1619);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 23;
            __ret_0_ := 0;
            return;
        }
        else
        {
            gas := gas - 27962;
            assume availableTokens_s1623 >= 0;
            if (DType[optionToken_s1624] == GVOptionToken2)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken1)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken0)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else if (DType[optionToken_s1624] == GVOptionToken)
            {
                call buyOptions_GVOptionToken__success(optionToken_s1624, this, __var_72, buyer_s1624, availableTokens_s1623);
                if (revert)
                {
                    return;
                }
            }
            else
            {
                assume false;
            }

            assert {:EventEmitted "BuyOptions_GVOptionProgram"} true;
            gas := gas - 54;
            assume usdCents_s1624 >= 0;
            assume availableTokens_s1623 >= 0;
            assume availableTokens_s1623 / 220000000000000000 >= 0;
            assume usdCents_s1624 - availableTokens_s1623 / 220000000000000000 >= 0;
            __ret_0_ := usdCents_s1624 - availableTokens_s1623 / 220000000000000000;
            return;
        }
    }

    gas := gas - 10;
    assume usdCents_s1624 >= 0;
    __ret_0_ := usdCents_s1624;
    return;
}



implementation Initable_Initable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Initable_Initable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Initable_Initable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Initable_Initable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Initable_Initable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Initable_Initable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ICO_ICO_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref)
{
  var __var_73: Ref;
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__TOKENS_FOR_SALE_ICO[this] := 33000000000000000000000000;
    __tmp__gvAgent_ICO[this] := null;
    __tmp__team_ICO[this] := null;
    __tmp__migrationMaster_ICO[this] := null;
    __tmp__tokensSold_ICO[this] := 0;
    __tmp__isPaused_ICO[this] := false;
    __tmp__gvAgent_ICO[this] := _gvAgent_s1744;
    __tmp__team_ICO[this] := _team_s1744;
    assume __tmp__DType[_teamAllocator_s1744] == Initable;
    __var_73 := _teamAllocator_s1744;
    __tmp__teamAllocator_ICO[this] := __var_73;
    __tmp__migrationMaster_ICO[this] := _migrationMaster_s1744;
    call __var_75 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_76 := this;
    assume __tmp__DType[__var_75] == GVToken;
    call GVToken_GVToken__fail(__var_75, this, 0, this, __tmp__migrationMaster_ICO[this]);
    if (revert)
    {
        return;
    }

    __var_74 := __var_75;
    __tmp__gvToken_ICO[this] := __var_74;
}



implementation ICO_ICO_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref)
{
  var __var_73: Ref;
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    TOKENS_FOR_SALE_ICO[this] := 33000000000000000000000000;
    gvAgent_ICO[this] := null;
    team_ICO[this] := null;
    migrationMaster_ICO[this] := null;
    tokensSold_ICO[this] := 0;
    isPaused_ICO[this] := false;
    gvAgent_ICO[this] := _gvAgent_s1744;
    team_ICO[this] := _team_s1744;
    assume DType[_teamAllocator_s1744] == Initable;
    __var_73 := _teamAllocator_s1744;
    teamAllocator_ICO[this] := __var_73;
    migrationMaster_ICO[this] := _migrationMaster_s1744;
    call __var_75 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_76 := this;
    assume DType[__var_75] == GVToken;
    call GVToken_GVToken__success(__var_75, this, 0, this, migrationMaster_ICO[this]);
    if (revert)
    {
        return;
    }

    __var_74 := __var_75;
    gvToken_ICO[this] := __var_74;
}



implementation ICO_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref)
{
  var __var_73: Ref;
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: Ref;

    call ICO_ICO_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _team_s1744, _gvAgent_s1744, _migrationMaster_s1744, _teamAllocator_s1744);
    if (revert)
    {
        return;
    }
}



implementation ICO_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _team_s1744: Ref, 
    _gvAgent_s1744: Ref, 
    _migrationMaster_s1744: Ref, 
    _teamAllocator_s1744: Ref)
{
  var __var_73: Ref;
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: Ref;

    call ICO_ICO_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _team_s1744, _gvAgent_s1744, _migrationMaster_s1744, _teamAllocator_s1744);
    if (revert)
    {
        return;
    }
}



implementation initOptionProgram_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_77: Ref;
  var __var_78: Ref;
  var __var_79: Ref;
  var __var_80: Ref;
  var __var_81: Ref;

    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 257;
    __var_77 := __tmp__optionProgram_ICO[this];
    __var_78 := null;
    if (__tmp__optionProgram_ICO[this] == null)
    {
        gas := gas - 53295;
        call __var_80 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __var_81 := this;
        assume __tmp__DType[__var_80] == GVOptionProgram;
        call GVOptionProgram_GVOptionProgram__fail(__var_80, this, 0, this, __tmp__gvAgent_ICO[this], __tmp__team_ICO[this]);
        if (revert)
        {
            return;
        }

        __var_79 := __var_80;
        __tmp__optionProgram_ICO[this] := __var_79;
    }
}



implementation initOptionProgram_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_77: Ref;
  var __var_78: Ref;
  var __var_79: Ref;
  var __var_80: Ref;
  var __var_81: Ref;

    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 257;
    __var_77 := optionProgram_ICO[this];
    __var_78 := null;
    if (optionProgram_ICO[this] == null)
    {
        gas := gas - 53295;
        call __var_80 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        __var_81 := this;
        assume DType[__var_80] == GVOptionProgram;
        call GVOptionProgram_GVOptionProgram__success(__var_80, this, 0, this, gvAgent_ICO[this], team_ICO[this]);
        if (revert)
        {
            return;
        }

        __var_79 := __var_80;
        optionProgram_ICO[this] := __var_79;
    }
}



implementation startOptionsSelling_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_82: Ref;
  var __var_83: Ref;

    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_82 := __tmp__optionProgram_ICO[this];
    __var_83 := null;
    if (!(__tmp__optionProgram_ICO[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__icoState_ICO[this] := 1;
}



implementation startOptionsSelling_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_82: Ref;
  var __var_83: Ref;

    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_82 := optionProgram_ICO[this];
    __var_83 := null;
    if (!(optionProgram_ICO[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    icoState_ICO[this] := 1;
    assert {:EventEmitted "StartOptionsSelling_ICO"} true;
}



implementation startIcoForOptionsHolders_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__icoState_ICO[this] := 2;
}



implementation startIcoForOptionsHolders_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    icoState_ICO[this] := 2;
    assert {:EventEmitted "StartICOForOptionsHolders_ICO"} true;
}



implementation startIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__icoState_ICO[this] := 3;
}



implementation startIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    icoState_ICO[this] := 3;
    assert {:EventEmitted "RunIco_ICO"} true;
}



implementation pauseIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!__tmp__isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 1099;
    if (!(
      __tmp__icoState_ICO[this] == 3
       || __tmp__icoState_ICO[this] == 2
       || __tmp__icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__isPaused_ICO[this] := true;
}



implementation pauseIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 1099;
    if (!(icoState_ICO[this] == 3 || icoState_ICO[this] == 2 || icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    isPaused_ICO[this] := true;
    assert {:EventEmitted "PauseIco_ICO"} true;
}



implementation resumeIco_ICO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!__tmp__isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 1099;
    if (!(
      __tmp__icoState_ICO[this] == 3
       || __tmp__icoState_ICO[this] == 2
       || __tmp__icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__isPaused_ICO[this] := false;
}



implementation resumeIco_ICO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 1099;
    if (!(icoState_ICO[this] == 3 || icoState_ICO[this] == 2 || icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    isPaused_ICO[this] := false;
    assert {:EventEmitted "ResumeIco_ICO"} true;
}



implementation finishIco_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref)
{
  var mintedTokens_s1993: int;
  var __var_84: int;
  var totalAmount_s1988: int;
  var __var_85: int;
  var __var_86: Ref;
  var __var_87: int;
  var __var_88: int;
  var __var_89: int;

    call teamOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 3))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__icoState_ICO[this] := 4;
    gas := gas - 3199;
    assume mintedTokens_s1993 >= 0;
    assume __tmp__DType[__tmp__gvToken_ICO[this]] == GVToken;
    mintedTokens_s1993 := __tmp__totalSupply_ERC20Basic[__tmp__gvToken_ICO[this]];
    mintedTokens_s1993 := mintedTokens_s1993;
    gas := gas - 9;
    assume mintedTokens_s1993 >= 0;
    if (mintedTokens_s1993 > 0)
    {
        gas := gas - 44;
        assume totalAmount_s1988 >= 0;
        assume mintedTokens_s1993 >= 0;
        assume mintedTokens_s1993 * 4 >= 0;
        assume mintedTokens_s1993 * 4 / 3 >= 0;
        totalAmount_s1988 := mintedTokens_s1993 * 4 / 3;
        gas := gas - 37565;
        __var_86 := __tmp__teamAllocator_ICO[this];
        assume totalAmount_s1988 >= 0;
        assume 11 * totalAmount_s1988 >= 0;
        assume 11 * totalAmount_s1988 / 100 >= 0;
        call mint_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_85, __tmp__teamAllocator_ICO[this], 11 * totalAmount_s1988 / 100);
        if (revert)
        {
            return;
        }

        gas := gas - 37321;
        assume totalAmount_s1988 >= 0;
        assume totalAmount_s1988 / 20 >= 0;
        call mint_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_87, _fund_s1994, totalAmount_s1988 / 20);
        if (revert)
        {
            return;
        }

        gas := gas - 37329;
        assume totalAmount_s1988 >= 0;
        assume 9 * totalAmount_s1988 >= 0;
        assume 9 * totalAmount_s1988 / 100 >= 0;
        call mint_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_88, _bounty_s1994, 9 * totalAmount_s1988 / 100);
        if (revert)
        {
            return;
        }

        gas := gas - 37034;
        call unfreeze_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_89);
        if (revert)
        {
            return;
        }
    }
}



implementation finishIco_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _fund_s1994: Ref, 
    _bounty_s1994: Ref)
{
  var mintedTokens_s1993: int;
  var __var_84: int;
  var totalAmount_s1988: int;
  var __var_85: int;
  var __var_86: Ref;
  var __var_87: int;
  var __var_88: int;
  var __var_89: int;

    call teamOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 3))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    icoState_ICO[this] := 4;
    gas := gas - 3199;
    assume mintedTokens_s1993 >= 0;
    assume DType[gvToken_ICO[this]] == GVToken;
    mintedTokens_s1993 := totalSupply_ERC20Basic[gvToken_ICO[this]];
    mintedTokens_s1993 := mintedTokens_s1993;
    gas := gas - 9;
    assume mintedTokens_s1993 >= 0;
    if (mintedTokens_s1993 > 0)
    {
        gas := gas - 44;
        assume totalAmount_s1988 >= 0;
        assume mintedTokens_s1993 >= 0;
        assume mintedTokens_s1993 * 4 >= 0;
        assume mintedTokens_s1993 * 4 / 3 >= 0;
        totalAmount_s1988 := mintedTokens_s1993 * 4 / 3;
        gas := gas - 37565;
        __var_86 := teamAllocator_ICO[this];
        assume totalAmount_s1988 >= 0;
        assume 11 * totalAmount_s1988 >= 0;
        assume 11 * totalAmount_s1988 / 100 >= 0;
        call mint_GVToken__success(gvToken_ICO[this], this, __var_85, teamAllocator_ICO[this], 11 * totalAmount_s1988 / 100);
        if (revert)
        {
            return;
        }

        gas := gas - 37321;
        assume totalAmount_s1988 >= 0;
        assume totalAmount_s1988 / 20 >= 0;
        call mint_GVToken__success(gvToken_ICO[this], this, __var_87, _fund_s1994, totalAmount_s1988 / 20);
        if (revert)
        {
            return;
        }

        gas := gas - 37329;
        assume totalAmount_s1988 >= 0;
        assume 9 * totalAmount_s1988 >= 0;
        assume 9 * totalAmount_s1988 / 100 >= 0;
        call mint_GVToken__success(gvToken_ICO[this], this, __var_88, _bounty_s1994, 9 * totalAmount_s1988 / 100);
        if (revert)
        {
            return;
        }

        gas := gas - 37034;
        call unfreeze_GVToken__success(gvToken_ICO[this], this, __var_89);
        if (revert)
        {
            return;
        }
    }

    assert {:EventEmitted "FinishIco_ICO"} true;
}



implementation buyTokens_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
   returns (__ret_0_: int)
{
  var __var_90: int;

    gas := gas - 3;
    call gvAgentOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 3))
    {
        revert := true;
        return;
    }

    gas := gas - 262;
    if (!!__tmp__isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 234;
    assume __var_90 >= 0;
    assume usdCents_s2026 >= 0;
    call __var_90 := buyTokensInternal_ICO__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s2026, usdCents_s2026, txHash_s2026);
    if (revert)
    {
        return;
    }

    assume __var_90 >= 0;
    __ret_0_ := __var_90;
    return;
}



implementation buyTokens_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2026: Ref, 
    usdCents_s2026: int, 
    txHash_s2026: int)
   returns (__ret_0_: int)
{
  var __var_90: int;

    gas := gas - 3;
    call gvAgentOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 3))
    {
        revert := true;
        return;
    }

    gas := gas - 262;
    if (!!isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 234;
    assume __var_90 >= 0;
    assume usdCents_s2026 >= 0;
    call __var_90 := buyTokensInternal_ICO__success(this, msgsender_MSG, msgvalue_MSG, buyer_s2026, usdCents_s2026, txHash_s2026);
    if (revert)
    {
        return;
    }

    assume __var_90 >= 0;
    __ret_0_ := __var_90;
    return;
}



implementation buyTokensByOptions_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
   returns (__ret_0_: int)
{
  var executedTokens_s2124: int;
  var remainingCents_s2124: int;
  var __var_91: int;
  var __var_92: int;
  var __var_93: int;
  var __var_94: int;
  var __var_95: int;

    gas := gas - 3;
    call gvAgentOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!__tmp__isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 733;
    if (!(__tmp__icoState_ICO[this] == 3 || __tmp__icoState_ICO[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume usdCents_s2125 >= 0;
    if (!(usdCents_s2125 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 3;
    havoc executedTokens_s2124;
    gas := gas - 3;
    havoc remainingCents_s2124;
    gas := gas - 37891;
    assume executedTokens_s2124 >= 0;
    assume remainingCents_s2124 >= 0;
    assume usdCents_s2125 >= 0;
    call __var_91, __var_92 := executeOptions_GVOptionProgram__fail(__tmp__optionProgram_ICO[this], this, __var_93, buyer_s2125, usdCents_s2125, txHash_s2125);
    if (revert)
    {
        return;
    }

    executedTokens_s2124 := __var_91;
    remainingCents_s2124 := __var_92;
    gas := gas - 9;
    assume executedTokens_s2124 >= 0;
    if (executedTokens_s2124 > 0)
    {
        gas := gas - 235;
        assume __tmp__tokensSold_ICO[this] >= 0;
        assume executedTokens_s2124 >= 0;
        assume __tmp__tokensSold_ICO[this] + executedTokens_s2124 >= 0;
        assume __tmp__TOKENS_FOR_SALE_ICO[this] >= 0;
        if (!(__tmp__tokensSold_ICO[this] + executedTokens_s2124
           <= __tmp__TOKENS_FOR_SALE_ICO[this]))
        {
            revert := true;
            return;
        }

        gas := gas - 20233;
        assume __tmp__tokensSold_ICO[this] >= 0;
        assume executedTokens_s2124 >= 0;
        __tmp__tokensSold_ICO[this] := __tmp__tokensSold_ICO[this] + executedTokens_s2124;
        gas := gas - 37296;
        assume executedTokens_s2124 >= 0;
        call mint_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_94, buyer_s2125, executedTokens_s2124);
        if (revert)
        {
            return;
        }
    }

    gas := gas - 347;
    if (__tmp__icoState_ICO[this] == 3)
    {
        gas := gas - 260;
        assume __var_95 >= 0;
        assume remainingCents_s2124 >= 0;
        call __var_95 := buyTokensInternal_ICO__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s2125, remainingCents_s2124, txHash_s2125);
        if (revert)
        {
            return;
        }

        assume __var_95 >= 0;
        __ret_0_ := __var_95;
        return;
    }
    else
    {
        gas := gas - 12;
        assume remainingCents_s2124 >= 0;
        __ret_0_ := remainingCents_s2124;
        return;
    }
}



implementation buyTokensByOptions_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2125: Ref, 
    usdCents_s2125: int, 
    txHash_s2125: int)
   returns (__ret_0_: int)
{
  var executedTokens_s2124: int;
  var remainingCents_s2124: int;
  var __var_91: int;
  var __var_92: int;
  var __var_93: int;
  var __var_94: int;
  var __var_95: int;

    gas := gas - 3;
    call gvAgentOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 733;
    if (!(icoState_ICO[this] == 3 || icoState_ICO[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 29;
    assume usdCents_s2125 >= 0;
    if (!(usdCents_s2125 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 3;
    havoc executedTokens_s2124;
    gas := gas - 3;
    havoc remainingCents_s2124;
    gas := gas - 37891;
    assume executedTokens_s2124 >= 0;
    assume remainingCents_s2124 >= 0;
    assume usdCents_s2125 >= 0;
    call __var_91, __var_92 := executeOptions_GVOptionProgram__success(optionProgram_ICO[this], this, __var_93, buyer_s2125, usdCents_s2125, txHash_s2125);
    if (revert)
    {
        return;
    }

    executedTokens_s2124 := __var_91;
    remainingCents_s2124 := __var_92;
    gas := gas - 9;
    assume executedTokens_s2124 >= 0;
    if (executedTokens_s2124 > 0)
    {
        gas := gas - 235;
        assume tokensSold_ICO[this] >= 0;
        assume executedTokens_s2124 >= 0;
        assume tokensSold_ICO[this] + executedTokens_s2124 >= 0;
        assume TOKENS_FOR_SALE_ICO[this] >= 0;
        if (!(tokensSold_ICO[this] + executedTokens_s2124 <= TOKENS_FOR_SALE_ICO[this]))
        {
            revert := true;
            return;
        }

        gas := gas - 20233;
        assume tokensSold_ICO[this] >= 0;
        assume executedTokens_s2124 >= 0;
        tokensSold_ICO[this] := tokensSold_ICO[this] + executedTokens_s2124;
        gas := gas - 37296;
        assume executedTokens_s2124 >= 0;
        call mint_GVToken__success(gvToken_ICO[this], this, __var_94, buyer_s2125, executedTokens_s2124);
        if (revert)
        {
            return;
        }

        assert {:EventEmitted "BuyTokens_ICO"} true;
    }

    gas := gas - 347;
    if (icoState_ICO[this] == 3)
    {
        gas := gas - 260;
        assume __var_95 >= 0;
        assume remainingCents_s2124 >= 0;
        call __var_95 := buyTokensInternal_ICO__success(this, msgsender_MSG, msgvalue_MSG, buyer_s2125, remainingCents_s2124, txHash_s2125);
        if (revert)
        {
            return;
        }

        assume __var_95 >= 0;
        __ret_0_ := __var_95;
        return;
    }
    else
    {
        gas := gas - 12;
        assume remainingCents_s2124 >= 0;
        __ret_0_ := remainingCents_s2124;
        return;
    }
}



implementation buyOptions_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int)
{
  var __var_96: int;

    call gvAgentOnly_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!__tmp__isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 367;
    if (!(__tmp__icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 37586;
    assume usdCents_s2157 >= 0;
    if (__tmp__DType[__tmp__optionProgram_ICO[this]] == ICO)
    {
        call buyOptions_ICO__fail(__tmp__optionProgram_ICO[this], this, __var_96, buyer_s2157, usdCents_s2157, txHash_s2157);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__optionProgram_ICO[this]] == GVOptionProgram)
    {
        call buyOptions_GVOptionProgram__fail(__tmp__optionProgram_ICO[this], this, __var_96, buyer_s2157, usdCents_s2157, txHash_s2157);
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



implementation buyOptions_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2157: Ref, 
    usdCents_s2157: int, 
    txHash_s2157: int)
{
  var __var_96: int;

    call gvAgentOnly_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!isPaused_ICO[this])
    {
        revert := true;
        return;
    }

    gas := gas - 367;
    if (!(icoState_ICO[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 37586;
    assume usdCents_s2157 >= 0;
    if (DType[optionProgram_ICO[this]] == ICO)
    {
        call buyOptions_ICO__success(optionProgram_ICO[this], this, __var_96, buyer_s2157, usdCents_s2157, txHash_s2157);
        if (revert)
        {
            return;
        }
    }
    else if (DType[optionProgram_ICO[this]] == GVOptionProgram)
    {
        call buyOptions_GVOptionProgram__success(optionProgram_ICO[this], this, __var_96, buyer_s2157, usdCents_s2157, txHash_s2157);
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



implementation buyTokensInternal_ICO__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2208: Ref, 
    usdCents_s2208: int, 
    txHash_s2208: int)
   returns (__ret_0_: int)
{
  var tokens_s2207: int;
  var __var_97: int;

    gas := gas - 3;
    gas := gas - 29;
    assume usdCents_s2208 >= 0;
    if (!(usdCents_s2208 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume tokens_s2207 >= 0;
    assume usdCents_s2208 >= 0;
    assume usdCents_s2208 * 10000000000000000 >= 0;
    tokens_s2207 := usdCents_s2208 * 10000000000000000;
    gas := gas - 235;
    assume __tmp__tokensSold_ICO[this] >= 0;
    assume tokens_s2207 >= 0;
    assume __tmp__tokensSold_ICO[this] + tokens_s2207 >= 0;
    assume __tmp__TOKENS_FOR_SALE_ICO[this] >= 0;
    if (!(__tmp__tokensSold_ICO[this] + tokens_s2207 <= __tmp__TOKENS_FOR_SALE_ICO[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20233;
    assume __tmp__tokensSold_ICO[this] >= 0;
    assume tokens_s2207 >= 0;
    __tmp__tokensSold_ICO[this] := __tmp__tokensSold_ICO[this] + tokens_s2207;
    gas := gas - 37296;
    assume tokens_s2207 >= 0;
    call mint_GVToken__fail(__tmp__gvToken_ICO[this], this, __var_97, buyer_s2208, tokens_s2207);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    __ret_0_ := 0;
    return;
}



implementation buyTokensInternal_ICO__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s2208: Ref, 
    usdCents_s2208: int, 
    txHash_s2208: int)
   returns (__ret_0_: int)
{
  var tokens_s2207: int;
  var __var_97: int;

    gas := gas - 3;
    gas := gas - 29;
    assume usdCents_s2208 >= 0;
    if (!(usdCents_s2208 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume tokens_s2207 >= 0;
    assume usdCents_s2208 >= 0;
    assume usdCents_s2208 * 10000000000000000 >= 0;
    tokens_s2207 := usdCents_s2208 * 10000000000000000;
    gas := gas - 235;
    assume tokensSold_ICO[this] >= 0;
    assume tokens_s2207 >= 0;
    assume tokensSold_ICO[this] + tokens_s2207 >= 0;
    assume TOKENS_FOR_SALE_ICO[this] >= 0;
    if (!(tokensSold_ICO[this] + tokens_s2207 <= TOKENS_FOR_SALE_ICO[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20233;
    assume tokensSold_ICO[this] >= 0;
    assume tokens_s2207 >= 0;
    tokensSold_ICO[this] := tokensSold_ICO[this] + tokens_s2207;
    gas := gas - 37296;
    assume tokens_s2207 >= 0;
    call mint_GVToken__success(gvToken_ICO[this], this, __var_97, buyer_s2208, tokens_s2207);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "BuyTokens_ICO"} true;
    gas := gas - 10;
    __ret_0_ := 0;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ICO)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Initable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVOptionProgram)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVOptionToken2)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVOptionToken1)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVOptionToken0)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVOptionToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == GVToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MigrationAgent)
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
    if (DType[to] == ICO)
    {
        assume amount == 0;
    }
    else if (DType[to] == Initable)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVOptionProgram)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVOptionToken2)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVOptionToken1)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVOptionToken0)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVOptionToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == GVToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == MigrationAgent)
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__totalSupply_ERC20Basic: [Ref]int;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__name_GVToken: [Ref]int;
  var __snap___tmp__symbol_GVToken: [Ref]int;
  var __snap___tmp__decimals_GVToken: [Ref]int;
  var __snap___tmp__TOKEN_LIMIT_GVToken: [Ref]int;
  var __snap___tmp__ico_GVToken: [Ref]Ref;
  var __snap___tmp__isFrozen_GVToken: [Ref]bool;
  var __snap___tmp__migrationMaster_GVToken: [Ref]Ref;
  var __snap___tmp__migrationAgent_GVToken: [Ref]Ref;
  var __snap___tmp__totalMigrated_GVToken: [Ref]int;
  var __snap___tmp__optionProgram_GVOptionToken: [Ref]Ref;
  var __snap___tmp__name_GVOptionToken: [Ref]int;
  var __snap___tmp__symbol_GVOptionToken: [Ref]int;
  var __snap___tmp__decimals_GVOptionToken: [Ref]int;
  var __snap___tmp__TOKEN_LIMIT_GVOptionToken: [Ref]int;
  var __snap___tmp__option30perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__option20perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__option10perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__token30perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__token20perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__token10perCent_GVOptionProgram: [Ref]int;
  var __snap___tmp__option30name_GVOptionProgram: [Ref]int;
  var __snap___tmp__option20name_GVOptionProgram: [Ref]int;
  var __snap___tmp__option10name_GVOptionProgram: [Ref]int;
  var __snap___tmp__option30symbol_GVOptionProgram: [Ref]int;
  var __snap___tmp__option20symbol_GVOptionProgram: [Ref]int;
  var __snap___tmp__option10symbol_GVOptionProgram: [Ref]int;
  var __snap___tmp__option30_TOKEN_LIMIT_GVOptionProgram: [Ref]int;
  var __snap___tmp__option20_TOKEN_LIMIT_GVOptionProgram: [Ref]int;
  var __snap___tmp__option10_TOKEN_LIMIT_GVOptionProgram: [Ref]int;
  var __snap___tmp__gvAgent_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__team_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__ico_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__gvOptionToken30_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__gvOptionToken20_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__gvOptionToken10_GVOptionProgram: [Ref]Ref;
  var __snap___tmp__TOKENS_FOR_SALE_ICO: [Ref]int;
  var __snap___tmp__gvAgent_ICO: [Ref]Ref;
  var __snap___tmp__team_ICO: [Ref]Ref;
  var __snap___tmp__gvToken_ICO: [Ref]Ref;
  var __snap___tmp__optionProgram_ICO: [Ref]Ref;
  var __snap___tmp__teamAllocator_ICO: [Ref]Ref;
  var __snap___tmp__migrationMaster_ICO: [Ref]Ref;
  var __snap___tmp__tokensSold_ICO: [Ref]int;
  var __snap___tmp__isPaused_ICO: [Ref]bool;
  var __snap___tmp__icoState_ICO: [Ref]int;

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
        __snap___tmp__totalSupply_ERC20Basic := __tmp__totalSupply_ERC20Basic;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__name_GVToken := __tmp__name_GVToken;
        __snap___tmp__symbol_GVToken := __tmp__symbol_GVToken;
        __snap___tmp__decimals_GVToken := __tmp__decimals_GVToken;
        __snap___tmp__TOKEN_LIMIT_GVToken := __tmp__TOKEN_LIMIT_GVToken;
        __snap___tmp__ico_GVToken := __tmp__ico_GVToken;
        __snap___tmp__isFrozen_GVToken := __tmp__isFrozen_GVToken;
        __snap___tmp__migrationMaster_GVToken := __tmp__migrationMaster_GVToken;
        __snap___tmp__migrationAgent_GVToken := __tmp__migrationAgent_GVToken;
        __snap___tmp__totalMigrated_GVToken := __tmp__totalMigrated_GVToken;
        __snap___tmp__optionProgram_GVOptionToken := __tmp__optionProgram_GVOptionToken;
        __snap___tmp__name_GVOptionToken := __tmp__name_GVOptionToken;
        __snap___tmp__symbol_GVOptionToken := __tmp__symbol_GVOptionToken;
        __snap___tmp__decimals_GVOptionToken := __tmp__decimals_GVOptionToken;
        __snap___tmp__TOKEN_LIMIT_GVOptionToken := __tmp__TOKEN_LIMIT_GVOptionToken;
        __snap___tmp__option30perCent_GVOptionProgram := __tmp__option30perCent_GVOptionProgram;
        __snap___tmp__option20perCent_GVOptionProgram := __tmp__option20perCent_GVOptionProgram;
        __snap___tmp__option10perCent_GVOptionProgram := __tmp__option10perCent_GVOptionProgram;
        __snap___tmp__token30perCent_GVOptionProgram := __tmp__token30perCent_GVOptionProgram;
        __snap___tmp__token20perCent_GVOptionProgram := __tmp__token20perCent_GVOptionProgram;
        __snap___tmp__token10perCent_GVOptionProgram := __tmp__token10perCent_GVOptionProgram;
        __snap___tmp__option30name_GVOptionProgram := __tmp__option30name_GVOptionProgram;
        __snap___tmp__option20name_GVOptionProgram := __tmp__option20name_GVOptionProgram;
        __snap___tmp__option10name_GVOptionProgram := __tmp__option10name_GVOptionProgram;
        __snap___tmp__option30symbol_GVOptionProgram := __tmp__option30symbol_GVOptionProgram;
        __snap___tmp__option20symbol_GVOptionProgram := __tmp__option20symbol_GVOptionProgram;
        __snap___tmp__option10symbol_GVOptionProgram := __tmp__option10symbol_GVOptionProgram;
        __snap___tmp__option30_TOKEN_LIMIT_GVOptionProgram := __tmp__option30_TOKEN_LIMIT_GVOptionProgram;
        __snap___tmp__option20_TOKEN_LIMIT_GVOptionProgram := __tmp__option20_TOKEN_LIMIT_GVOptionProgram;
        __snap___tmp__option10_TOKEN_LIMIT_GVOptionProgram := __tmp__option10_TOKEN_LIMIT_GVOptionProgram;
        __snap___tmp__gvAgent_GVOptionProgram := __tmp__gvAgent_GVOptionProgram;
        __snap___tmp__team_GVOptionProgram := __tmp__team_GVOptionProgram;
        __snap___tmp__ico_GVOptionProgram := __tmp__ico_GVOptionProgram;
        __snap___tmp__gvOptionToken30_GVOptionProgram := __tmp__gvOptionToken30_GVOptionProgram;
        __snap___tmp__gvOptionToken20_GVOptionProgram := __tmp__gvOptionToken20_GVOptionProgram;
        __snap___tmp__gvOptionToken10_GVOptionProgram := __tmp__gvOptionToken10_GVOptionProgram;
        __snap___tmp__TOKENS_FOR_SALE_ICO := __tmp__TOKENS_FOR_SALE_ICO;
        __snap___tmp__gvAgent_ICO := __tmp__gvAgent_ICO;
        __snap___tmp__team_ICO := __tmp__team_ICO;
        __snap___tmp__gvToken_ICO := __tmp__gvToken_ICO;
        __snap___tmp__optionProgram_ICO := __tmp__optionProgram_ICO;
        __snap___tmp__teamAllocator_ICO := __tmp__teamAllocator_ICO;
        __snap___tmp__migrationMaster_ICO := __tmp__migrationMaster_ICO;
        __snap___tmp__tokensSold_ICO := __tmp__tokensSold_ICO;
        __snap___tmp__isPaused_ICO := __tmp__isPaused_ICO;
        __snap___tmp__icoState_ICO := __tmp__icoState_ICO;
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
        __tmp__totalSupply_ERC20Basic := __snap___tmp__totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__name_GVToken := __snap___tmp__name_GVToken;
        __tmp__symbol_GVToken := __snap___tmp__symbol_GVToken;
        __tmp__decimals_GVToken := __snap___tmp__decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := __snap___tmp__TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := __snap___tmp__ico_GVToken;
        __tmp__isFrozen_GVToken := __snap___tmp__isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := __snap___tmp__migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := __snap___tmp__migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := __snap___tmp__totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := __snap___tmp__optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := __snap___tmp__name_GVOptionToken;
        __tmp__symbol_GVOptionToken := __snap___tmp__symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := __snap___tmp__decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := __snap___tmp__TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := __snap___tmp__option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := __snap___tmp__option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := __snap___tmp__option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := __snap___tmp__token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := __snap___tmp__token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := __snap___tmp__token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := __snap___tmp__option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := __snap___tmp__option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := __snap___tmp__option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := __snap___tmp__option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := __snap___tmp__option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := __snap___tmp__option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := __snap___tmp__option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := __snap___tmp__option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := __snap___tmp__option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := __snap___tmp__gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := __snap___tmp__team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := __snap___tmp__ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := __snap___tmp__gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := __snap___tmp__gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := __snap___tmp__gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := __snap___tmp__TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := __snap___tmp__gvAgent_ICO;
        __tmp__team_ICO := __snap___tmp__team_ICO;
        __tmp__gvToken_ICO := __snap___tmp__gvToken_ICO;
        __tmp__optionProgram_ICO := __snap___tmp__optionProgram_ICO;
        __tmp__teamAllocator_ICO := __snap___tmp__teamAllocator_ICO;
        __tmp__migrationMaster_ICO := __snap___tmp__migrationMaster_ICO;
        __tmp__tokensSold_ICO := __snap___tmp__tokensSold_ICO;
        __tmp__isPaused_ICO := __snap___tmp__isPaused_ICO;
        __tmp__icoState_ICO := __snap___tmp__icoState_ICO;
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
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_GVToken := name_GVToken;
        __tmp__symbol_GVToken := symbol_GVToken;
        __tmp__decimals_GVToken := decimals_GVToken;
        __tmp__TOKEN_LIMIT_GVToken := TOKEN_LIMIT_GVToken;
        __tmp__ico_GVToken := ico_GVToken;
        __tmp__isFrozen_GVToken := isFrozen_GVToken;
        __tmp__migrationMaster_GVToken := migrationMaster_GVToken;
        __tmp__migrationAgent_GVToken := migrationAgent_GVToken;
        __tmp__totalMigrated_GVToken := totalMigrated_GVToken;
        __tmp__optionProgram_GVOptionToken := optionProgram_GVOptionToken;
        __tmp__name_GVOptionToken := name_GVOptionToken;
        __tmp__symbol_GVOptionToken := symbol_GVOptionToken;
        __tmp__decimals_GVOptionToken := decimals_GVOptionToken;
        __tmp__TOKEN_LIMIT_GVOptionToken := TOKEN_LIMIT_GVOptionToken;
        __tmp__option30perCent_GVOptionProgram := option30perCent_GVOptionProgram;
        __tmp__option20perCent_GVOptionProgram := option20perCent_GVOptionProgram;
        __tmp__option10perCent_GVOptionProgram := option10perCent_GVOptionProgram;
        __tmp__token30perCent_GVOptionProgram := token30perCent_GVOptionProgram;
        __tmp__token20perCent_GVOptionProgram := token20perCent_GVOptionProgram;
        __tmp__token10perCent_GVOptionProgram := token10perCent_GVOptionProgram;
        __tmp__option30name_GVOptionProgram := option30name_GVOptionProgram;
        __tmp__option20name_GVOptionProgram := option20name_GVOptionProgram;
        __tmp__option10name_GVOptionProgram := option10name_GVOptionProgram;
        __tmp__option30symbol_GVOptionProgram := option30symbol_GVOptionProgram;
        __tmp__option20symbol_GVOptionProgram := option20symbol_GVOptionProgram;
        __tmp__option10symbol_GVOptionProgram := option10symbol_GVOptionProgram;
        __tmp__option30_TOKEN_LIMIT_GVOptionProgram := option30_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option20_TOKEN_LIMIT_GVOptionProgram := option20_TOKEN_LIMIT_GVOptionProgram;
        __tmp__option10_TOKEN_LIMIT_GVOptionProgram := option10_TOKEN_LIMIT_GVOptionProgram;
        __tmp__gvAgent_GVOptionProgram := gvAgent_GVOptionProgram;
        __tmp__team_GVOptionProgram := team_GVOptionProgram;
        __tmp__ico_GVOptionProgram := ico_GVOptionProgram;
        __tmp__gvOptionToken30_GVOptionProgram := gvOptionToken30_GVOptionProgram;
        __tmp__gvOptionToken20_GVOptionProgram := gvOptionToken20_GVOptionProgram;
        __tmp__gvOptionToken10_GVOptionProgram := gvOptionToken10_GVOptionProgram;
        __tmp__TOKENS_FOR_SALE_ICO := TOKENS_FOR_SALE_ICO;
        __tmp__gvAgent_ICO := gvAgent_ICO;
        __tmp__team_ICO := team_ICO;
        __tmp__gvToken_ICO := gvToken_ICO;
        __tmp__optionProgram_ICO := optionProgram_ICO;
        __tmp__teamAllocator_ICO := teamAllocator_ICO;
        __tmp__migrationMaster_ICO := migrationMaster_ICO;
        __tmp__tokensSold_ICO := tokensSold_ICO;
        __tmp__isPaused_ICO := isPaused_ICO;
        __tmp__icoState_ICO := icoState_ICO;
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



implementation optionProgramOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2208;
    if (!(msgsender_MSG == __tmp__optionProgram_GVOptionToken[this]))
    {
        revert := true;
        return;
    }
}



implementation optionProgramOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2208;
    if (!(msgsender_MSG == optionProgram_GVOptionToken[this]))
    {
        revert := true;
        return;
    }
}



implementation icoOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 552;
    if (!(msgsender_MSG == __tmp__ico_GVOptionProgram[this]))
    {
        revert := true;
        return;
    }
}



implementation icoOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 552;
    if (!(msgsender_MSG == ico_GVOptionProgram[this]))
    {
        revert := true;
        return;
    }
}



implementation teamOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1932;
    if (!(msgsender_MSG == __tmp__team_ICO[this]))
    {
        revert := true;
        return;
    }
}



implementation teamOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1932;
    if (!(msgsender_MSG == team_ICO[this]))
    {
        revert := true;
        return;
    }
}



implementation gvAgentOnly_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 828;
    if (!(msgsender_MSG == __tmp__gvAgent_ICO[this]))
    {
        revert := true;
        return;
    }
}



implementation gvAgentOnly_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 828;
    if (!(msgsender_MSG == gvAgent_ICO[this]))
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
  var who_s10: Ref;
  var __ret_0_balanceOf: int;
  var to_s19: Ref;
  var value_s19: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s10;
    havoc __ret_0_balanceOf;
    havoc to_s19;
    havoc value_s19;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
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
       || DType[this] == GVToken
       || DType[this] == GVOptionToken
       || DType[this] == GVOptionToken0
       || DType[this] == GVOptionToken1
       || DType[this] == GVOptionToken2;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
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
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
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
       || DType[this] == GVToken
       || DType[this] == GVOptionToken
       || DType[this] == GVOptionToken0
       || DType[this] == GVOptionToken1
       || DType[this] == GVOptionToken2;
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
  var who_s10: Ref;
  var __ret_0_balanceOf: int;
  var to_s19: Ref;
  var value_s19: int;
  var __ret_0_transfer: bool;
  var owner_s149: Ref;
  var spender_s149: Ref;
  var __ret_0_allowance: int;
  var from_s160: Ref;
  var to_s160: Ref;
  var value_s160: int;
  var __ret_0_transferFrom: bool;
  var spender_s169: Ref;
  var value_s169: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s10;
    havoc __ret_0_balanceOf;
    havoc to_s19;
    havoc value_s19;
    havoc __ret_0_transfer;
    havoc owner_s149;
    havoc spender_s149;
    havoc __ret_0_allowance;
    havoc from_s160;
    havoc to_s160;
    havoc value_s160;
    havoc __ret_0_transferFrom;
    havoc spender_s169;
    havoc value_s169;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s149, spender_s149);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s160, to_s160, value_s160);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s169, value_s169);
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
       || DType[this] == GVToken
       || DType[this] == GVOptionToken
       || DType[this] == GVOptionToken0
       || DType[this] == GVOptionToken1
       || DType[this] == GVOptionToken2;
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
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
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
       || DType[this] == GVToken
       || DType[this] == GVOptionToken
       || DType[this] == GVOptionToken0
       || DType[this] == GVOptionToken1
       || DType[this] == GVOptionToken2;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_MigrationAgent(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _from_s320: Ref;
  var _value_s320: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _from_s320;
    havoc _value_s320;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call migrateFrom_MigrationAgent(this, msgsender_MSG, msgvalue_MSG, _from_s320, _value_s320);
    }
}



implementation CorralEntry_MigrationAgent()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MigrationAgent;
    gas := gas - 53000;
    call MigrationAgent_MigrationAgent__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MigrationAgent(this);
    }
}



implementation CorralChoice_GVToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s477: Ref;
  var _value_s477: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s501: Ref;
  var _to_s501: Ref;
  var _value_s501: int;
  var __ret_0_transferFrom: bool;
  var _spender_s522: Ref;
  var _value_s522: int;
  var __ret_0_approve: bool;
  var _ico_s386: Ref;
  var _migrationMaster_s386: Ref;
  var holder_s433: Ref;
  var value_s433: int;
  var value_s586: int;
  var _agent_s611: Ref;
  var _master_s636: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s477;
    havoc _value_s477;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s501;
    havoc _to_s501;
    havoc _value_s501;
    havoc __ret_0_transferFrom;
    havoc _spender_s522;
    havoc _value_s522;
    havoc __ret_0_approve;
    havoc _ico_s386;
    havoc _migrationMaster_s386;
    havoc holder_s433;
    havoc value_s433;
    havoc value_s586;
    havoc _agent_s611;
    havoc _master_s636;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_GVToken(this, msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_GVToken(this, msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_GVToken(this, msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call mint_GVToken(this, msgsender_MSG, msgvalue_MSG, holder_s433, value_s433);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unfreeze_GVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call migrate_GVToken(this, msgsender_MSG, msgvalue_MSG, value_s586);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setMigrationAgent_GVToken(this, msgsender_MSG, msgvalue_MSG, _agent_s611);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setMigrationMaster_GVToken(this, msgsender_MSG, msgvalue_MSG, _master_s636);
    }
}



implementation CorralEntry_GVToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _ico_s386: Ref;
  var _migrationMaster_s386: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVToken;
    gas := gas - 53000;
    call GVToken_GVToken(this, msgsender_MSG, msgvalue_MSG, _ico_s386, _migrationMaster_s386);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVToken(this);
    }
}



implementation CorralChoice_GVOptionToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;
  var buyer_s739: Ref;
  var value_s739: int;
  var __ret_0_remainingTokensCount: int;
  var addr_s797: Ref;
  var optionsCount_s797: int;
  var __ret_0_executeOption: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
    havoc __ret_0_approve;
    havoc _optionProgram_s697;
    havoc _name_s697;
    havoc _symbol_s697;
    havoc _TOKEN_LIMIT_s697;
    havoc buyer_s739;
    havoc value_s739;
    havoc __ret_0_remainingTokensCount;
    havoc addr_s797;
    havoc optionsCount_s797;
    havoc __ret_0_executeOption;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
}



implementation CorralEntry_GVOptionToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVOptionToken
       || DType[this] == GVOptionToken0
       || DType[this] == GVOptionToken1
       || DType[this] == GVOptionToken2;
    gas := gas - 53000;
    call GVOptionToken_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s697, _name_s697, _symbol_s697, _TOKEN_LIMIT_s697);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVOptionToken(this);
    }
}



implementation CorralChoice_GVOptionToken0(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;
  var buyer_s739: Ref;
  var value_s739: int;
  var __ret_0_remainingTokensCount: int;
  var addr_s797: Ref;
  var optionsCount_s797: int;
  var __ret_0_executeOption: int;
  var _optionProgram_s818: Ref;
  var _name_s818: int;
  var _symbol_s818: int;
  var _TOKEN_LIMIT_s818: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
    havoc __ret_0_approve;
    havoc _optionProgram_s697;
    havoc _name_s697;
    havoc _symbol_s697;
    havoc _TOKEN_LIMIT_s697;
    havoc buyer_s739;
    havoc value_s739;
    havoc __ret_0_remainingTokensCount;
    havoc addr_s797;
    havoc optionsCount_s797;
    havoc __ret_0_executeOption;
    havoc _optionProgram_s818;
    havoc _name_s818;
    havoc _symbol_s818;
    havoc _TOKEN_LIMIT_s818;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
}



implementation CorralEntry_GVOptionToken0()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _optionProgram_s818: Ref;
  var _name_s818: int;
  var _symbol_s818: int;
  var _TOKEN_LIMIT_s818: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVOptionToken0;
    gas := gas - 53000;
    call GVOptionToken0_GVOptionToken0(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s818, _name_s818, _symbol_s818, _TOKEN_LIMIT_s818);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVOptionToken0(this);
    }
}



implementation CorralChoice_GVOptionToken1(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;
  var buyer_s739: Ref;
  var value_s739: int;
  var __ret_0_remainingTokensCount: int;
  var addr_s797: Ref;
  var optionsCount_s797: int;
  var __ret_0_executeOption: int;
  var _optionProgram_s839: Ref;
  var _name_s839: int;
  var _symbol_s839: int;
  var _TOKEN_LIMIT_s839: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
    havoc __ret_0_approve;
    havoc _optionProgram_s697;
    havoc _name_s697;
    havoc _symbol_s697;
    havoc _TOKEN_LIMIT_s697;
    havoc buyer_s739;
    havoc value_s739;
    havoc __ret_0_remainingTokensCount;
    havoc addr_s797;
    havoc optionsCount_s797;
    havoc __ret_0_executeOption;
    havoc _optionProgram_s839;
    havoc _name_s839;
    havoc _symbol_s839;
    havoc _TOKEN_LIMIT_s839;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
}



implementation CorralEntry_GVOptionToken1()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _optionProgram_s839: Ref;
  var _name_s839: int;
  var _symbol_s839: int;
  var _TOKEN_LIMIT_s839: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVOptionToken1;
    gas := gas - 53000;
    call GVOptionToken1_GVOptionToken1(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s839, _name_s839, _symbol_s839, _TOKEN_LIMIT_s839);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVOptionToken1(this);
    }
}



implementation CorralChoice_GVOptionToken2(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;
  var buyer_s739: Ref;
  var value_s739: int;
  var __ret_0_remainingTokensCount: int;
  var addr_s797: Ref;
  var optionsCount_s797: int;
  var __ret_0_executeOption: int;
  var _optionProgram_s860: Ref;
  var _name_s860: int;
  var _symbol_s860: int;
  var _TOKEN_LIMIT_s860: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
    havoc __ret_0_approve;
    havoc _optionProgram_s697;
    havoc _name_s697;
    havoc _symbol_s697;
    havoc _TOKEN_LIMIT_s697;
    havoc buyer_s739;
    havoc value_s739;
    havoc __ret_0_remainingTokensCount;
    havoc addr_s797;
    havoc optionsCount_s797;
    havoc __ret_0_executeOption;
    havoc _optionProgram_s860;
    havoc _name_s860;
    havoc _symbol_s860;
    havoc _TOKEN_LIMIT_s860;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(this, msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
}



implementation CorralEntry_GVOptionToken2()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _optionProgram_s860: Ref;
  var _name_s860: int;
  var _symbol_s860: int;
  var _TOKEN_LIMIT_s860: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVOptionToken2;
    gas := gas - 53000;
    call GVOptionToken2_GVOptionToken2(this, msgsender_MSG, msgvalue_MSG, _optionProgram_s860, _name_s860, _symbol_s860, _TOKEN_LIMIT_s860);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVOptionToken2(this);
    }
}



implementation CorralChoice_GVOptionProgram(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _ico_s1007: Ref;
  var _gvAgent_s1007: Ref;
  var _team_s1007: Ref;
  var __ret_0_getBalance: int;
  var __ret_1_getBalance: int;
  var __ret_2_getBalance: int;
  var buyer_s1135: Ref;
  var usdCents_s1135: int;
  var txHash_s1135: int;
  var executedTokens_s1135: int;
  var remainingCents_s1135: int;
  var buyer_s1210: Ref;
  var usdCents_s1210: int;
  var txHash_s1210: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s125: Ref;
  var _value_s125: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s251: Ref;
  var _to_s251: Ref;
  var _value_s251: int;
  var __ret_0_transferFrom: bool;
  var _spender_s296: Ref;
  var _value_s296: int;
  var __ret_0_approve: bool;
  var _optionProgram_s697: Ref;
  var _name_s697: int;
  var _symbol_s697: int;
  var _TOKEN_LIMIT_s697: int;
  var buyer_s739: Ref;
  var value_s739: int;
  var __ret_0_remainingTokensCount: int;
  var addr_s797: Ref;
  var optionsCount_s797: int;
  var __ret_0_executeOption: int;
  var _optionProgram_s818: Ref;
  var _name_s818: int;
  var _symbol_s818: int;
  var _TOKEN_LIMIT_s818: int;
  var _optionProgram_s839: Ref;
  var _name_s839: int;
  var _symbol_s839: int;
  var _TOKEN_LIMIT_s839: int;
  var _optionProgram_s860: Ref;
  var _name_s860: int;
  var _symbol_s860: int;
  var _TOKEN_LIMIT_s860: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _ico_s1007;
    havoc _gvAgent_s1007;
    havoc _team_s1007;
    havoc __ret_0_getBalance;
    havoc __ret_1_getBalance;
    havoc __ret_2_getBalance;
    havoc buyer_s1135;
    havoc usdCents_s1135;
    havoc txHash_s1135;
    havoc executedTokens_s1135;
    havoc remainingCents_s1135;
    havoc buyer_s1210;
    havoc usdCents_s1210;
    havoc txHash_s1210;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s125;
    havoc _value_s125;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s251;
    havoc _to_s251;
    havoc _value_s251;
    havoc __ret_0_transferFrom;
    havoc _spender_s296;
    havoc _value_s296;
    havoc __ret_0_approve;
    havoc _optionProgram_s697;
    havoc _name_s697;
    havoc _symbol_s697;
    havoc _TOKEN_LIMIT_s697;
    havoc buyer_s739;
    havoc value_s739;
    havoc __ret_0_remainingTokensCount;
    havoc addr_s797;
    havoc optionsCount_s797;
    havoc __ret_0_executeOption;
    havoc _optionProgram_s818;
    havoc _name_s818;
    havoc _symbol_s818;
    havoc _TOKEN_LIMIT_s818;
    havoc _optionProgram_s839;
    havoc _name_s839;
    havoc _symbol_s839;
    havoc _TOKEN_LIMIT_s839;
    havoc _optionProgram_s860;
    havoc _name_s860;
    havoc _symbol_s860;
    havoc _TOKEN_LIMIT_s860;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 27)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 26)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 25)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(gvOptionToken10_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(gvOptionToken20_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _to_s125, _value_s125);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _from_s251, _to_s251, _value_s251);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, _spender_s296, _value_s296);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, buyer_s739, value_s739);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokensCount := remainingTokensCount_GVOptionToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_executeOption := executeOption_GVOptionToken(gvOptionToken30_GVOptionProgram[this], msgsender_MSG, msgvalue_MSG, addr_s797, optionsCount_s797);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getBalance, __ret_1_getBalance, __ret_2_getBalance := getBalance_GVOptionProgram(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call executedTokens_s1135, remainingCents_s1135 := executeOptions_GVOptionProgram(this, msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionProgram(this, msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210);
    }
}



implementation CorralEntry_GVOptionProgram()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _ico_s1007: Ref;
  var _gvAgent_s1007: Ref;
  var _team_s1007: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == GVOptionProgram;
    gas := gas - 53000;
    call GVOptionProgram_GVOptionProgram(this, msgsender_MSG, msgvalue_MSG, _ico_s1007, _gvAgent_s1007, _team_s1007);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_GVOptionProgram(this);
    }
}



implementation CorralChoice_Initable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var token_s1630: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc token_s1630;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call init_Initable(this, msgsender_MSG, msgvalue_MSG, token_s1630);
    }
}



implementation CorralEntry_Initable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Initable;
    gas := gas - 53000;
    call Initable_Initable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Initable(this);
    }
}



implementation CorralChoice_ICO(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var buyer_s2157: Ref;
  var usdCents_s2157: int;
  var txHash_s2157: int;
  var _team_s1744: Ref;
  var _gvAgent_s1744: Ref;
  var _migrationMaster_s1744: Ref;
  var _teamAllocator_s1744: Ref;
  var _fund_s1994: Ref;
  var _bounty_s1994: Ref;
  var buyer_s2026: Ref;
  var usdCents_s2026: int;
  var txHash_s2026: int;
  var __ret_0_buyTokens: int;
  var buyer_s2125: Ref;
  var usdCents_s2125: int;
  var txHash_s2125: int;
  var __ret_0_buyTokensByOptions: int;
  var _owner_s137: Ref;
  var balance_s137: int;
  var _to_s477: Ref;
  var _value_s477: int;
  var __ret_0_transfer: bool;
  var _owner_s312: Ref;
  var _spender_s312: Ref;
  var remaining_s312: int;
  var _from_s501: Ref;
  var _to_s501: Ref;
  var _value_s501: int;
  var __ret_0_transferFrom: bool;
  var _spender_s522: Ref;
  var _value_s522: int;
  var __ret_0_approve: bool;
  var _ico_s386: Ref;
  var _migrationMaster_s386: Ref;
  var holder_s433: Ref;
  var value_s433: int;
  var value_s586: int;
  var _agent_s611: Ref;
  var _master_s636: Ref;
  var _ico_s1007: Ref;
  var _gvAgent_s1007: Ref;
  var _team_s1007: Ref;
  var __ret_0_getBalance: int;
  var __ret_1_getBalance: int;
  var __ret_2_getBalance: int;
  var buyer_s1135: Ref;
  var usdCents_s1135: int;
  var txHash_s1135: int;
  var executedTokens_s1135: int;
  var remainingCents_s1135: int;
  var buyer_s1210: Ref;
  var usdCents_s1210: int;
  var txHash_s1210: int;
  var token_s1630: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc buyer_s2157;
    havoc usdCents_s2157;
    havoc txHash_s2157;
    havoc _team_s1744;
    havoc _gvAgent_s1744;
    havoc _migrationMaster_s1744;
    havoc _teamAllocator_s1744;
    havoc _fund_s1994;
    havoc _bounty_s1994;
    havoc buyer_s2026;
    havoc usdCents_s2026;
    havoc txHash_s2026;
    havoc __ret_0_buyTokens;
    havoc buyer_s2125;
    havoc usdCents_s2125;
    havoc txHash_s2125;
    havoc __ret_0_buyTokensByOptions;
    havoc _owner_s137;
    havoc balance_s137;
    havoc _to_s477;
    havoc _value_s477;
    havoc __ret_0_transfer;
    havoc _owner_s312;
    havoc _spender_s312;
    havoc remaining_s312;
    havoc _from_s501;
    havoc _to_s501;
    havoc _value_s501;
    havoc __ret_0_transferFrom;
    havoc _spender_s522;
    havoc _value_s522;
    havoc __ret_0_approve;
    havoc _ico_s386;
    havoc _migrationMaster_s386;
    havoc holder_s433;
    havoc value_s433;
    havoc value_s586;
    havoc _agent_s611;
    havoc _master_s636;
    havoc _ico_s1007;
    havoc _gvAgent_s1007;
    havoc _team_s1007;
    havoc __ret_0_getBalance;
    havoc __ret_1_getBalance;
    havoc __ret_2_getBalance;
    havoc buyer_s1135;
    havoc usdCents_s1135;
    havoc txHash_s1135;
    havoc executedTokens_s1135;
    havoc remainingCents_s1135;
    havoc buyer_s1210;
    havoc usdCents_s1210;
    havoc txHash_s1210;
    havoc token_s1630;
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
    assume DType[msgsender_MSG] != MigrationAgent;
    assume DType[msgsender_MSG] != GVToken;
    assume DType[msgsender_MSG] != GVOptionToken;
    assume DType[msgsender_MSG] != GVOptionToken0;
    assume DType[msgsender_MSG] != GVOptionToken1;
    assume DType[msgsender_MSG] != GVOptionToken2;
    assume DType[msgsender_MSG] != GVOptionProgram;
    assume DType[msgsender_MSG] != Initable;
    assume DType[msgsender_MSG] != ICO;
    Alloc[msgsender_MSG] := true;
    if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call init_Initable(teamAllocator_ICO[this], msgsender_MSG, msgvalue_MSG, token_s1630);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getBalance, __ret_1_getBalance, __ret_2_getBalance := getBalance_GVOptionProgram(optionProgram_ICO[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call executedTokens_s1135, remainingCents_s1135 := executeOptions_GVOptionProgram(optionProgram_ICO[this], msgsender_MSG, msgvalue_MSG, buyer_s1135, usdCents_s1135, txHash_s1135);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_GVOptionProgram(optionProgram_ICO[this], msgsender_MSG, msgvalue_MSG, buyer_s1210, usdCents_s1210, txHash_s1210);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s137 := balanceOf_BasicToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _owner_s137);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _to_s477, _value_s477);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s312 := allowance_StandardToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _owner_s312, _spender_s312);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _from_s501, _to_s501, _value_s501);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _spender_s522, _value_s522);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call mint_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, holder_s433, value_s433);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unfreeze_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call migrate_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, value_s586);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setMigrationAgent_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _agent_s611);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setMigrationMaster_GVToken(gvToken_ICO[this], msgsender_MSG, msgvalue_MSG, _master_s636);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call buyOptions_ICO(this, msgsender_MSG, msgvalue_MSG, buyer_s2157, usdCents_s2157, txHash_s2157);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call initOptionProgram_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call startOptionsSelling_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call startIcoForOptionsHolders_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call startIco_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pauseIco_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call resumeIco_ICO(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finishIco_ICO(this, msgsender_MSG, msgvalue_MSG, _fund_s1994, _bounty_s1994);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_buyTokens := buyTokens_ICO(this, msgsender_MSG, msgvalue_MSG, buyer_s2026, usdCents_s2026, txHash_s2026);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_buyTokensByOptions := buyTokensByOptions_ICO(this, msgsender_MSG, msgvalue_MSG, buyer_s2125, usdCents_s2125, txHash_s2125);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _team_s1744: Ref;
  var _gvAgent_s1744: Ref;
  var _migrationMaster_s1744: Ref;
  var _teamAllocator_s1744: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ICO;
    gas := gas - 53000;
    call ICO_ICO(this, msgsender_MSG, msgvalue_MSG, _team_s1744, _gvAgent_s1744, _migrationMaster_s1744, _teamAllocator_s1744);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ICO(this);
    }
}


