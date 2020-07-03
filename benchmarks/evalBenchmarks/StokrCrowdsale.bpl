// DUMMY PROPERTY
// LTLProperty: <>(finished(StokrCrowdsale.refundInvestor,  (msg.value == 0)))

// Spec L1
// #LTLVariables: user:Ref
// #LTLFairness: <>(finished(MintingCrowdsale.buyTokens, (user == msg.sender))) && <>(finished(StokrCrowdsale.claimRefund, (msg.sender == user)))
// #LTLProperty: []((finished(StokrCrowdsale.finalize)) ==> <>(finished(send(from, to, amt), (to == user && amt == fsum(MintingCrowdsale.buyTokens, 2, (msg.sender == user))))))

// Spec L2
// LTLVariables: ben:Ref
// LTLFairness: <>(finished(MintingCrowdsale.buyTokens)) && <>(finished(StokrCrowdsale.finalize, ben == this.companyWallet))
// LTLProperty: [](finished(*, MintingCrowdsale.hasClosed() == true && StokrCrowdsale.goalReached() == true && this.isFinalized == false) ==> <>(finished(send(from, to, amt), to == ben && amt == fsum(MintingCrowdsale.buyTokens, 2))))

type Ref = int;
type ContractName = int;
var null: Ref;
var SafeMath: ContractName;
var Ownable: ContractName;
var Whitelist: ContractName;
var Whitelisted: ContractName;
var ERC20: ContractName;
var ProfitSharing: ContractName;
var ProfitSharing.InvestorAccount: ContractName;
var MintableToken: ContractName;
var RateSource: ContractName;
var MintingCrowdsale: ContractName;
var TokenRecoverable: ContractName;
var StokrToken: ContractName;
var StokrCrowdsale: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() returns (ret: [int]int);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() returns (ret: [Ref]bool);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() returns (ret: [int]bool);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() returns (ret: [Ref]Ref);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() returns (ret: [int]Ref);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_bool: [Ref][Ref]bool;
var sum: [Ref]int;
var M_Ref_Ref: [Ref][Ref]Ref;
var M_Ref_int: [Ref][Ref]int;
var M_int_Ref: [Ref][int]Ref;
var M_int_int: [Ref][int]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} ProfitSharing.InvestorAccount_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, balance: int, lastTotalProfits: int, profitShare: int);
modifies balance_ProfitSharing.InvestorAccount;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int) returns (__ret_0_: int);
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s45: int, b_s45: int) returns (__ret_0_: int);
procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s78: int, b_s78: int) returns (__ret_0_: int);
procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int);
var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;
var {:access "this.newOwner=newOwner_Ownable[this]"} newOwner_Ownable: [Ref]Ref;
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
assume ((revert) || ((gas) < (0)));
} else {
call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferOwnershipUnsafe_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies owner_Ownable;
modifies newOwner_Ownable;
implementation transferOwnershipUnsafe_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call transferOwnershipUnsafe_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
assume ((revert) || ((gas) < (0)));
} else {
call transferOwnershipUnsafe_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} claimOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies owner_Ownable;
modifies newOwner_Ownable;
implementation claimOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call claimOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call claimOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s210: Ref);
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:inline 1} Whitelist_Whitelist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies admins_Whitelist;
modifies M_Ref_bool;
modifies isWhitelisted_Whitelist;
modifies Alloc;
procedure {:inline 1} Whitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies admins_Whitelist;
modifies M_Ref_bool;
modifies isWhitelisted_Whitelist;
modifies Alloc;
implementation Whitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call Whitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Whitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.admins[i0]=M_Ref_bool[admins_Whitelist[this]][i0]"} {:sum "sum(this.admins)=sum[admins_Whitelist[this]]"} admins_Whitelist: [Ref]Ref;
var {:access "this.isWhitelisted[i0]=M_Ref_bool[isWhitelisted_Whitelist[this]][i0]"} {:sum "sum(this.isWhitelisted)=sum[isWhitelisted_Whitelist[this]]"} isWhitelisted_Whitelist: [Ref]Ref;
procedure {:public} {:inline 1} addAdmin_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_bool;
implementation addAdmin_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call addAdmin_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s287);
assume ((revert) || ((gas) < (0)));
} else {
call addAdmin_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _admin_s287);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} removeAdmin_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_bool;
implementation removeAdmin_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call removeAdmin_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s319);
assume ((revert) || ((gas) < (0)));
} else {
call removeAdmin_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _admin_s319);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_bool;
implementation addToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call addToWhitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _investors_s365);
assume ((revert) || ((gas) < (0)));
} else {
call addToWhitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _investors_s365);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} removeFromWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_bool;
implementation removeFromWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call removeFromWhitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _investors_s410);
assume ((revert) || ((gas) < (0)));
} else {
call removeFromWhitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _investors_s410);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.whitelist=whitelist_Whitelisted[this]"} whitelist_Whitelisted: [Ref]Ref;
procedure {:inline 1} Whitelisted_Whitelisted_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref);
modifies Balance;
modifies revert;
modifies whitelist_Whitelisted;
procedure {:constructor} {:public} {:inline 1} Whitelisted_Whitelisted(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
implementation Whitelisted_Whitelisted(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call Whitelisted_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
assume ((revert) || ((gas) < (0)));
} else {
call Whitelisted_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setWhitelist_Whitelisted(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies whitelist_Whitelisted;
implementation setWhitelist_Whitelisted(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call setWhitelist_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
assume ((revert) || ((gas) < (0)));
} else {
call setWhitelist_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s519: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s528: Ref, _spender_s528: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s537: Ref, _value_s537: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s546: Ref, _value_s546: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s557: Ref, _to_s557: Ref, _value_s557: int) returns (__ret_0_: bool);
var balance_ProfitSharing.InvestorAccount: [Ref]int;
var lastTotalProfits_ProfitSharing.InvestorAccount: [Ref]int;
var profitShare_ProfitSharing.InvestorAccount: [Ref]int;
var {:access "this.accounts[i0]=M_Ref_Ref[accounts_ProfitSharing[this]][i0]"} {:sum "sum(this.accounts)=sum[accounts_ProfitSharing[this]]"} accounts_ProfitSharing: [Ref]Ref;
var {:access "this.profitDepositor=profitDepositor_ProfitSharing[this]"} profitDepositor_ProfitSharing: [Ref]Ref;
var {:access "this.profitDistributor=profitDistributor_ProfitSharing[this]"} profitDistributor_ProfitSharing: [Ref]Ref;
var {:access "this.totalProfits=totalProfits_ProfitSharing[this]"} totalProfits_ProfitSharing: [Ref]int;
var {:access "this.totalSupplyIsFixed=totalSupplyIsFixed_ProfitSharing[this]"} totalSupplyIsFixed_ProfitSharing: [Ref]bool;
var {:access "this.totalSupply_=totalSupply__ProfitSharing[this]"} totalSupply__ProfitSharing: [Ref]int;
procedure {:inline 1} ProfitSharing_ProfitSharing_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref);
modifies Balance;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies Alloc;
modifies revert;
procedure {:constructor} {:public} {:inline 1} ProfitSharing_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies Alloc;
implementation ProfitSharing_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call ProfitSharing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666, _profitDistributor_s666);
assume ((revert) || ((gas) < (0)));
} else {
call ProfitSharing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666, _profitDistributor_s666);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies totalProfits_ProfitSharing;
procedure {:public} {:inline 1} setProfitDepositor_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies profitDepositor_ProfitSharing;
implementation setProfitDepositor_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call setProfitDepositor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
assume ((revert) || ((gas) < (0)));
} else {
call setProfitDepositor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setProfitDistributor_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies profitDistributor_ProfitSharing;
implementation setProfitDistributor_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call setProfitDistributor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
assume ((revert) || ((gas) < (0)));
} else {
call setProfitDistributor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} depositProfit_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies totalProfits_ProfitSharing;
implementation depositProfit_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call depositProfit_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call depositProfit_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} profitShareOwing_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation profitShareOwing_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := profitShareOwing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s806);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := profitShareOwing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s806);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} updateProfitShare_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
implementation updateProfitShare_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
assume ((revert) || ((gas) < (0)));
} else {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawProfitShare_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation withdrawProfitShare_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawProfitShareTo_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation withdrawProfitShareTo_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call withdrawProfitShareTo_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
assume ((revert) || ((gas) < (0)));
} else {
call withdrawProfitShareTo_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawProfitShares_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation withdrawProfitShares_ProfitSharing(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call withdrawProfitShares_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investors_s893);
assume ((revert) || ((gas) < (0)));
} else {
call withdrawProfitShares_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investors_s893);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _withdrawProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s931: Ref, _beneficiary_s931: Ref);
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
procedure {:inline 1} MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
implementation MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.minter=minter_MintableToken[this]"} minter_MintableToken: [Ref]Ref;
var {:access "this.numberOfInvestors=numberOfInvestors_MintableToken[this]"} numberOfInvestors_MintableToken: [Ref]int;
procedure {:public} {:inline 1} setMinter_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies minter_MintableToken;
implementation setMinter_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call setMinter_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _minter_s1004);
assume ((revert) || ((gas) < (0)));
} else {
call setMinter_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _minter_s1004);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} mint_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
implementation mint_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call mint_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1063, _amount_s1063);
assume ((revert) || ((gas) < (0)));
} else {
call mint_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1063, _amount_s1063);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies totalSupplyIsFixed_ProfitSharing;
implementation finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call finishMinting_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call finishMinting_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} RateSource_RateSource_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} RateSource_RateSource(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
implementation RateSource_RateSource(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call RateSource_RateSource__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call RateSource_RateSource__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} etherRate_RateSource(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
var {:access "this.MAXOFFERINGPERIOD=MAXOFFERINGPERIOD_MintingCrowdsale[this]"} MAXOFFERINGPERIOD_MintingCrowdsale: [Ref]int;
var {:access "this.rateSource=rateSource_MintingCrowdsale[this]"} rateSource_MintingCrowdsale: [Ref]Ref;
var {:access "this.token=token_MintingCrowdsale[this]"} token_MintingCrowdsale: [Ref]Ref;
var {:access "this.tokenCapOfPublicSale=tokenCapOfPublicSale_MintingCrowdsale[this]"} tokenCapOfPublicSale_MintingCrowdsale: [Ref]int;
var {:access "this.tokenCapOfPrivateSale=tokenCapOfPrivateSale_MintingCrowdsale[this]"} tokenCapOfPrivateSale_MintingCrowdsale: [Ref]int;
var {:access "this.tokenRemainingForPublicSale=tokenRemainingForPublicSale_MintingCrowdsale[this]"} tokenRemainingForPublicSale_MintingCrowdsale: [Ref]int;
var {:access "this.tokenRemainingForPrivateSale=tokenRemainingForPrivateSale_MintingCrowdsale[this]"} tokenRemainingForPrivateSale_MintingCrowdsale: [Ref]int;
var {:access "this.tokenPrice=tokenPrice_MintingCrowdsale[this]"} tokenPrice_MintingCrowdsale: [Ref]int;
var {:access "this.tokenPurchaseMinimum=tokenPurchaseMinimum_MintingCrowdsale[this]"} tokenPurchaseMinimum_MintingCrowdsale: [Ref]int;
var {:access "this.tokenPurchaseLimit=tokenPurchaseLimit_MintingCrowdsale[this]"} tokenPurchaseLimit_MintingCrowdsale: [Ref]int;
var {:access "this.tokenPurchased[i0]=M_Ref_int[tokenPurchased_MintingCrowdsale[this]][i0]"} {:sum "sum(this.tokenPurchased)=sum[tokenPurchased_MintingCrowdsale[this]]"} tokenPurchased_MintingCrowdsale: [Ref]Ref;
var {:access "this.openingTime=openingTime_MintingCrowdsale[this]"} openingTime_MintingCrowdsale: [Ref]int;
var {:access "this.closingTime=closingTime_MintingCrowdsale[this]"} closingTime_MintingCrowdsale: [Ref]int;
var {:access "this.limitEndTime=limitEndTime_MintingCrowdsale[this]"} limitEndTime_MintingCrowdsale: [Ref]int;
var {:access "this.companyWallet=companyWallet_MintingCrowdsale[this]"} companyWallet_MintingCrowdsale: [Ref]Ref;
var {:access "this.tokenReservePerMill=tokenReservePerMill_MintingCrowdsale[this]"} tokenReservePerMill_MintingCrowdsale: [Ref]int;
var {:access "this.reserveAccount=reserveAccount_MintingCrowdsale[this]"} reserveAccount_MintingCrowdsale: [Ref]Ref;
var {:access "this.isFinalized=isFinalized_MintingCrowdsale[this]"} isFinalized_MintingCrowdsale: [Ref]bool;
procedure {:inline 1} MintingCrowdsale_MintingCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref);
modifies Balance;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies openingTime_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies revert;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} MintingCrowdsale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies openingTime_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies Alloc;
implementation MintingCrowdsale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call MintingCrowdsale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rateSource_s1364, _token_s1364, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364, _tokenPurchaseMinimum_s1364, _tokenPurchaseLimit_s1364, _tokenReservePerMill_s1364, _tokenPrice_s1364, _openingTime_s1364, _closingTime_s1364, _limitEndTime_s1364, _companyWallet_s1364, _reserveAccount_s1364);
assume ((revert) || ((gas) < (0)));
} else {
call MintingCrowdsale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rateSource_s1364, _token_s1364, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364, _tokenPurchaseMinimum_s1364, _tokenPurchaseLimit_s1364, _tokenReservePerMill_s1364, _tokenPrice_s1364, _openingTime_s1364, _closingTime_s1364, _limitEndTime_s1364, _companyWallet_s1364, _reserveAccount_s1364);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies totalProfits_ProfitSharing;
procedure {:public} {:inline 1} distributeTokensViaPublicSale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
implementation distributeTokensViaPublicSale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call distributeTokensViaPublicSale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1390, amounts_s1390);
assume ((revert) || ((gas) < (0)));
} else {
call distributeTokensViaPublicSale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1390, amounts_s1390);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} distributeTokensViaPrivateSale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
implementation distributeTokensViaPrivateSale_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call distributeTokensViaPrivateSale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1409, amounts_s1409);
assume ((revert) || ((gas) < (0)));
} else {
call distributeTokensViaPrivateSale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1409, amounts_s1409);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} hasClosed_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation hasClosed_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isOpen_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation isOpen_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := isOpen_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isOpen_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} timeRemaining_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation timeRemaining_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := timeRemaining_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := timeRemaining_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} tokenSold_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation tokenSold_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := tokenSold_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := tokenSold_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies gas;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalProfits_ProfitSharing;
implementation buyTokens_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call buyTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} changeClosingTime_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies closingTime_MintingCrowdsale;
implementation changeClosingTime_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call changeClosingTime_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _newClosingTime_s1615);
assume ((revert) || ((gas) < (0)));
} else {
call changeClosingTime_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _newClosingTime_s1615);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finalize_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies totalSupplyIsFixed_ProfitSharing;
implementation finalize_MintingCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call finalize_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call finalize_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} distributeTokens_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenRemaining_s1755: int, beneficiaries_s1755: Ref, amounts_s1755: Ref, isPublicSale_s1755: bool) returns (__ret_0_: int);
modifies revert;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
procedure {:inline 1} forwardFunds_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
var {:access "this.tokenRecoverer=tokenRecoverer_TokenRecoverable[this]"} tokenRecoverer_TokenRecoverable: [Ref]Ref;
procedure {:inline 1} TokenRecoverable_TokenRecoverable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref);
modifies Balance;
modifies tokenRecoverer_TokenRecoverable;
modifies revert;
procedure {:constructor} {:public} {:inline 1} TokenRecoverable_TokenRecoverable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies tokenRecoverer_TokenRecoverable;
implementation TokenRecoverable_TokenRecoverable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call TokenRecoverable_TokenRecoverable__fail(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
assume ((revert) || ((gas) < (0)));
} else {
call TokenRecoverable_TokenRecoverable__success(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setTokenRecoverer_TokenRecoverable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRecoverer_TokenRecoverable;
implementation setTokenRecoverer_TokenRecoverable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call setTokenRecoverer_TokenRecoverable__fail(this, msgsender_MSG, msgvalue_MSG, _newTokenRecoverer_s1839);
assume ((revert) || ((gas) < (0)));
} else {
call setTokenRecoverer_TokenRecoverable__success(this, msgsender_MSG, msgvalue_MSG, _newTokenRecoverer_s1839);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} recoverToken_TokenRecoverable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1846: Ref, _newAddress_s1846: Ref);
var {:access "this.name=name_StokrToken[this]"} name_StokrToken: [Ref]int;
var {:access "this.symbol=symbol_StokrToken[this]"} symbol_StokrToken: [Ref]int;
var {:access "this.decimals=decimals_StokrToken[this]"} decimals_StokrToken: [Ref]int;
var {:access "this.allowance_[i0][i1]=M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][i0]][i1]"} {:sum "sum(this.allowance_)=sum[allowance__StokrToken[this]]"} allowance__StokrToken: [Ref]Ref;
procedure {:inline 1} StokrToken_StokrToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref);
modifies Balance;
modifies name_StokrToken;
modifies symbol_StokrToken;
modifies decimals_StokrToken;
modifies allowance__StokrToken;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} StokrToken_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies Alloc;
modifies whitelist_Whitelisted;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies tokenRecoverer_TokenRecoverable;
modifies name_StokrToken;
modifies symbol_StokrToken;
modifies decimals_StokrToken;
modifies allowance__StokrToken;
modifies M_Ref_int;
implementation StokrToken_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call StokrToken_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1901, _symbol_s1901, _whitelist_s1901, _profitDepositor_s1901, _profitDistributor_s1901, _tokenRecoverer_s1901);
assume ((revert) || ((gas) < (0)));
} else {
call StokrToken_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _name_s1901, _symbol_s1901, _whitelist_s1901, _profitDepositor_s1901, _profitDistributor_s1901, _tokenRecoverer_s1901);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} destruct_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation destruct_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call destruct_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call destruct_StokrToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} recoverToken_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
implementation recoverToken_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call recoverToken_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1983, _newAddress_s1983);
assume ((revert) || ((gas) < (0)));
} else {
call recoverToken_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1983, _newAddress_s1983);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation totalSupply_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := totalSupply_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := totalSupply_StokrToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation balanceOf_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := balanceOf_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s2004);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _investor_s2004);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} allowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
implementation allowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := allowance_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s2020, _spender_s2020);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _investor_s2020, _spender_s2020);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
implementation approve_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := approve_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s2037, _value_s2037);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s2037, _value_s2037);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseAllowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
implementation increaseAllowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := increaseAllowance_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s2076, _amount_s2076);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseAllowance_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s2076, _amount_s2076);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseAllowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
implementation decreaseAllowance_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := decreaseAllowance_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s2113, _amount_s2113);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseAllowance_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s2113, _amount_s2113);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} canTransfer_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation canTransfer_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := canTransfer_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2156, _to_s2156, _value_s2156);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := canTransfer_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s2156, _to_s2156, _value_s2156);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} canTransferFrom_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
implementation canTransferFrom_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := canTransferFrom_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s2184, _from_s2184, _to_s2184, _value_s2184);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := canTransferFrom_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s2184, _from_s2184, _to_s2184, _value_s2184);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
implementation transfer_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := transfer_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s2201, _value_s2201);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s2201, _value_s2201);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferFrom_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
modifies Balance;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
implementation transferFrom_StokrToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := transferFrom_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2246, _to_s2246, _value_s2246);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s2246, _to_s2246, _value_s2246);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _approve_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2279: Ref, _spender_s2279: Ref, _value_s2279: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
procedure {:inline 1} _transfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2360: Ref, _to_s2360: Ref, _value_s2360: int) returns (__ret_0_: bool);
modifies revert;
modifies Balance;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
var {:access "this.tokenGoal=tokenGoal_StokrCrowdsale[this]"} tokenGoal_StokrCrowdsale: [Ref]int;
var {:access "this.investments[i0]=M_Ref_int[investments_StokrCrowdsale[this]][i0]"} {:sum "sum(this.investments)=sum[investments_StokrCrowdsale[this]]"} investments_StokrCrowdsale: [Ref]Ref;
procedure {:inline 1} StokrCrowdsale_StokrCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref);
modifies Balance;
modifies tokenGoal_StokrCrowdsale;
modifies investments_StokrCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} StokrCrowdsale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies openingTime_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies Alloc;
modifies tokenGoal_StokrCrowdsale;
modifies investments_StokrCrowdsale;
implementation StokrCrowdsale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call StokrCrowdsale_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenGoal_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
assume ((revert) || ((gas) < (0)));
} else {
call StokrCrowdsale_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenGoal_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} goalReached_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
implementation goalReached_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call __ret_0_ := goalReached_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := goalReached_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} distributeRefunds_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies sum;
modifies M_Ref_int;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation distributeRefunds_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call distributeRefunds_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _investors_s2473);
assume ((revert) || ((gas) < (0)));
} else {
call distributeRefunds_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _investors_s2473);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} claimRefund_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies sum;
modifies M_Ref_int;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
implementation claimRefund_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call claimRefund_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call claimRefund_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finalize_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies gas;
modifies isFinalized_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies totalSupplyIsFixed_ProfitSharing;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
implementation finalize_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call finalize_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call finalize_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} distributeTokensViaPublicSale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
implementation distributeTokensViaPublicSale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call distributeTokensViaPublicSale_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2526, amounts_s2526);
assume ((revert) || ((gas) < (0)));
} else {
call distributeTokensViaPublicSale_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2526, amounts_s2526);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} distributeTokensViaPrivateSale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
implementation distributeTokensViaPrivateSale_StokrCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
call distributeTokensViaPrivateSale_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2546, amounts_s2546);
assume ((revert) || ((gas) < (0)));
} else {
call distributeTokensViaPrivateSale_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2546, amounts_s2546);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} forwardFunds_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} refundInvestor_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2620: Ref);
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies revert;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies gas;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s436: Ref);
modifies revert;
procedure {:inline 1} onlyProfitDepositor_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyProfitDistributor_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyWhenTotalSupplyIsFixed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyTokenRecoverer_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeMath();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_Ownable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies owner_Ownable;
procedure CorralEntry_Ownable();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies Balance;
modifies owner_Ownable;
procedure CorralChoice_Whitelist(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies M_Ref_bool;
modifies owner_Ownable;
procedure CorralEntry_Whitelist();
modifies gas;
modifies Alloc;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies admins_Whitelist;
modifies M_Ref_bool;
modifies isWhitelisted_Whitelist;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure CorralChoice_Whitelisted(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies M_Ref_bool;
modifies whitelist_Whitelisted;
modifies owner_Ownable;
procedure CorralEntry_Whitelisted();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies M_Ref_bool;
modifies whitelist_Whitelisted;
modifies Balance;
modifies owner_Ownable;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_ERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_ProfitSharing(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies owner_Ownable;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure CorralEntry_ProfitSharing();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies owner_Ownable;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
procedure CorralChoice_MintableToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies owner_Ownable;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
procedure CorralEntry_MintableToken();
modifies gas;
modifies Alloc;
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
procedure CorralChoice_RateSource(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_RateSource();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_MintingCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies sum;
modifies M_Ref_int;
modifies closingTime_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies owner_Ownable;
procedure CorralEntry_MintingCrowdsale();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies sum;
modifies M_Ref_int;
modifies closingTime_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies owner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies openingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
procedure CorralChoice_TokenRecoverable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies tokenRecoverer_TokenRecoverable;
modifies owner_Ownable;
procedure CorralEntry_TokenRecoverable();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies tokenRecoverer_TokenRecoverable;
modifies Balance;
modifies owner_Ownable;
procedure CorralChoice_StokrToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies tokenRecoverer_TokenRecoverable;
modifies owner_Ownable;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
procedure CorralEntry_StokrToken();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies whitelist_Whitelisted;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies Balance;
modifies totalProfits_ProfitSharing;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies tokenRecoverer_TokenRecoverable;
modifies owner_Ownable;
modifies accounts_ProfitSharing;
modifies name_StokrToken;
modifies symbol_StokrToken;
modifies decimals_StokrToken;
modifies allowance__StokrToken;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
procedure CorralChoice_StokrCrowdsale(this: Ref);
modifies profitDistributor_ProfitSharing;
modifies minter_MintableToken;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies newOwner_Ownable;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies owner_Ownable;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies isFinalized_MintingCrowdsale;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalProfits_ProfitSharing;
procedure main();
modifies profitDistributor_ProfitSharing;
modifies minter_MintableToken;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies whitelist_Whitelisted;
modifies profitDepositor_ProfitSharing;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies now;
modifies newOwner_Ownable;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies owner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies openingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies tokenGoal_StokrCrowdsale;
modifies investments_StokrCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalProfits_ProfitSharing;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_bool: [Ref][Ref]bool;
var __tmp__sum: [Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__M_int_Ref: [Ref][int]Ref;
var __tmp__M_int_int: [Ref][int]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__owner_Ownable: [Ref]Ref;
var __tmp__newOwner_Ownable: [Ref]Ref;
var __tmp__admins_Whitelist: [Ref]Ref;
var __tmp__isWhitelisted_Whitelist: [Ref]Ref;
var __tmp__whitelist_Whitelisted: [Ref]Ref;
var __tmp__balance_ProfitSharing.InvestorAccount: [Ref]int;
var __tmp__lastTotalProfits_ProfitSharing.InvestorAccount: [Ref]int;
var __tmp__profitShare_ProfitSharing.InvestorAccount: [Ref]int;
var __tmp__accounts_ProfitSharing: [Ref]Ref;
var __tmp__profitDepositor_ProfitSharing: [Ref]Ref;
var __tmp__profitDistributor_ProfitSharing: [Ref]Ref;
var __tmp__totalProfits_ProfitSharing: [Ref]int;
var __tmp__totalSupplyIsFixed_ProfitSharing: [Ref]bool;
var __tmp__totalSupply__ProfitSharing: [Ref]int;
var __tmp__minter_MintableToken: [Ref]Ref;
var __tmp__numberOfInvestors_MintableToken: [Ref]int;
var __tmp__MAXOFFERINGPERIOD_MintingCrowdsale: [Ref]int;
var __tmp__rateSource_MintingCrowdsale: [Ref]Ref;
var __tmp__token_MintingCrowdsale: [Ref]Ref;
var __tmp__tokenCapOfPublicSale_MintingCrowdsale: [Ref]int;
var __tmp__tokenCapOfPrivateSale_MintingCrowdsale: [Ref]int;
var __tmp__tokenRemainingForPublicSale_MintingCrowdsale: [Ref]int;
var __tmp__tokenRemainingForPrivateSale_MintingCrowdsale: [Ref]int;
var __tmp__tokenPrice_MintingCrowdsale: [Ref]int;
var __tmp__tokenPurchaseMinimum_MintingCrowdsale: [Ref]int;
var __tmp__tokenPurchaseLimit_MintingCrowdsale: [Ref]int;
var __tmp__tokenPurchased_MintingCrowdsale: [Ref]Ref;
var __tmp__openingTime_MintingCrowdsale: [Ref]int;
var __tmp__closingTime_MintingCrowdsale: [Ref]int;
var __tmp__limitEndTime_MintingCrowdsale: [Ref]int;
var __tmp__companyWallet_MintingCrowdsale: [Ref]Ref;
var __tmp__tokenReservePerMill_MintingCrowdsale: [Ref]int;
var __tmp__reserveAccount_MintingCrowdsale: [Ref]Ref;
var __tmp__isFinalized_MintingCrowdsale: [Ref]bool;
var __tmp__tokenRecoverer_TokenRecoverable: [Ref]Ref;
var __tmp__name_StokrToken: [Ref]int;
var __tmp__symbol_StokrToken: [Ref]int;
var __tmp__decimals_StokrToken: [Ref]int;
var __tmp__allowance__StokrToken: [Ref]Ref;
var __tmp__tokenGoal_StokrCrowdsale: [Ref]int;
var __tmp__investments_StokrCrowdsale: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} ProfitSharing.InvestorAccount_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, balance: int, lastTotalProfits: int, profitShare: int);
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int) returns (__ret_0_: int);
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s45: int, b_s45: int) returns (__ret_0_: int);
procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s78: int, b_s78: int) returns (__ret_0_: int);
procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int);
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref);
modifies revert;
modifies newOwner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref);
modifies revert;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} transferOwnershipUnsafe_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref);
modifies revert;
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:inline 1} transferOwnershipUnsafe_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref);
modifies revert;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} claimOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:inline 1} claimOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s210: Ref);
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} Whitelist_Whitelist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__admins_Whitelist;
modifies __tmp__M_Ref_bool;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__Alloc;
procedure {:inline 1} Whitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies admins_Whitelist;
modifies M_Ref_bool;
modifies isWhitelisted_Whitelist;
modifies Alloc;
procedure {:inline 1} Whitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__M_Ref_bool;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__Alloc;
procedure {:inline 1} addAdmin_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addAdmin_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} removeAdmin_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} removeAdmin_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} addToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref);
modifies M_Ref_bool;
modifies revert;
procedure {:inline 1} addToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref);
modifies __tmp__M_Ref_bool;
modifies revert;
procedure {:inline 1} removeFromWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref);
modifies M_Ref_bool;
modifies revert;
procedure {:inline 1} removeFromWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref);
modifies __tmp__M_Ref_bool;
modifies revert;
procedure {:inline 1} Whitelisted_Whitelisted_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__whitelist_Whitelisted;
procedure {:constructor} {:inline 1} Whitelisted_Whitelisted__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies revert;
modifies whitelist_Whitelisted;
procedure {:constructor} {:inline 1} Whitelisted_Whitelisted__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies revert;
modifies __tmp__whitelist_Whitelisted;
procedure {:inline 1} setWhitelist_Whitelisted__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref);
modifies revert;
modifies whitelist_Whitelisted;
procedure {:inline 1} setWhitelist_Whitelisted__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref);
modifies revert;
modifies __tmp__whitelist_Whitelisted;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ProfitSharing_ProfitSharing_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref);
modifies __tmp__Balance;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__M_Ref_Ref;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Alloc;
modifies revert;
procedure {:constructor} {:inline 1} ProfitSharing_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies Alloc;
modifies revert;
procedure {:constructor} {:inline 1} ProfitSharing_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__M_Ref_Ref;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} FallbackMethod_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__totalProfits_ProfitSharing;
procedure {:inline 1} setProfitDepositor_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref);
modifies revert;
modifies profitDepositor_ProfitSharing;
procedure {:inline 1} setProfitDepositor_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref);
modifies revert;
modifies __tmp__profitDepositor_ProfitSharing;
procedure {:inline 1} setProfitDistributor_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref);
modifies revert;
modifies profitDistributor_ProfitSharing;
procedure {:inline 1} setProfitDistributor_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref);
modifies revert;
modifies __tmp__profitDistributor_ProfitSharing;
procedure {:inline 1} depositProfit_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies totalProfits_ProfitSharing;
procedure {:inline 1} depositProfit_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__totalProfits_ProfitSharing;
procedure {:inline 1} profitShareOwing_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int);
procedure {:inline 1} profitShareOwing_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int);
procedure {:inline 1} updateProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref);
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies revert;
procedure {:inline 1} updateProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref);
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies revert;
procedure {:inline 1} withdrawProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} withdrawProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} withdrawProfitShareTo_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref);
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} withdrawProfitShareTo_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref);
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} withdrawProfitShares_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref);
modifies revert;
modifies profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} withdrawProfitShares_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref);
modifies revert;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} _withdrawProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s931: Ref, _beneficiary_s931: Ref);
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies gas;
modifies revert;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
procedure {:inline 1} MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
procedure {:inline 1} MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
procedure {:inline 1} setMinter_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref);
modifies revert;
modifies minter_MintableToken;
procedure {:inline 1} setMinter_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref);
modifies revert;
modifies __tmp__minter_MintableToken;
procedure {:inline 1} mint_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int);
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies revert;
procedure {:inline 1} mint_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int);
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
modifies revert;
procedure {:inline 1} finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies totalSupplyIsFixed_ProfitSharing;
modifies revert;
procedure {:inline 1} finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies revert;
procedure {:inline 1} RateSource_RateSource_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} RateSource_RateSource__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} RateSource_RateSource__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} MintingCrowdsale_MintingCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref);
modifies __tmp__Balance;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies revert;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} MintingCrowdsale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies openingTime_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies revert;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies Alloc;
procedure {:constructor} {:inline 1} MintingCrowdsale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies revert;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__Alloc;
procedure {:inline 1} FallbackMethod_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} distributeTokensViaPublicSale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref);
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies revert;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
procedure {:inline 1} distributeTokensViaPublicSale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref);
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies revert;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
procedure {:inline 1} distributeTokensViaPrivateSale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref);
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies revert;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
procedure {:inline 1} distributeTokensViaPrivateSale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref);
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies revert;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
procedure {:inline 1} hasClosed_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} hasClosed_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} isOpen_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} isOpen_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} timeRemaining_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} timeRemaining_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} tokenSold_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} tokenSold_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies totalProfits_ProfitSharing;
procedure {:inline 1} buyTokens_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} changeClosingTime_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int);
modifies revert;
modifies closingTime_MintingCrowdsale;
procedure {:inline 1} changeClosingTime_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int);
modifies revert;
modifies __tmp__closingTime_MintingCrowdsale;
procedure {:inline 1} finalize_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies isFinalized_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies totalSupplyIsFixed_ProfitSharing;
procedure {:inline 1} finalize_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
procedure {:inline 1} distributeTokens_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenRemaining_s1755: int, beneficiaries_s1755: Ref, amounts_s1755: Ref, isPublicSale_s1755: bool) returns (__ret_0_: int);
modifies revert;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
procedure {:inline 1} forwardFunds_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} TokenRecoverable_TokenRecoverable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref);
modifies __tmp__Balance;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies revert;
procedure {:constructor} {:inline 1} TokenRecoverable_TokenRecoverable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies tokenRecoverer_TokenRecoverable;
modifies revert;
procedure {:constructor} {:inline 1} TokenRecoverable_TokenRecoverable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies revert;
procedure {:inline 1} setTokenRecoverer_TokenRecoverable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref);
modifies revert;
modifies tokenRecoverer_TokenRecoverable;
procedure {:inline 1} setTokenRecoverer_TokenRecoverable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref);
modifies revert;
modifies __tmp__tokenRecoverer_TokenRecoverable;
procedure {:inline 1} StokrToken_StokrToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref);
modifies __tmp__Balance;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} StokrToken_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies accounts_ProfitSharing;
modifies M_Ref_Ref;
modifies profitDepositor_ProfitSharing;
modifies profitDistributor_ProfitSharing;
modifies totalProfits_ProfitSharing;
modifies totalSupplyIsFixed_ProfitSharing;
modifies totalSupply__ProfitSharing;
modifies Alloc;
modifies revert;
modifies whitelist_Whitelisted;
modifies minter_MintableToken;
modifies numberOfInvestors_MintableToken;
modifies tokenRecoverer_TokenRecoverable;
modifies name_StokrToken;
modifies symbol_StokrToken;
modifies decimals_StokrToken;
modifies allowance__StokrToken;
modifies M_Ref_int;
procedure {:constructor} {:inline 1} StokrToken_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__M_Ref_Ref;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__M_Ref_int;
procedure {:inline 1} destruct_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} destruct_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} recoverToken_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref);
modifies revert;
modifies M_Ref_Ref;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} recoverToken_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} totalSupply_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} totalSupply_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int);
procedure {:inline 1} allowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
procedure {:inline 1} allowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__Alloc;
procedure {:inline 1} approve_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
procedure {:inline 1} approve_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} increaseAllowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
procedure {:inline 1} increaseAllowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} decreaseAllowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
procedure {:inline 1} decreaseAllowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} canTransfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool);
procedure {:inline 1} canTransfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool);
procedure {:inline 1} canTransferFrom_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies Alloc;
procedure {:inline 1} canTransferFrom_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__Alloc;
procedure {:inline 1} transfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool);
modifies revert;
modifies Balance;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} transfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} transferFrom_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies sum;
modifies revert;
modifies Alloc;
modifies Balance;
modifies lastTotalProfits_ProfitSharing.InvestorAccount;
modifies profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} transferFrom_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
modifies __tmp__Balance;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} _approve_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2279: Ref, _spender_s2279: Ref, _value_s2279: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} _transfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2360: Ref, _to_s2360: Ref, _value_s2360: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
procedure {:inline 1} StokrCrowdsale_StokrCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref);
modifies __tmp__Balance;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies revert;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} StokrCrowdsale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref);
modifies Balance;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies MAXOFFERINGPERIOD_MintingCrowdsale;
modifies tokenCapOfPublicSale_MintingCrowdsale;
modifies tokenCapOfPrivateSale_MintingCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies tokenPrice_MintingCrowdsale;
modifies tokenPurchaseMinimum_MintingCrowdsale;
modifies tokenPurchaseLimit_MintingCrowdsale;
modifies tokenPurchased_MintingCrowdsale;
modifies M_Ref_int;
modifies sum;
modifies openingTime_MintingCrowdsale;
modifies closingTime_MintingCrowdsale;
modifies limitEndTime_MintingCrowdsale;
modifies companyWallet_MintingCrowdsale;
modifies tokenReservePerMill_MintingCrowdsale;
modifies reserveAccount_MintingCrowdsale;
modifies isFinalized_MintingCrowdsale;
modifies revert;
modifies rateSource_MintingCrowdsale;
modifies token_MintingCrowdsale;
modifies Alloc;
modifies tokenGoal_StokrCrowdsale;
modifies investments_StokrCrowdsale;
procedure {:constructor} {:inline 1} StokrCrowdsale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies revert;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__Alloc;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} goalReached_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} goalReached_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} distributeRefunds_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref);
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} distributeRefunds_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref);
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} claimRefund_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies Balance;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
procedure {:inline 1} claimRefund_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} finalize_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies isFinalized_MintingCrowdsale;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies totalSupplyIsFixed_ProfitSharing;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies sum;
modifies M_Ref_int;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
procedure {:inline 1} finalize_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} distributeTokensViaPublicSale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref);
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies totalProfits_ProfitSharing;
procedure {:inline 1} distributeTokensViaPublicSale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref);
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} distributeTokensViaPrivateSale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref);
modifies tokenRemainingForPrivateSale_MintingCrowdsale;
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies numberOfInvestors_MintableToken;
modifies totalSupply__ProfitSharing;
modifies Balance;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies tokenRemainingForPublicSale_MintingCrowdsale;
modifies totalProfits_ProfitSharing;
procedure {:inline 1} distributeTokensViaPrivateSale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref);
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__Balance;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} forwardFunds_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} refundInvestor_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2620: Ref);
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__totalSupply__ProfitSharing;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__M_int_Ref;
modifies __tmp__M_int_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__admins_Whitelist;
modifies __tmp__isWhitelisted_Whitelist;
modifies __tmp__whitelist_Whitelisted;
modifies __tmp__balance_ProfitSharing.InvestorAccount;
modifies __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
modifies __tmp__profitShare_ProfitSharing.InvestorAccount;
modifies __tmp__accounts_ProfitSharing;
modifies __tmp__profitDepositor_ProfitSharing;
modifies __tmp__profitDistributor_ProfitSharing;
modifies __tmp__totalProfits_ProfitSharing;
modifies __tmp__totalSupplyIsFixed_ProfitSharing;
modifies __tmp__totalSupply__ProfitSharing;
modifies __tmp__minter_MintableToken;
modifies __tmp__numberOfInvestors_MintableToken;
modifies __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
modifies __tmp__rateSource_MintingCrowdsale;
modifies __tmp__token_MintingCrowdsale;
modifies __tmp__tokenCapOfPublicSale_MintingCrowdsale;
modifies __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
modifies __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
modifies __tmp__tokenPrice_MintingCrowdsale;
modifies __tmp__tokenPurchaseMinimum_MintingCrowdsale;
modifies __tmp__tokenPurchaseLimit_MintingCrowdsale;
modifies __tmp__tokenPurchased_MintingCrowdsale;
modifies __tmp__openingTime_MintingCrowdsale;
modifies __tmp__closingTime_MintingCrowdsale;
modifies __tmp__limitEndTime_MintingCrowdsale;
modifies __tmp__companyWallet_MintingCrowdsale;
modifies __tmp__tokenReservePerMill_MintingCrowdsale;
modifies __tmp__reserveAccount_MintingCrowdsale;
modifies __tmp__isFinalized_MintingCrowdsale;
modifies __tmp__tokenRecoverer_TokenRecoverable;
modifies __tmp__name_StokrToken;
modifies __tmp__symbol_StokrToken;
modifies __tmp__decimals_StokrToken;
modifies __tmp__allowance__StokrToken;
modifies __tmp__tokenGoal_StokrCrowdsale;
modifies __tmp__investments_StokrCrowdsale;
modifies revert;
modifies gas;
procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s436: Ref);
modifies revert;
procedure {:inline 1} onlyProfitDepositor_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyProfitDistributor_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyWhenTotalSupplyIsFixed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyTokenRecoverer_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
havoc newRef;
assume ((__tmp__Alloc[newRef]) == (false));
__tmp__Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation FreshRefGenerator__success() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation ProfitSharing.InvestorAccount_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, balance: int, lastTotalProfits: int, profitShare: int)
{
__tmp__balance_ProfitSharing.InvestorAccount[this] := balance;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[this] := lastTotalProfits;
__tmp__profitShare_ProfitSharing.InvestorAccount[this] := profitShare;
}

implementation ProfitSharing.InvestorAccount_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, balance: int, lastTotalProfits: int, profitShare: int)
{
balance_ProfitSharing.InvestorAccount[this] := balance;
lastTotalProfits_ProfitSharing.InvestorAccount[this] := lastTotalProfits;
profitShare_ProfitSharing.InvestorAccount[this] := profitShare;
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int) returns (__ret_0_: int)
{
var c_s24: int;
assume ((c_s24) >= (0));
assume ((a_s25) >= (0));
assume ((b_s25) >= (0));
assume (((a_s25) + (b_s25)) >= (0));
c_s24 := (a_s25) + (b_s25);
assume ((c_s24) >= (0));
assume ((a_s25) >= (0));
assume ((c_s24) >= (0));
__ret_0_ := c_s24;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int) returns (__ret_0_: int)
{
var c_s24: int;
assume ((c_s24) >= (0));
assume ((a_s25) >= (0));
assume ((b_s25) >= (0));
assume (((a_s25) + (b_s25)) >= (0));
c_s24 := (a_s25) + (b_s25);
assume ((c_s24) >= (0));
assume ((a_s25) >= (0));
assert ((c_s24) >= (a_s25));
assume ((c_s24) >= (0));
__ret_0_ := c_s24;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s45: int, b_s45: int) returns (__ret_0_: int)
{
assume ((b_s45) >= (0));
assume ((a_s45) >= (0));
assume ((a_s45) >= (0));
assume ((b_s45) >= (0));
assume (((a_s45) - (b_s45)) >= (0));
__ret_0_ := (a_s45) - (b_s45);
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s45: int, b_s45: int) returns (__ret_0_: int)
{
assume ((b_s45) >= (0));
assume ((a_s45) >= (0));
assert ((b_s45) <= (a_s45));
assume ((a_s45) >= (0));
assume ((b_s45) >= (0));
assume (((a_s45) - (b_s45)) >= (0));
__ret_0_ := (a_s45) - (b_s45);
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s78: int, b_s78: int) returns (__ret_0_: int)
// {
// var c_s77: int;
// assume ((a_s78) >= (0));
// if ((a_s78) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s77) >= (0));
// assume ((a_s78) >= (0));
// assume ((b_s78) >= (0));
// assume (((a_s78) * (b_s78)) >= (0));
// c_s77 := (a_s78) * (b_s78);
// assume ((c_s77) >= (0));
// assume ((a_s78) >= (0));
// assume (((c_s77) div (a_s78)) >= (0));
// assume ((b_s78) >= (0));
// assume ((c_s77) >= (0));
// __ret_0_ := c_s77;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s78: int, b_s78: int) returns (__ret_0_: int)
// {
// var c_s77: int;
// assume ((a_s78) >= (0));
// if ((a_s78) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s77) >= (0));
// assume ((a_s78) >= (0));
// assume ((b_s78) >= (0));
// assume (((a_s78) * (b_s78)) >= (0));
// c_s77 := (a_s78) * (b_s78);
// assume ((c_s77) >= (0));
// assume ((a_s78) >= (0));
// assume (((c_s77) div (a_s78)) >= (0));
// assume ((b_s78) >= (0));
// assert (((c_s77) div (a_s78)) == (b_s78));
// assume ((c_s77) >= (0));
// __ret_0_ := c_s77;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int)
// {
// assume ((a_s92) >= (0));
// assume ((b_s92) >= (0));
// assume (((a_s92) div (b_s92)) >= (0));
// __ret_0_ := (a_s92) div (b_s92);
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int)
// {
// assume ((a_s92) >= (0));
// assume ((b_s92) >= (0));
// assume (((a_s92) div (b_s92)) >= (0));
// __ret_0_ := (a_s92) div (b_s92);
// return;
// }

implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__owner_Ownable[this] := null;
__tmp__newOwner_Ownable[this] := null;
// end of initialization
__tmp__owner_Ownable[this] := msgsender_MSG;
}

implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
owner_Ownable[this] := null;
newOwner_Ownable[this] := null;
// end of initialization
owner_Ownable[this] := msgsender_MSG;
}

implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref)
{
var __var_1: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_1 := null;
if (!((_newOwner_s146) != (null))) {
revert := true;
return;
}
__tmp__newOwner_Ownable[this] := _newOwner_s146;
}

implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s146: Ref)
{
var __var_1: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_1 := null;
if (!((_newOwner_s146) != (null))) {
revert := true;
return;
}
newOwner_Ownable[this] := _newOwner_s146;
}

implementation transferOwnershipUnsafe_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref)
{
var __var_2: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_2 := null;
if (!((_newOwner_s167) != (null))) {
revert := true;
return;
}
call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
if (revert) {
return;
}
}

implementation transferOwnershipUnsafe_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s167: Ref)
{
var __var_2: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_2 := null;
if (!((_newOwner_s167) != (null))) {
revert := true;
return;
}
call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
if (revert) {
return;
}
}

implementation claimOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__newOwner_Ownable[this]))) {
revert := true;
return;
}
call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
}

implementation claimOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (newOwner_Ownable[this]))) {
revert := true;
return;
}
call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
}

implementation _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s210: Ref)
{
var __var_3: Ref;
if ((_newOwner_s210) != (__tmp__owner_Ownable[this])) {
__tmp__owner_Ownable[this] := _newOwner_s210;
}
__var_3 := null;
__tmp__newOwner_Ownable[this] := __var_3;
}

implementation _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s210: Ref)
{
var __var_3: Ref;
if ((_newOwner_s210) != (owner_Ownable[this])) {
assert {:EventEmitted "OwnershipTransferred_Ownable"} (true);
owner_Ownable[this] := _newOwner_s210;
}
__var_3 := null;
newOwner_Ownable[this] := __var_3;
}

implementation Whitelist_Whitelist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_4: Ref;
var __var_5: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for admins
call __var_4 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__admins_Whitelist[this] := __var_4;
// Initialize Boolean mapping admins
__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]] := zeroRefBoolArr();
// Make array/mapping vars distinct for isWhitelisted
call __var_5 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__isWhitelisted_Whitelist[this] := __var_5;
// Initialize Boolean mapping isWhitelisted
__tmp__M_Ref_bool[__tmp__isWhitelisted_Whitelist[this]] := zeroRefBoolArr();
// end of initialization
}

implementation Whitelist_Whitelist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_4: Ref;
var __var_5: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for admins
call __var_4 := FreshRefGenerator__success();
if (revert) {
return;
}
admins_Whitelist[this] := __var_4;
// Initialize Boolean mapping admins
M_Ref_bool[admins_Whitelist[this]] := zeroRefBoolArr();
// Make array/mapping vars distinct for isWhitelisted
call __var_5 := FreshRefGenerator__success();
if (revert) {
return;
}
isWhitelisted_Whitelist[this] := __var_5;
// Initialize Boolean mapping isWhitelisted
M_Ref_bool[isWhitelisted_Whitelist[this]] := zeroRefBoolArr();
// end of initialization
}

implementation Whitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Whitelist_Whitelist_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Whitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Whitelist_Whitelist_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation addAdmin_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref)
{
var __var_6: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_6 := null;
if (!((_admin_s287) != (null))) {
revert := true;
return;
}
if (!(__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]][_admin_s287])) {
__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]][_admin_s287] := true;
}
}

implementation addAdmin_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s287: Ref)
{
var __var_6: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_6 := null;
if (!((_admin_s287) != (null))) {
revert := true;
return;
}
if (!(M_Ref_bool[admins_Whitelist[this]][_admin_s287])) {
M_Ref_bool[admins_Whitelist[this]][_admin_s287] := true;
assert {:EventEmitted "AdminAdded_Whitelist"} (true);
}
}

implementation removeAdmin_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref)
{
var __var_7: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_7 := null;
if (!((_admin_s319) != (null))) {
revert := true;
return;
}
if (__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]][_admin_s319]) {
__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]][_admin_s319] := false;
}
}

implementation removeAdmin_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s319: Ref)
{
var __var_7: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_7 := null;
if (!((_admin_s319) != (null))) {
revert := true;
return;
}
if (M_Ref_bool[admins_Whitelist[this]][_admin_s319]) {
M_Ref_bool[admins_Whitelist[this]][_admin_s319] := false;
assert {:EventEmitted "AdminRemoved_Whitelist"} (true);
}
}

implementation addToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref)
{
var i_s363: int;
call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s363) >= (0));
assume ((__tmp__Length[_investors_s365]) >= (0));
assume ((i_s363) >= (0));
i_s363 := 0;
while ((i_s363) < (__tmp__Length[_investors_s365]))
{
assume ((i_s363) >= (0));
if (!(__tmp__M_Ref_bool[__tmp__isWhitelisted_Whitelist[this]][__tmp__M_int_Ref[_investors_s365][i_s363]])) {
assume ((i_s363) >= (0));
__tmp__M_Ref_bool[__tmp__isWhitelisted_Whitelist[this]][__tmp__M_int_Ref[_investors_s365][i_s363]] := true;
}
assume ((i_s363) >= (0));
i_s363 := (i_s363) + (1);
assume ((i_s363) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation addToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s365: Ref)
{
var i_s363: int;
call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s363) >= (0));
assume ((Length[_investors_s365]) >= (0));
assume ((i_s363) >= (0));
i_s363 := 0;
while ((i_s363) < (Length[_investors_s365]))
{
assume ((i_s363) >= (0));
if (!(M_Ref_bool[isWhitelisted_Whitelist[this]][M_int_Ref[_investors_s365][i_s363]])) {
assume ((i_s363) >= (0));
M_Ref_bool[isWhitelisted_Whitelist[this]][M_int_Ref[_investors_s365][i_s363]] := true;
assert {:EventEmitted "InvestorAdded_Whitelist"} (true);
}
assume ((i_s363) >= (0));
i_s363 := (i_s363) + (1);
assume ((i_s363) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation removeFromWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref)
{
var i_s408: int;
call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s408) >= (0));
assume ((__tmp__Length[_investors_s410]) >= (0));
assume ((i_s408) >= (0));
i_s408 := 0;
while ((i_s408) < (__tmp__Length[_investors_s410]))
{
assume ((i_s408) >= (0));
if (__tmp__M_Ref_bool[__tmp__isWhitelisted_Whitelist[this]][__tmp__M_int_Ref[_investors_s410][i_s408]]) {
assume ((i_s408) >= (0));
__tmp__M_Ref_bool[__tmp__isWhitelisted_Whitelist[this]][__tmp__M_int_Ref[_investors_s410][i_s408]] := false;
}
assume ((i_s408) >= (0));
i_s408 := (i_s408) + (1);
assume ((i_s408) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation removeFromWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s410: Ref)
{
var i_s408: int;
call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s408) >= (0));
assume ((Length[_investors_s410]) >= (0));
assume ((i_s408) >= (0));
i_s408 := 0;
while ((i_s408) < (Length[_investors_s410]))
{
assume ((i_s408) >= (0));
if (M_Ref_bool[isWhitelisted_Whitelist[this]][M_int_Ref[_investors_s410][i_s408]]) {
assume ((i_s408) >= (0));
M_Ref_bool[isWhitelisted_Whitelist[this]][M_int_Ref[_investors_s410][i_s408]] := false;
assert {:EventEmitted "InvestorRemoved_Whitelist"} (true);
}
assume ((i_s408) >= (0));
i_s408 := (i_s408) + (1);
assume ((i_s408) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation Whitelisted_Whitelisted_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
if ((__tmp__DType[this]) == (StokrToken)) {
call setWhitelist_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call setWhitelist_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Whitelisted)) {
call setWhitelist_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation Whitelisted_Whitelisted_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
if ((DType[this]) == (StokrToken)) {
call setWhitelist_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call setWhitelist_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else if ((DType[this]) == (Whitelisted)) {
call setWhitelist_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation Whitelisted_Whitelisted__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref)
{
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Whitelisted_Whitelisted_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
}

implementation Whitelisted_Whitelisted__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _whitelist_s446: Ref)
{
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Whitelisted_Whitelisted_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
if (revert) {
return;
}
}

implementation setWhitelist_Whitelisted__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref)
{
var __var_10: Ref;
var __var_11: Ref;
var __var_12: Ref;
var __var_13: Ref;
var __var_14: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_10 := _newWhitelist_s489;
__var_11 := null;
if (!((_newWhitelist_s489) != (null))) {
revert := true;
return;
}
__var_12 := _newWhitelist_s489;
__var_13 := __tmp__whitelist_Whitelisted[this];
if ((_newWhitelist_s489) != (__tmp__whitelist_Whitelisted[this])) {
assume ((__tmp__DType[_newWhitelist_s489]) == (Whitelist));
__var_14 := _newWhitelist_s489;
__tmp__whitelist_Whitelisted[this] := __var_14;
}
}

implementation setWhitelist_Whitelisted__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newWhitelist_s489: Ref)
{
var __var_10: Ref;
var __var_11: Ref;
var __var_12: Ref;
var __var_13: Ref;
var __var_14: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_10 := _newWhitelist_s489;
__var_11 := null;
if (!((_newWhitelist_s489) != (null))) {
revert := true;
return;
}
__var_12 := _newWhitelist_s489;
__var_13 := whitelist_Whitelisted[this];
if ((_newWhitelist_s489) != (whitelist_Whitelisted[this])) {
assert {:EventEmitted "WhitelistChange_Whitelisted"} (true);
assume ((DType[_newWhitelist_s489]) == (Whitelist));
__var_14 := _newWhitelist_s489;
whitelist_Whitelisted[this] := __var_14;
}
}

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ProfitSharing_ProfitSharing_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref)
{
var __var_15: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for accounts
call __var_15 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__accounts_ProfitSharing[this] := __var_15;
// Initialize address/contract mapping accounts
__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]] := zeroRefRefArr();
__tmp__profitDepositor_ProfitSharing[this] := null;
__tmp__profitDistributor_ProfitSharing[this] := null;
__tmp__totalProfits_ProfitSharing[this] := 0;
__tmp__totalSupplyIsFixed_ProfitSharing[this] := false;
__tmp__totalSupply__ProfitSharing[this] := 0;
// end of initialization
if ((__tmp__DType[this]) == (StokrToken)) {
call setProfitDepositor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call setProfitDepositor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call setProfitDepositor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (StokrToken)) {
call setProfitDistributor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call setProfitDistributor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call setProfitDistributor_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ProfitSharing_ProfitSharing_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref)
{
var __var_15: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for accounts
call __var_15 := FreshRefGenerator__success();
if (revert) {
return;
}
accounts_ProfitSharing[this] := __var_15;
// Initialize address/contract mapping accounts
M_Ref_Ref[accounts_ProfitSharing[this]] := zeroRefRefArr();
profitDepositor_ProfitSharing[this] := null;
profitDistributor_ProfitSharing[this] := null;
totalProfits_ProfitSharing[this] := 0;
totalSupplyIsFixed_ProfitSharing[this] := false;
totalSupply__ProfitSharing[this] := 0;
// end of initialization
if ((DType[this]) == (StokrToken)) {
call setProfitDepositor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call setProfitDepositor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call setProfitDepositor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (StokrToken)) {
call setProfitDistributor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call setProfitDistributor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call setProfitDistributor_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDistributor_s666);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ProfitSharing_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref)
{
var __var_15: Ref;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ProfitSharing_ProfitSharing_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666, _profitDistributor_s666);
if (revert) {
return;
}
}

implementation ProfitSharing_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _profitDepositor_s666: Ref, _profitDistributor_s666: Ref)
{
var __var_15: Ref;
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ProfitSharing_ProfitSharing_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666, _profitDistributor_s666);
if (revert) {
return;
}
}

implementation FallbackMethod_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (StokrToken)) {
call depositProfit_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call depositProfit_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call depositProfit_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackMethod_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (StokrToken)) {
call depositProfit_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call depositProfit_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call depositProfit_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation setProfitDepositor_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref)
{
var __var_16: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_16 := null;
if (!((_newProfitDepositor_s704) != (null))) {
revert := true;
return;
}
if ((_newProfitDepositor_s704) != (__tmp__profitDepositor_ProfitSharing[this])) {
__tmp__profitDepositor_ProfitSharing[this] := _newProfitDepositor_s704;
}
}

implementation setProfitDepositor_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDepositor_s704: Ref)
{
var __var_16: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_16 := null;
if (!((_newProfitDepositor_s704) != (null))) {
revert := true;
return;
}
if ((_newProfitDepositor_s704) != (profitDepositor_ProfitSharing[this])) {
assert {:EventEmitted "ProfitDepositorChange_ProfitSharing"} (true);
profitDepositor_ProfitSharing[this] := _newProfitDepositor_s704;
}
}

implementation setProfitDistributor_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref)
{
var __var_17: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_17 := null;
if (!((_newProfitDistributor_s735) != (null))) {
revert := true;
return;
}
if ((_newProfitDistributor_s735) != (__tmp__profitDistributor_ProfitSharing[this])) {
__tmp__profitDistributor_ProfitSharing[this] := _newProfitDistributor_s735;
}
}

implementation setProfitDistributor_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newProfitDistributor_s735: Ref)
{
var __var_17: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_17 := null;
if (!((_newProfitDistributor_s735) != (null))) {
revert := true;
return;
}
if ((_newProfitDistributor_s735) != (profitDistributor_ProfitSharing[this])) {
assert {:EventEmitted "ProfitDistributorChange_ProfitSharing"} (true);
profitDistributor_ProfitSharing[this] := _newProfitDistributor_s735;
}
}

implementation depositProfit_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_18: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyProfitDepositor_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
if (!((__tmp__totalSupply__ProfitSharing[this]) > (0))) {
revert := true;
return;
}
assume ((__tmp__totalProfits_ProfitSharing[this]) >= (0));
assume ((__tmp__totalProfits_ProfitSharing[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
call __var_18 := add_SafeMath__fail(this, this, 0, __tmp__totalProfits_ProfitSharing[this], msgvalue_MSG);
if (revert) {
return;
}
__tmp__totalProfits_ProfitSharing[this] := __var_18;
assume ((__var_18) >= (0));
}

implementation depositProfit_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_18: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyProfitDepositor_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((totalSupply__ProfitSharing[this]) >= (0));
if (!((totalSupply__ProfitSharing[this]) > (0))) {
revert := true;
return;
}
assume ((totalProfits_ProfitSharing[this]) >= (0));
assume ((totalProfits_ProfitSharing[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
call __var_18 := add_SafeMath__success(this, this, 0, totalProfits_ProfitSharing[this], msgvalue_MSG);
if (revert) {
return;
}
totalProfits_ProfitSharing[this] := __var_18;
assume ((__var_18) >= (0));
assert {:EventEmitted "ProfitDeposit_ProfitSharing"} (true);
}

implementation profitShareOwing_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int)
{
var account_s805: Ref;
var __var_19: int;
var __var_20: int;
var __var_21: int;
var __var_22: int;
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
if ((!(__tmp__totalSupplyIsFixed_ProfitSharing[this])) || ((__tmp__totalSupply__ProfitSharing[this]) == (0))) {
__ret_0_ := 0;
return;
}
account_s805 := __tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s806];
assume ((__var_19) >= (0));
assume ((__var_20) >= (0));
assume ((__var_21) >= (0));
assume ((__var_22) >= (0));
assume ((__tmp__totalProfits_ProfitSharing[this]) >= (0));
assume ((__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[account_s805]) >= (0));
call __var_22 := sub_SafeMath__fail(this, this, 0, __tmp__totalProfits_ProfitSharing[this], __tmp__lastTotalProfits_ProfitSharing.InvestorAccount[account_s805]);
if (revert) {
return;
}
assume ((__var_22) >= (0));
assume ((__tmp__Balance[account_s805]) >= (0));
call __var_21 := mul_SafeMath__fail(this, this, 0, __var_22, __tmp__Balance[account_s805]);
if (revert) {
return;
}
assume ((__var_21) >= (0));
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
call __var_20 := div_SafeMath__fail(this, this, 0, __var_21, __tmp__totalSupply__ProfitSharing[this]);
if (revert) {
return;
}
assume ((__var_20) >= (0));
assume ((__tmp__profitShare_ProfitSharing.InvestorAccount[account_s805]) >= (0));
call __var_19 := add_SafeMath__fail(this, this, 0, __var_20, __tmp__profitShare_ProfitSharing.InvestorAccount[account_s805]);
if (revert) {
return;
}
assume ((__var_19) >= (0));
__ret_0_ := __var_19;
return;
}

implementation profitShareOwing_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s806: Ref) returns (__ret_0_: int)
{
var account_s805: Ref;
var __var_19: int;
var __var_20: int;
var __var_21: int;
var __var_22: int;
assume ((totalSupply__ProfitSharing[this]) >= (0));
if ((!(totalSupplyIsFixed_ProfitSharing[this])) || ((totalSupply__ProfitSharing[this]) == (0))) {
__ret_0_ := 0;
return;
}
account_s805 := M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s806];
assume ((__var_19) >= (0));
assume ((__var_20) >= (0));
assume ((__var_21) >= (0));
assume ((__var_22) >= (0));
assume ((totalProfits_ProfitSharing[this]) >= (0));
assume ((lastTotalProfits_ProfitSharing.InvestorAccount[account_s805]) >= (0));
call __var_22 := sub_SafeMath__success(this, this, 0, totalProfits_ProfitSharing[this], lastTotalProfits_ProfitSharing.InvestorAccount[account_s805]);
if (revert) {
return;
}
assume ((__var_22) >= (0));
assume ((Balance[account_s805]) >= (0));
call __var_21 := mul_SafeMath__success(this, this, 0, __var_22, Balance[account_s805]);
if (revert) {
return;
}
assume ((__var_21) >= (0));
assume ((totalSupply__ProfitSharing[this]) >= (0));
call __var_20 := div_SafeMath__success(this, this, 0, __var_21, totalSupply__ProfitSharing[this]);
if (revert) {
return;
}
assume ((__var_20) >= (0));
assume ((profitShare_ProfitSharing.InvestorAccount[account_s805]) >= (0));
call __var_19 := add_SafeMath__success(this, this, 0, __var_20, profitShare_ProfitSharing.InvestorAccount[account_s805]);
if (revert) {
return;
}
assume ((__var_19) >= (0));
__ret_0_ := __var_19;
return;
}

implementation updateProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref)
{
var newProfitShare_s838: int;
call onlyWhenTotalSupplyIsFixed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((newProfitShare_s838) >= (0));
if ((__tmp__DType[this]) == (StokrToken)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else {
assume (false);
}
newProfitShare_s838 := newProfitShare_s838;
assume ((__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s839]]) >= (0));
assume ((__tmp__totalProfits_ProfitSharing[this]) >= (0));
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s839]] := __tmp__totalProfits_ProfitSharing[this];
assume ((__tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s839]]) >= (0));
assume ((newProfitShare_s838) >= (0));
__tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s839]] := newProfitShare_s838;
}

implementation updateProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s839: Ref)
{
var newProfitShare_s838: int;
call onlyWhenTotalSupplyIsFixed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((newProfitShare_s838) >= (0));
if ((DType[this]) == (StokrToken)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call newProfitShare_s838 := profitShareOwing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
if (revert) {
return;
}
} else {
assume (false);
}
newProfitShare_s838 := newProfitShare_s838;
assume ((lastTotalProfits_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s839]]) >= (0));
assume ((totalProfits_ProfitSharing[this]) >= (0));
lastTotalProfits_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s839]] := totalProfits_ProfitSharing[this];
assume ((profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s839]]) >= (0));
assume ((newProfitShare_s838) >= (0));
profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s839]] := newProfitShare_s838;
assert {:EventEmitted "ProfitShareUpdate_ProfitSharing"} (true);
}

implementation withdrawProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((__tmp__DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdrawProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdrawProfitShareTo_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref)
{
if ((__tmp__DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdrawProfitShareTo_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s862: Ref)
{
if ((DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _beneficiary_s862);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdrawProfitShares_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref)
{
var i_s891: int;
call onlyProfitDistributor_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s891) >= (0));
assume ((__tmp__Length[_investors_s893]) >= (0));
assume ((i_s891) >= (0));
i_s891 := 0;
while ((i_s891) < (__tmp__Length[_investors_s893]))
{
assume ((i_s891) >= (0));
assume ((i_s891) >= (0));
if ((__tmp__DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_investors_s893][i_s891], __tmp__M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_investors_s893][i_s891], __tmp__M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_investors_s893][i_s891], __tmp__M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((i_s891) >= (0));
i_s891 := (i_s891) + (1);
assume ((i_s891) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation withdrawProfitShares_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s893: Ref)
{
var i_s891: int;
call onlyProfitDistributor_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((i_s891) >= (0));
assume ((Length[_investors_s893]) >= (0));
assume ((i_s891) >= (0));
i_s891 := 0;
while ((i_s891) < (Length[_investors_s893]))
{
assume ((i_s891) >= (0));
assume ((i_s891) >= (0));
if ((DType[this]) == (StokrToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_investors_s893][i_s891], M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_investors_s893][i_s891], M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call _withdrawProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_investors_s893][i_s891], M_int_Ref[_investors_s893][i_s891]);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((i_s891) >= (0));
i_s891 := (i_s891) + (1);
assume ((i_s891) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation _withdrawProfitShare_ProfitSharing__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s931: Ref, _beneficiary_s931: Ref)
{
var withdrawnProfitShare_s930: int;
var __var_23: int;
var __var_24: bool;
if ((__tmp__DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintableToken)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ProfitSharing)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((withdrawnProfitShare_s930) >= (0));
assume ((__tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s931]]) >= (0));
withdrawnProfitShare_s930 := __tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s931]];
assume ((__tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s931]]) >= (0));
__tmp__profitShare_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s931]] := 0;
__var_23 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_23 := (__var_23) - (gas);
assume ((withdrawnProfitShare_s930) >= (0));
call __var_24 := send__fail(this, _beneficiary_s931, withdrawnProfitShare_s930);
if (!(__var_24)) {
revert := true;
return;
}
gas := (__var_23) + (gas);
}

implementation _withdrawProfitShare_ProfitSharing__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s931: Ref, _beneficiary_s931: Ref)
{
var withdrawnProfitShare_s930: int;
var __var_23: int;
var __var_24: bool;
if ((DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else if ((DType[this]) == (MintableToken)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else if ((DType[this]) == (ProfitSharing)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _investor_s931);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((withdrawnProfitShare_s930) >= (0));
assume ((profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s931]]) >= (0));
withdrawnProfitShare_s930 := profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s931]];
assume ((profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s931]]) >= (0));
profitShare_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s931]] := 0;
__var_23 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_23 := (__var_23) - (gas);
assume ((withdrawnProfitShare_s930) >= (0));
call __var_24 := send__success(this, _beneficiary_s931, withdrawnProfitShare_s930);
if (!(__var_24)) {
revert := true;
return;
}
gas := (__var_23) + (gas);
assert {:EventEmitted "ProfitShareWithdrawal_ProfitSharing"} (true);
}

implementation MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__minter_MintableToken[this] := null;
__tmp__numberOfInvestors_MintableToken[this] := 0;
// end of initialization
}

implementation MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
minter_MintableToken[this] := null;
numberOfInvestors_MintableToken[this] := 0;
// end of initialization
}

implementation MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MintableToken_MintableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MintableToken_MintableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation setMinter_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref)
{
var __var_25: Ref;
var __var_26: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_25 := null;
if (!((__tmp__minter_MintableToken[this]) == (null))) {
revert := true;
return;
}
__var_26 := null;
if (!((_minter_s1004) != (null))) {
revert := true;
return;
}
__tmp__minter_MintableToken[this] := _minter_s1004;
}

implementation setMinter_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _minter_s1004: Ref)
{
var __var_25: Ref;
var __var_26: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_25 := null;
if (!((minter_MintableToken[this]) == (null))) {
revert := true;
return;
}
__var_26 := null;
if (!((_minter_s1004) != (null))) {
revert := true;
return;
}
minter_MintableToken[this] := _minter_s1004;
}

implementation mint_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int)
{
var __var_27: int;
var __var_28: int;
call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canMint_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1063);
if (revert) {
return;
}
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
if ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]]) == (0)) {
assume ((__tmp__numberOfInvestors_MintableToken[this]) >= (0));
__tmp__numberOfInvestors_MintableToken[this] := (__tmp__numberOfInvestors_MintableToken[this]) + (1);
assume ((__tmp__numberOfInvestors_MintableToken[this]) >= (0));
}
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
assume ((_amount_s1063) >= (0));
call __var_27 := add_SafeMath__fail(this, this, 0, __tmp__totalSupply__ProfitSharing[this], _amount_s1063);
if (revert) {
return;
}
__tmp__totalSupply__ProfitSharing[this] := __var_27;
assume ((__var_27) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
assume ((_amount_s1063) >= (0));
call __var_28 := add_SafeMath__fail(this, this, 0, __tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]], _amount_s1063);
if (revert) {
return;
}
__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s1063]] := __var_28;
assume ((__var_28) >= (0));
}

implementation mint_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1063: Ref, _amount_s1063: int)
{
var __var_27: int;
var __var_28: int;
call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canMint_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s1063);
if (revert) {
return;
}
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
if ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]]) == (0)) {
assume ((numberOfInvestors_MintableToken[this]) >= (0));
numberOfInvestors_MintableToken[this] := (numberOfInvestors_MintableToken[this]) + (1);
assume ((numberOfInvestors_MintableToken[this]) >= (0));
}
assume ((totalSupply__ProfitSharing[this]) >= (0));
assume ((totalSupply__ProfitSharing[this]) >= (0));
assume ((_amount_s1063) >= (0));
call __var_27 := add_SafeMath__success(this, this, 0, totalSupply__ProfitSharing[this], _amount_s1063);
if (revert) {
return;
}
totalSupply__ProfitSharing[this] := __var_27;
assume ((__var_27) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]]) >= (0));
assume ((_amount_s1063) >= (0));
call __var_28 := add_SafeMath__success(this, this, 0, Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]], _amount_s1063);
if (revert) {
return;
}
Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s1063]] := __var_28;
assume ((__var_28) >= (0));
assert {:EventEmitted "Minted_MintableToken"} (true);
assert {:EventEmitted "Transfer_MintableToken"} (true);
}

implementation finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canMint_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__totalSupplyIsFixed_ProfitSharing[this] := true;
}

implementation finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canMint_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
totalSupplyIsFixed_ProfitSharing[this] := true;
assert {:EventEmitted "MintFinished_MintableToken"} (true);
}

implementation RateSource_RateSource_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation RateSource_RateSource_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation RateSource_RateSource__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call RateSource_RateSource_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation RateSource_RateSource__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call RateSource_RateSource_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MintingCrowdsale_MintingCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref)
{
var __var_29: Ref;
var __var_30: Ref;
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: int;
var __var_39: int;
var __var_40: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale[this] := 80;
__tmp__tokenCapOfPublicSale_MintingCrowdsale[this] := 0;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this] := 0;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this] := 0;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this] := 0;
__tmp__tokenPrice_MintingCrowdsale[this] := 0;
__tmp__tokenPurchaseMinimum_MintingCrowdsale[this] := 0;
__tmp__tokenPurchaseLimit_MintingCrowdsale[this] := 0;
// Make array/mapping vars distinct for tokenPurchased
call __var_40 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__tokenPurchased_MintingCrowdsale[this] := __var_40;
// Initialize Integer mapping tokenPurchased
__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]] := zeroRefIntArr();
__tmp__sum[__tmp__tokenPurchased_MintingCrowdsale[this]] := 0;
__tmp__openingTime_MintingCrowdsale[this] := 0;
__tmp__closingTime_MintingCrowdsale[this] := 0;
__tmp__limitEndTime_MintingCrowdsale[this] := 0;
__tmp__companyWallet_MintingCrowdsale[this] := null;
__tmp__tokenReservePerMill_MintingCrowdsale[this] := 0;
__tmp__reserveAccount_MintingCrowdsale[this] := null;
__tmp__isFinalized_MintingCrowdsale[this] := false;
// end of initialization
__var_29 := _rateSource_s1364;
__var_30 := null;
if (!((_rateSource_s1364) != (null))) {
revert := true;
return;
}
__var_31 := _token_s1364;
__var_32 := null;
if (!((_token_s1364) != (null))) {
revert := true;
return;
}
assume (((__tmp__DType[_token_s1364]) == (MintableToken)) || ((__tmp__DType[_token_s1364]) == (StokrToken)));
__var_33 := __tmp__minter_MintableToken[_token_s1364];
__var_35 := null;
if (!((__var_33) == (null))) {
revert := true;
return;
}
assume ((_tokenCapOfPublicSale_s1364) >= (0));
if (!((_tokenCapOfPublicSale_s1364) > (0))) {
revert := true;
return;
}
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
if (!((_tokenCapOfPrivateSale_s1364) > (0))) {
revert := true;
return;
}
assume ((_tokenPurchaseMinimum_s1364) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
if (!(((_tokenPurchaseMinimum_s1364) <= (_tokenCapOfPublicSale_s1364)) && ((_tokenPurchaseMinimum_s1364) <= (_tokenCapOfPrivateSale_s1364)))) {
revert := true;
return;
}
assume ((_tokenPrice_s1364) >= (0));
if (!((_tokenPrice_s1364) > (0))) {
revert := true;
return;
}
assume ((_openingTime_s1364) >= (0));
assume ((__tmp__now) >= (0));
if (!((_openingTime_s1364) >= (__tmp__now))) {
revert := true;
return;
}
assume ((_closingTime_s1364) >= (0));
assume ((_openingTime_s1364) >= (0));
if (!((_closingTime_s1364) >= (_openingTime_s1364))) {
revert := true;
return;
}
__var_36 := null;
if (!((_companyWallet_s1364) != (null))) {
revert := true;
return;
}
__var_37 := null;
if (!((_reserveAccount_s1364) != (null))) {
revert := true;
return;
}
assume ((_limitEndTime_s1364) >= (0));
assume ((_openingTime_s1364) >= (0));
if ((_limitEndTime_s1364) > (_openingTime_s1364)) {
assume ((_tokenPurchaseLimit_s1364) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
if (!((_tokenPurchaseLimit_s1364) >= (_tokenPurchaseMinimum_s1364))) {
revert := true;
return;
}
}
assume ((__var_38) >= (0));
assume ((__var_39) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
call __var_39 := add_SafeMath__fail(this, this, 0, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364);
if (revert) {
return;
}
assume ((__var_39) >= (0));
assume ((_tokenReservePerMill_s1364) >= (0));
call __var_38 := mul_SafeMath__fail(this, this, 0, __var_39, _tokenReservePerMill_s1364);
if (revert) {
return;
}
__tmp__rateSource_MintingCrowdsale[this] := _rateSource_s1364;
__tmp__token_MintingCrowdsale[this] := _token_s1364;
assume ((__tmp__tokenCapOfPublicSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
__tmp__tokenCapOfPublicSale_MintingCrowdsale[this] := _tokenCapOfPublicSale_s1364;
assume ((__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this] := _tokenCapOfPrivateSale_s1364;
assume ((__tmp__tokenPurchaseMinimum_MintingCrowdsale[this]) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
__tmp__tokenPurchaseMinimum_MintingCrowdsale[this] := _tokenPurchaseMinimum_s1364;
assume ((__tmp__tokenPurchaseLimit_MintingCrowdsale[this]) >= (0));
assume ((_tokenPurchaseLimit_s1364) >= (0));
__tmp__tokenPurchaseLimit_MintingCrowdsale[this] := _tokenPurchaseLimit_s1364;
assume ((__tmp__tokenReservePerMill_MintingCrowdsale[this]) >= (0));
assume ((_tokenReservePerMill_s1364) >= (0));
__tmp__tokenReservePerMill_MintingCrowdsale[this] := _tokenReservePerMill_s1364;
assume ((__tmp__tokenPrice_MintingCrowdsale[this]) >= (0));
assume ((_tokenPrice_s1364) >= (0));
__tmp__tokenPrice_MintingCrowdsale[this] := _tokenPrice_s1364;
assume ((__tmp__openingTime_MintingCrowdsale[this]) >= (0));
assume ((_openingTime_s1364) >= (0));
__tmp__openingTime_MintingCrowdsale[this] := _openingTime_s1364;
assume ((__tmp__closingTime_MintingCrowdsale[this]) >= (0));
assume ((_closingTime_s1364) >= (0));
__tmp__closingTime_MintingCrowdsale[this] := _closingTime_s1364;
assume ((__tmp__limitEndTime_MintingCrowdsale[this]) >= (0));
assume ((_limitEndTime_s1364) >= (0));
__tmp__limitEndTime_MintingCrowdsale[this] := _limitEndTime_s1364;
__tmp__companyWallet_MintingCrowdsale[this] := _companyWallet_s1364;
__tmp__reserveAccount_MintingCrowdsale[this] := _reserveAccount_s1364;
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this] := _tokenCapOfPublicSale_s1364;
assume ((__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this] := _tokenCapOfPrivateSale_s1364;
}

implementation MintingCrowdsale_MintingCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref)
{
var __var_29: Ref;
var __var_30: Ref;
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: int;
var __var_39: int;
var __var_40: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
MAXOFFERINGPERIOD_MintingCrowdsale[this] := 80;
tokenCapOfPublicSale_MintingCrowdsale[this] := 0;
tokenCapOfPrivateSale_MintingCrowdsale[this] := 0;
tokenRemainingForPublicSale_MintingCrowdsale[this] := 0;
tokenRemainingForPrivateSale_MintingCrowdsale[this] := 0;
tokenPrice_MintingCrowdsale[this] := 0;
tokenPurchaseMinimum_MintingCrowdsale[this] := 0;
tokenPurchaseLimit_MintingCrowdsale[this] := 0;
// Make array/mapping vars distinct for tokenPurchased
call __var_40 := FreshRefGenerator__success();
if (revert) {
return;
}
tokenPurchased_MintingCrowdsale[this] := __var_40;
// Initialize Integer mapping tokenPurchased
M_Ref_int[tokenPurchased_MintingCrowdsale[this]] := zeroRefIntArr();
sum[tokenPurchased_MintingCrowdsale[this]] := 0;
openingTime_MintingCrowdsale[this] := 0;
closingTime_MintingCrowdsale[this] := 0;
limitEndTime_MintingCrowdsale[this] := 0;
companyWallet_MintingCrowdsale[this] := null;
tokenReservePerMill_MintingCrowdsale[this] := 0;
reserveAccount_MintingCrowdsale[this] := null;
isFinalized_MintingCrowdsale[this] := false;
// end of initialization
__var_29 := _rateSource_s1364;
__var_30 := null;
if (!((_rateSource_s1364) != (null))) {
revert := true;
return;
}
__var_31 := _token_s1364;
__var_32 := null;
if (!((_token_s1364) != (null))) {
revert := true;
return;
}
assume (((DType[_token_s1364]) == (MintableToken)) || ((DType[_token_s1364]) == (StokrToken)));
__var_33 := minter_MintableToken[_token_s1364];
__var_35 := null;
if (!((__var_33) == (null))) {
revert := true;
return;
}
assume ((_tokenCapOfPublicSale_s1364) >= (0));
if (!((_tokenCapOfPublicSale_s1364) > (0))) {
revert := true;
return;
}
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
if (!((_tokenCapOfPrivateSale_s1364) > (0))) {
revert := true;
return;
}
assume ((_tokenPurchaseMinimum_s1364) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
if (!(((_tokenPurchaseMinimum_s1364) <= (_tokenCapOfPublicSale_s1364)) && ((_tokenPurchaseMinimum_s1364) <= (_tokenCapOfPrivateSale_s1364)))) {
revert := true;
return;
}
assume ((_tokenPrice_s1364) >= (0));
if (!((_tokenPrice_s1364) > (0))) {
revert := true;
return;
}
assume ((_openingTime_s1364) >= (0));
assume ((now) >= (0));
if (!((_openingTime_s1364) >= (now))) {
revert := true;
return;
}
assume ((_closingTime_s1364) >= (0));
assume ((_openingTime_s1364) >= (0));
if (!((_closingTime_s1364) >= (_openingTime_s1364))) {
revert := true;
return;
}
__var_36 := null;
if (!((_companyWallet_s1364) != (null))) {
revert := true;
return;
}
__var_37 := null;
if (!((_reserveAccount_s1364) != (null))) {
revert := true;
return;
}
assume ((_limitEndTime_s1364) >= (0));
assume ((_openingTime_s1364) >= (0));
if ((_limitEndTime_s1364) > (_openingTime_s1364)) {
assume ((_tokenPurchaseLimit_s1364) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
if (!((_tokenPurchaseLimit_s1364) >= (_tokenPurchaseMinimum_s1364))) {
revert := true;
return;
}
}
assume ((__var_38) >= (0));
assume ((__var_39) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
call __var_39 := add_SafeMath__success(this, this, 0, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364);
if (revert) {
return;
}
assume ((__var_39) >= (0));
assume ((_tokenReservePerMill_s1364) >= (0));
call __var_38 := mul_SafeMath__success(this, this, 0, __var_39, _tokenReservePerMill_s1364);
if (revert) {
return;
}
rateSource_MintingCrowdsale[this] := _rateSource_s1364;
token_MintingCrowdsale[this] := _token_s1364;
assume ((tokenCapOfPublicSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
tokenCapOfPublicSale_MintingCrowdsale[this] := _tokenCapOfPublicSale_s1364;
assume ((tokenCapOfPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
tokenCapOfPrivateSale_MintingCrowdsale[this] := _tokenCapOfPrivateSale_s1364;
assume ((tokenPurchaseMinimum_MintingCrowdsale[this]) >= (0));
assume ((_tokenPurchaseMinimum_s1364) >= (0));
tokenPurchaseMinimum_MintingCrowdsale[this] := _tokenPurchaseMinimum_s1364;
assume ((tokenPurchaseLimit_MintingCrowdsale[this]) >= (0));
assume ((_tokenPurchaseLimit_s1364) >= (0));
tokenPurchaseLimit_MintingCrowdsale[this] := _tokenPurchaseLimit_s1364;
assume ((tokenReservePerMill_MintingCrowdsale[this]) >= (0));
assume ((_tokenReservePerMill_s1364) >= (0));
tokenReservePerMill_MintingCrowdsale[this] := _tokenReservePerMill_s1364;
assume ((tokenPrice_MintingCrowdsale[this]) >= (0));
assume ((_tokenPrice_s1364) >= (0));
tokenPrice_MintingCrowdsale[this] := _tokenPrice_s1364;
assume ((openingTime_MintingCrowdsale[this]) >= (0));
assume ((_openingTime_s1364) >= (0));
openingTime_MintingCrowdsale[this] := _openingTime_s1364;
assume ((closingTime_MintingCrowdsale[this]) >= (0));
assume ((_closingTime_s1364) >= (0));
closingTime_MintingCrowdsale[this] := _closingTime_s1364;
assume ((limitEndTime_MintingCrowdsale[this]) >= (0));
assume ((_limitEndTime_s1364) >= (0));
limitEndTime_MintingCrowdsale[this] := _limitEndTime_s1364;
companyWallet_MintingCrowdsale[this] := _companyWallet_s1364;
reserveAccount_MintingCrowdsale[this] := _reserveAccount_s1364;
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPublicSale_s1364) >= (0));
tokenRemainingForPublicSale_MintingCrowdsale[this] := _tokenCapOfPublicSale_s1364;
assume ((tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((_tokenCapOfPrivateSale_s1364) >= (0));
tokenRemainingForPrivateSale_MintingCrowdsale[this] := _tokenCapOfPrivateSale_s1364;
}

implementation MintingCrowdsale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref)
{
var __var_29: Ref;
var __var_30: Ref;
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: int;
var __var_39: int;
var __var_40: Ref;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MintingCrowdsale_MintingCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _rateSource_s1364, _token_s1364, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364, _tokenPurchaseMinimum_s1364, _tokenPurchaseLimit_s1364, _tokenReservePerMill_s1364, _tokenPrice_s1364, _openingTime_s1364, _closingTime_s1364, _limitEndTime_s1364, _companyWallet_s1364, _reserveAccount_s1364);
if (revert) {
return;
}
}

implementation MintingCrowdsale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s1364: Ref, _token_s1364: Ref, _tokenCapOfPublicSale_s1364: int, _tokenCapOfPrivateSale_s1364: int, _tokenPurchaseMinimum_s1364: int, _tokenPurchaseLimit_s1364: int, _tokenReservePerMill_s1364: int, _tokenPrice_s1364: int, _openingTime_s1364: int, _closingTime_s1364: int, _limitEndTime_s1364: int, _companyWallet_s1364: Ref, _reserveAccount_s1364: Ref)
{
var __var_29: Ref;
var __var_30: Ref;
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: int;
var __var_39: int;
var __var_40: Ref;
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MintingCrowdsale_MintingCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _rateSource_s1364, _token_s1364, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364, _tokenPurchaseMinimum_s1364, _tokenPurchaseLimit_s1364, _tokenReservePerMill_s1364, _tokenPrice_s1364, _openingTime_s1364, _closingTime_s1364, _limitEndTime_s1364, _companyWallet_s1364, _reserveAccount_s1364);
if (revert) {
return;
}
}

implementation FallbackMethod_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call buyTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call buyTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackMethod_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (StokrCrowdsale)) {
call buyTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call buyTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation distributeTokensViaPublicSale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref)
{
var __var_41: int;
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_41 := distributeTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__tokenRemainingForPublicSale_MintingCrowdsale[this], beneficiaries_s1390, amounts_s1390, true);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_41 := distributeTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__tokenRemainingForPublicSale_MintingCrowdsale[this], beneficiaries_s1390, amounts_s1390, true);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this] := __var_41;
assume ((__var_41) >= (0));
}

implementation distributeTokensViaPublicSale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1390: Ref, amounts_s1390: Ref)
{
var __var_41: int;
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
if ((DType[this]) == (StokrCrowdsale)) {
call __var_41 := distributeTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokenRemainingForPublicSale_MintingCrowdsale[this], beneficiaries_s1390, amounts_s1390, true);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_41 := distributeTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokenRemainingForPublicSale_MintingCrowdsale[this], beneficiaries_s1390, amounts_s1390, true);
if (revert) {
return;
}
} else {
assume (false);
}
tokenRemainingForPublicSale_MintingCrowdsale[this] := __var_41;
assume ((__var_41) >= (0));
}

implementation distributeTokensViaPrivateSale_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref)
{
var __var_42: int;
assume ((__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_42 := distributeTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this], beneficiaries_s1409, amounts_s1409, false);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_42 := distributeTokens_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this], beneficiaries_s1409, amounts_s1409, false);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this] := __var_42;
assume ((__var_42) >= (0));
}

implementation distributeTokensViaPrivateSale_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s1409: Ref, amounts_s1409: Ref)
{
var __var_42: int;
assume ((tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
if ((DType[this]) == (StokrCrowdsale)) {
call __var_42 := distributeTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokenRemainingForPrivateSale_MintingCrowdsale[this], beneficiaries_s1409, amounts_s1409, false);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_42 := distributeTokens_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokenRemainingForPrivateSale_MintingCrowdsale[this], beneficiaries_s1409, amounts_s1409, false);
if (revert) {
return;
}
} else {
assume (false);
}
tokenRemainingForPrivateSale_MintingCrowdsale[this] := __var_42;
assume ((__var_42) >= (0));
}

implementation hasClosed_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((__tmp__now) >= (0));
assume ((__tmp__closingTime_MintingCrowdsale[this]) >= (0));
__ret_0_ := (__tmp__now) >= (__tmp__closingTime_MintingCrowdsale[this]);
return;
}

implementation hasClosed_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((now) >= (0));
assume ((closingTime_MintingCrowdsale[this]) >= (0));
__ret_0_ := (now) >= (closingTime_MintingCrowdsale[this]);
return;
}

implementation isOpen_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_43: bool;
assume ((__tmp__now) >= (0));
assume ((__tmp__openingTime_MintingCrowdsale[this]) >= (0));
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_43 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_43 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := ((__tmp__now) >= (__tmp__openingTime_MintingCrowdsale[this])) && (!(__var_43));
return;
}

implementation isOpen_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_43: bool;
assume ((now) >= (0));
assume ((openingTime_MintingCrowdsale[this]) >= (0));
if ((DType[this]) == (StokrCrowdsale)) {
call __var_43 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_43 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := ((now) >= (openingTime_MintingCrowdsale[this])) && (!(__var_43));
return;
}

implementation timeRemaining_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __var_44: bool;
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_44 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_44 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (__var_44) {
__ret_0_ := 0;
return;
}
assume ((__tmp__closingTime_MintingCrowdsale[this]) >= (0));
assume ((__tmp__now) >= (0));
assume (((__tmp__closingTime_MintingCrowdsale[this]) - (__tmp__now)) >= (0));
__ret_0_ := (__tmp__closingTime_MintingCrowdsale[this]) - (__tmp__now);
return;
}

implementation timeRemaining_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __var_44: bool;
if ((DType[this]) == (StokrCrowdsale)) {
call __var_44 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_44 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (__var_44) {
__ret_0_ := 0;
return;
}
assume ((closingTime_MintingCrowdsale[this]) >= (0));
assume ((now) >= (0));
assume (((closingTime_MintingCrowdsale[this]) - (now)) >= (0));
__ret_0_ := (closingTime_MintingCrowdsale[this]) - (now);
return;
}

implementation tokenSold_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp__tokenCapOfPublicSale_MintingCrowdsale[this]) >= (0));
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((((__tmp__tokenCapOfPublicSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]))) >= (0));
assume ((__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((((__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this]))) >= (0));
assume (((((__tmp__tokenCapOfPublicSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]))) + (((__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this])))) >= (0));
__ret_0_ := (((__tmp__tokenCapOfPublicSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]))) + (((__tmp__tokenCapOfPrivateSale_MintingCrowdsale[this]) - (__tmp__tokenRemainingForPrivateSale_MintingCrowdsale[this])));
return;
}

implementation tokenSold_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((tokenCapOfPublicSale_MintingCrowdsale[this]) >= (0));
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((((tokenCapOfPublicSale_MintingCrowdsale[this]) - (tokenRemainingForPublicSale_MintingCrowdsale[this]))) >= (0));
assume ((tokenCapOfPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((tokenRemainingForPrivateSale_MintingCrowdsale[this]) >= (0));
assume ((((tokenCapOfPrivateSale_MintingCrowdsale[this]) - (tokenRemainingForPrivateSale_MintingCrowdsale[this]))) >= (0));
assume (((((tokenCapOfPublicSale_MintingCrowdsale[this]) - (tokenRemainingForPublicSale_MintingCrowdsale[this]))) + (((tokenCapOfPrivateSale_MintingCrowdsale[this]) - (tokenRemainingForPrivateSale_MintingCrowdsale[this])))) >= (0));
__ret_0_ := (((tokenCapOfPublicSale_MintingCrowdsale[this]) - (tokenRemainingForPublicSale_MintingCrowdsale[this]))) + (((tokenCapOfPrivateSale_MintingCrowdsale[this]) - (tokenRemainingForPrivateSale_MintingCrowdsale[this])));
return;
}

implementation buyTokens_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_45: bool;
var etherRate_s1567: int;
var __var_46: int;
var amount_s1567: int;
var __var_47: int;
var purchased_s1539: int;
var __var_48: int;
var __var_49: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_45 := isOpen_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_45 := isOpen_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_45)) {
revert := true;
return;
}
assume ((etherRate_s1567) >= (0));
call etherRate_s1567 := etherRate_RateSource(__tmp__rateSource_MintingCrowdsale[this], this, __var_46);
etherRate_s1567 := etherRate_s1567;
assume ((etherRate_s1567) >= (0));
if (!((etherRate_s1567) > (0))) {
revert := true;
return;
}
assume ((amount_s1567) >= (0));
assume ((__var_47) >= (0));
assume ((msgvalue_MSG) >= (0));
assume ((etherRate_s1567) >= (0));
call __var_47 := mul_SafeMath__fail(this, this, 0, msgvalue_MSG, etherRate_s1567);
if (revert) {
return;
}
assume ((__var_47) >= (0));
assume ((__tmp__tokenPrice_MintingCrowdsale[this]) >= (0));
call amount_s1567 := div_SafeMath__fail(this, this, 0, __var_47, __tmp__tokenPrice_MintingCrowdsale[this]);
if (revert) {
return;
}
amount_s1567 := amount_s1567;
assume ((amount_s1567) >= (0));
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
if (!((amount_s1567) <= (__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((amount_s1567) >= (0));
assume ((__tmp__tokenPurchaseMinimum_MintingCrowdsale[this]) >= (0));
if (!((amount_s1567) >= (__tmp__tokenPurchaseMinimum_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp__now) >= (0));
assume ((__tmp__limitEndTime_MintingCrowdsale[this]) >= (0));
if ((__tmp__now) < (__tmp__limitEndTime_MintingCrowdsale[this])) {
assume ((purchased_s1539) >= (0));
assume ((__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((amount_s1567) >= (0));
call purchased_s1539 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG], amount_s1567);
if (revert) {
return;
}
purchased_s1539 := purchased_s1539;
assume ((purchased_s1539) >= (0));
assume ((__tmp__tokenPurchaseLimit_MintingCrowdsale[this]) >= (0));
if (!((purchased_s1539) <= (__tmp__tokenPurchaseLimit_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((purchased_s1539) >= (0));
__tmp__sum[__tmp__tokenPurchased_MintingCrowdsale[this]] := (__tmp__sum[__tmp__tokenPurchased_MintingCrowdsale[this]]) - (__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]);
__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG] := purchased_s1539;
__tmp__sum[__tmp__tokenPurchased_MintingCrowdsale[this]] := (__tmp__sum[__tmp__tokenPurchased_MintingCrowdsale[this]]) + (__tmp__M_Ref_int[__tmp__tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]);
}
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((amount_s1567) >= (0));
call __var_48 := sub_SafeMath__fail(this, this, 0, __tmp__tokenRemainingForPublicSale_MintingCrowdsale[this], amount_s1567);
if (revert) {
return;
}
__tmp__tokenRemainingForPublicSale_MintingCrowdsale[this] := __var_48;
assume ((__var_48) >= (0));
assume ((amount_s1567) >= (0));
if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_49, msgsender_MSG, amount_s1567);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_49, msgsender_MSG, amount_s1567);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call forwardFunds_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation buyTokens_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_45: bool;
var etherRate_s1567: int;
var __var_46: int;
var amount_s1567: int;
var __var_47: int;
var purchased_s1539: int;
var __var_48: int;
var __var_49: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (StokrCrowdsale)) {
call __var_45 := isOpen_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_45 := isOpen_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_45)) {
revert := true;
return;
}
assume ((etherRate_s1567) >= (0));
call etherRate_s1567 := etherRate_RateSource(rateSource_MintingCrowdsale[this], this, __var_46);
etherRate_s1567 := etherRate_s1567;
assume ((etherRate_s1567) >= (0));
if (!((etherRate_s1567) > (0))) {
revert := true;
return;
}
assume ((amount_s1567) >= (0));
assume ((__var_47) >= (0));
assume ((msgvalue_MSG) >= (0));
assume ((etherRate_s1567) >= (0));
call __var_47 := mul_SafeMath__success(this, this, 0, msgvalue_MSG, etherRate_s1567);
if (revert) {
return;
}
assume ((__var_47) >= (0));
assume ((tokenPrice_MintingCrowdsale[this]) >= (0));
call amount_s1567 := div_SafeMath__success(this, this, 0, __var_47, tokenPrice_MintingCrowdsale[this]);
if (revert) {
return;
}
amount_s1567 := amount_s1567;
assume ((amount_s1567) >= (0));
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
if (!((amount_s1567) <= (tokenRemainingForPublicSale_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((amount_s1567) >= (0));
assume ((tokenPurchaseMinimum_MintingCrowdsale[this]) >= (0));
if (!((amount_s1567) >= (tokenPurchaseMinimum_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((now) >= (0));
assume ((limitEndTime_MintingCrowdsale[this]) >= (0));
if ((now) < (limitEndTime_MintingCrowdsale[this])) {
assume ((purchased_s1539) >= (0));
assume ((M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((amount_s1567) >= (0));
call purchased_s1539 := add_SafeMath__success(this, this, 0, M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG], amount_s1567);
if (revert) {
return;
}
purchased_s1539 := purchased_s1539;
assume ((purchased_s1539) >= (0));
assume ((tokenPurchaseLimit_MintingCrowdsale[this]) >= (0));
if (!((purchased_s1539) <= (tokenPurchaseLimit_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((purchased_s1539) >= (0));
sum[tokenPurchased_MintingCrowdsale[this]] := (sum[tokenPurchased_MintingCrowdsale[this]]) - (M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]);
M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG] := purchased_s1539;
sum[tokenPurchased_MintingCrowdsale[this]] := (sum[tokenPurchased_MintingCrowdsale[this]]) + (M_Ref_int[tokenPurchased_MintingCrowdsale[this]][msgsender_MSG]);
}
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((tokenRemainingForPublicSale_MintingCrowdsale[this]) >= (0));
assume ((amount_s1567) >= (0));
call __var_48 := sub_SafeMath__success(this, this, 0, tokenRemainingForPublicSale_MintingCrowdsale[this], amount_s1567);
if (revert) {
return;
}
tokenRemainingForPublicSale_MintingCrowdsale[this] := __var_48;
assume ((__var_48) >= (0));
assume ((amount_s1567) >= (0));
if ((DType[token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_49, msgsender_MSG, amount_s1567);
if (revert) {
return;
}
} else if ((DType[token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_49, msgsender_MSG, amount_s1567);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call forwardFunds_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokenPurchase_MintingCrowdsale"} (true);
}

implementation changeClosingTime_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int)
{
var __var_50: bool;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_50 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_50 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_50))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((__tmp__now) >= (0));
if (!((_newClosingTime_s1615) > (__tmp__now))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((__tmp__openingTime_MintingCrowdsale[this]) >= (0));
if (!((_newClosingTime_s1615) > (__tmp__openingTime_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((__tmp__openingTime_MintingCrowdsale[this]) >= (0));
assume (((_newClosingTime_s1615) - (__tmp__openingTime_MintingCrowdsale[this])) >= (0));
assume ((__tmp__MAXOFFERINGPERIOD_MintingCrowdsale[this]) >= (0));
if (!(((_newClosingTime_s1615) - (__tmp__openingTime_MintingCrowdsale[this])) <= (__tmp__MAXOFFERINGPERIOD_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp__closingTime_MintingCrowdsale[this]) >= (0));
assume ((_newClosingTime_s1615) >= (0));
__tmp__closingTime_MintingCrowdsale[this] := _newClosingTime_s1615;
}

implementation changeClosingTime_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newClosingTime_s1615: int)
{
var __var_50: bool;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (StokrCrowdsale)) {
call __var_50 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_50 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_50))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((now) >= (0));
if (!((_newClosingTime_s1615) > (now))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((openingTime_MintingCrowdsale[this]) >= (0));
if (!((_newClosingTime_s1615) > (openingTime_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((_newClosingTime_s1615) >= (0));
assume ((openingTime_MintingCrowdsale[this]) >= (0));
assume (((_newClosingTime_s1615) - (openingTime_MintingCrowdsale[this])) >= (0));
assume ((MAXOFFERINGPERIOD_MintingCrowdsale[this]) >= (0));
if (!(((_newClosingTime_s1615) - (openingTime_MintingCrowdsale[this])) <= (MAXOFFERINGPERIOD_MintingCrowdsale[this]))) {
revert := true;
return;
}
assert {:EventEmitted "ClosingTimeChange_MintingCrowdsale"} (true);
assume ((closingTime_MintingCrowdsale[this]) >= (0));
assume ((_newClosingTime_s1615) >= (0));
closingTime_MintingCrowdsale[this] := _newClosingTime_s1615;
}

implementation finalize_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_51: bool;
var __var_52: int;
var __var_53: int;
var __var_54: int;
var __var_55: int;
var __var_56: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__tmp__isFinalized_MintingCrowdsale[this]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_51 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_51 := hasClosed_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_51)) {
revert := true;
return;
}
assume ((__tmp__tokenReservePerMill_MintingCrowdsale[this]) >= (0));
if ((__tmp__tokenReservePerMill_MintingCrowdsale[this]) > (0)) {
assume ((__var_53) >= (0));
assume ((__var_54) >= (0));
assume ((__var_55) >= (0));
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_55 := tokenSold_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MintingCrowdsale)) {
call __var_55 := tokenSold_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_55) >= (0));
assume ((__tmp__tokenReservePerMill_MintingCrowdsale[this]) >= (0));
call __var_54 := mul_SafeMath__fail(this, this, 0, __var_55, __tmp__tokenReservePerMill_MintingCrowdsale[this]);
if (revert) {
return;
}
assume ((__var_54) >= (0));
call __var_53 := div_SafeMath__fail(this, this, 0, __var_54, 1000);
if (revert) {
return;
}
assume ((__var_53) >= (0));
if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_52, __tmp__reserveAccount_MintingCrowdsale[this], __var_53);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_52, __tmp__reserveAccount_MintingCrowdsale[this], __var_53);
if (revert) {
return;
}
} else {
assume (false);
}
}
if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (StokrToken)) {
call finishMinting_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_56);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (MintableToken)) {
call finishMinting_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_56);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__isFinalized_MintingCrowdsale[this] := true;
}

implementation finalize_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_51: bool;
var __var_52: int;
var __var_53: int;
var __var_54: int;
var __var_55: int;
var __var_56: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(isFinalized_MintingCrowdsale[this]))) {
revert := true;
return;
}
if ((DType[this]) == (StokrCrowdsale)) {
call __var_51 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_51 := hasClosed_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_51)) {
revert := true;
return;
}
assume ((tokenReservePerMill_MintingCrowdsale[this]) >= (0));
if ((tokenReservePerMill_MintingCrowdsale[this]) > (0)) {
assume ((__var_53) >= (0));
assume ((__var_54) >= (0));
assume ((__var_55) >= (0));
if ((DType[this]) == (StokrCrowdsale)) {
call __var_55 := tokenSold_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MintingCrowdsale)) {
call __var_55 := tokenSold_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_55) >= (0));
assume ((tokenReservePerMill_MintingCrowdsale[this]) >= (0));
call __var_54 := mul_SafeMath__success(this, this, 0, __var_55, tokenReservePerMill_MintingCrowdsale[this]);
if (revert) {
return;
}
assume ((__var_54) >= (0));
call __var_53 := div_SafeMath__success(this, this, 0, __var_54, 1000);
if (revert) {
return;
}
assume ((__var_53) >= (0));
if ((DType[token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_52, reserveAccount_MintingCrowdsale[this], __var_53);
if (revert) {
return;
}
} else if ((DType[token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_52, reserveAccount_MintingCrowdsale[this], __var_53);
if (revert) {
return;
}
} else {
assume (false);
}
}
if ((DType[token_MintingCrowdsale[this]]) == (StokrToken)) {
call finishMinting_MintableToken__success(token_MintingCrowdsale[this], this, __var_56);
if (revert) {
return;
}
} else if ((DType[token_MintingCrowdsale[this]]) == (MintableToken)) {
call finishMinting_MintableToken__success(token_MintingCrowdsale[this], this, __var_56);
if (revert) {
return;
}
} else {
assume (false);
}
isFinalized_MintingCrowdsale[this] := true;
assert {:EventEmitted "Finalization_MintingCrowdsale"} (true);
}

implementation distributeTokens_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenRemaining_s1755: int, beneficiaries_s1755: Ref, amounts_s1755: Ref, isPublicSale_s1755: bool) returns (__ret_0_: int)
{
var tmp_s1754: int;
var i_s1751: int;
var beneficiary_s1750: Ref;
var amount_s1750: int;
var __var_57: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__tmp__isFinalized_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp__Length[beneficiaries_s1755]) >= (0));
assume ((__tmp__Length[amounts_s1755]) >= (0));
if (!((__tmp__Length[beneficiaries_s1755]) == (__tmp__Length[amounts_s1755]))) {
revert := true;
return;
}
assume ((tmp_s1754) >= (0));
assume ((tokenRemaining_s1755) >= (0));
tmp_s1754 := tokenRemaining_s1755;
assume ((i_s1751) >= (0));
assume ((__tmp__Length[beneficiaries_s1755]) >= (0));
assume ((i_s1751) >= (0));
i_s1751 := 0;
while ((i_s1751) < (__tmp__Length[beneficiaries_s1755]))
{
assume ((i_s1751) >= (0));
beneficiary_s1750 := __tmp__M_int_Ref[beneficiaries_s1755][i_s1751];
assume ((amount_s1750) >= (0));
assume ((i_s1751) >= (0));
assume ((__tmp__M_int_int[amounts_s1755][i_s1751]) >= (0));
amount_s1750 := __tmp__M_int_int[amounts_s1755][i_s1751];
assume ((amount_s1750) >= (0));
assume ((tokenRemaining_s1755) >= (0));
if (!((amount_s1750) <= (tokenRemaining_s1755))) {
revert := true;
return;
}
assume ((tmp_s1754) >= (0));
assume ((tmp_s1754) >= (0));
assume ((amount_s1750) >= (0));
call tmp_s1754 := sub_SafeMath__fail(this, this, 0, tmp_s1754, amount_s1750);
if (revert) {
return;
}
tmp_s1754 := tmp_s1754;
assume ((amount_s1750) >= (0));
if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_57, beneficiary_s1750, amount_s1750);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__fail(__tmp__token_MintingCrowdsale[this], this, __var_57, beneficiary_s1750, amount_s1750);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((i_s1751) >= (0));
i_s1751 := (i_s1751) + (1);
assume ((i_s1751) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((tmp_s1754) >= (0));
__ret_0_ := tmp_s1754;
return;
}

implementation distributeTokens_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenRemaining_s1755: int, beneficiaries_s1755: Ref, amounts_s1755: Ref, isPublicSale_s1755: bool) returns (__ret_0_: int)
{
var tmp_s1754: int;
var i_s1751: int;
var beneficiary_s1750: Ref;
var amount_s1750: int;
var __var_57: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(isFinalized_MintingCrowdsale[this]))) {
revert := true;
return;
}
assume ((Length[beneficiaries_s1755]) >= (0));
assume ((Length[amounts_s1755]) >= (0));
if (!((Length[beneficiaries_s1755]) == (Length[amounts_s1755]))) {
revert := true;
return;
}
assume ((tmp_s1754) >= (0));
assume ((tokenRemaining_s1755) >= (0));
tmp_s1754 := tokenRemaining_s1755;
assume ((i_s1751) >= (0));
assume ((Length[beneficiaries_s1755]) >= (0));
assume ((i_s1751) >= (0));
i_s1751 := 0;
while ((i_s1751) < (Length[beneficiaries_s1755]))
{
assume ((i_s1751) >= (0));
beneficiary_s1750 := M_int_Ref[beneficiaries_s1755][i_s1751];
assume ((amount_s1750) >= (0));
assume ((i_s1751) >= (0));
assume ((M_int_int[amounts_s1755][i_s1751]) >= (0));
amount_s1750 := M_int_int[amounts_s1755][i_s1751];
assume ((amount_s1750) >= (0));
assume ((tokenRemaining_s1755) >= (0));
if (!((amount_s1750) <= (tokenRemaining_s1755))) {
revert := true;
return;
}
assume ((tmp_s1754) >= (0));
assume ((tmp_s1754) >= (0));
assume ((amount_s1750) >= (0));
call tmp_s1754 := sub_SafeMath__success(this, this, 0, tmp_s1754, amount_s1750);
if (revert) {
return;
}
tmp_s1754 := tmp_s1754;
assume ((amount_s1750) >= (0));
if ((DType[token_MintingCrowdsale[this]]) == (StokrToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_57, beneficiary_s1750, amount_s1750);
if (revert) {
return;
}
} else if ((DType[token_MintingCrowdsale[this]]) == (MintableToken)) {
call mint_MintableToken__success(token_MintingCrowdsale[this], this, __var_57, beneficiary_s1750, amount_s1750);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokenDistribution_MintingCrowdsale"} (true);
assume ((i_s1751) >= (0));
i_s1751 := (i_s1751) + (1);
assume ((i_s1751) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((tmp_s1754) >= (0));
__ret_0_ := tmp_s1754;
return;
}

implementation forwardFunds_MintingCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_58: int;
var __var_59: Ref;
var __var_60: bool;
__var_58 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_58 := (__var_58) - (gas);
__var_59 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_60 := send__fail(this, __tmp__companyWallet_MintingCrowdsale[this], __tmp__Balance[this]);
if (!(__var_60)) {
revert := true;
return;
}
gas := (__var_58) + (gas);
}

implementation forwardFunds_MintingCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_58: int;
var __var_59: Ref;
var __var_60: bool;
__var_58 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_58 := (__var_58) - (gas);
__var_59 := this;
assume ((Balance[this]) >= (0));
call __var_60 := send__success(this, companyWallet_MintingCrowdsale[this], Balance[this]);
if (!(__var_60)) {
revert := true;
return;
}
gas := (__var_58) + (gas);
}

implementation TokenRecoverable_TokenRecoverable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__tokenRecoverer_TokenRecoverable[this] := null;
// end of initialization
if ((__tmp__DType[this]) == (StokrToken)) {
call setTokenRecoverer_TokenRecoverable__fail(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TokenRecoverable)) {
call setTokenRecoverer_TokenRecoverable__fail(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation TokenRecoverable_TokenRecoverable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
tokenRecoverer_TokenRecoverable[this] := null;
// end of initialization
if ((DType[this]) == (StokrToken)) {
call setTokenRecoverer_TokenRecoverable__success(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
} else if ((DType[this]) == (TokenRecoverable)) {
call setTokenRecoverer_TokenRecoverable__success(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation TokenRecoverable_TokenRecoverable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref)
{
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TokenRecoverable_TokenRecoverable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
}

implementation TokenRecoverable_TokenRecoverable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenRecoverer_s1808: Ref)
{
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TokenRecoverable_TokenRecoverable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
if (revert) {
return;
}
}

implementation setTokenRecoverer_TokenRecoverable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref)
{
var __var_61: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_61 := null;
if (!((_newTokenRecoverer_s1839) != (null))) {
revert := true;
return;
}
if ((_newTokenRecoverer_s1839) != (__tmp__tokenRecoverer_TokenRecoverable[this])) {
__tmp__tokenRecoverer_TokenRecoverable[this] := _newTokenRecoverer_s1839;
}
}

implementation setTokenRecoverer_TokenRecoverable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newTokenRecoverer_s1839: Ref)
{
var __var_61: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_61 := null;
if (!((_newTokenRecoverer_s1839) != (null))) {
revert := true;
return;
}
if ((_newTokenRecoverer_s1839) != (tokenRecoverer_TokenRecoverable[this])) {
assert {:EventEmitted "TokenRecovererChange_TokenRecoverable"} (true);
tokenRecoverer_TokenRecoverable[this] := _newTokenRecoverer_s1839;
}
}

implementation StokrToken_StokrToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref)
{
var __var_62: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__name_StokrToken[this] := -1410707839;
__tmp__symbol_StokrToken[this] := -1410707839;
__tmp__decimals_StokrToken[this] := 18;
// Make array/mapping vars distinct for allowance_
call __var_62 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__allowance__StokrToken[this] := __var_62;
// Initialize length of 1-level nested array in allowance_
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]] := zeroRefRefArr();
__tmp__M_Ref_int[null] := zeroRefIntArr();
// end of initialization
__tmp__name_StokrToken[this] := _name_s1901;
__tmp__symbol_StokrToken[this] := _symbol_s1901;
}

implementation StokrToken_StokrToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref)
{
var __var_62: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
name_StokrToken[this] := -1410707839;
symbol_StokrToken[this] := -1410707839;
decimals_StokrToken[this] := 18;
// Make array/mapping vars distinct for allowance_
call __var_62 := FreshRefGenerator__success();
if (revert) {
return;
}
allowance__StokrToken[this] := __var_62;
// Initialize length of 1-level nested array in allowance_
M_Ref_Ref[allowance__StokrToken[this]] := zeroRefRefArr();
M_Ref_int[null] := zeroRefIntArr();
// end of initialization
name_StokrToken[this] := _name_s1901;
symbol_StokrToken[this] := _symbol_s1901;
}

implementation StokrToken_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref)
{
var __var_62: Ref;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ProfitSharing_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s1901, _profitDistributor_s1901);
if (revert) {
return;
}
call Whitelisted_Whitelisted__fail(this, msgsender_MSG, msgvalue_MSG, _whitelist_s1901);
if (revert) {
return;
}
call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TokenRecoverable_TokenRecoverable__fail(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1901);
if (revert) {
return;
}
call StokrToken_StokrToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1901, _symbol_s1901, _whitelist_s1901, _profitDepositor_s1901, _profitDistributor_s1901, _tokenRecoverer_s1901);
if (revert) {
return;
}
}

implementation StokrToken_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _name_s1901: int, _symbol_s1901: int, _whitelist_s1901: Ref, _profitDepositor_s1901: Ref, _profitDistributor_s1901: Ref, _tokenRecoverer_s1901: Ref)
{
var __var_62: Ref;
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ProfitSharing_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s1901, _profitDistributor_s1901);
if (revert) {
return;
}
call Whitelisted_Whitelisted__success(this, msgsender_MSG, msgvalue_MSG, _whitelist_s1901);
if (revert) {
return;
}
call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TokenRecoverable_TokenRecoverable__success(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1901);
if (revert) {
return;
}
call StokrToken_StokrToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _name_s1901, _symbol_s1901, _whitelist_s1901, _profitDepositor_s1901, _profitDistributor_s1901, _tokenRecoverer_s1901);
if (revert) {
return;
}
}

implementation destruct_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_63: bool;
var __var_64: Ref;
var __var_65: int;
var __var_66: Ref;
var __var_67: int;
call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_64 := this;
assume ((__tmp__Balance[this]) >= (0));
__var_65 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_65 := (__var_65) - (gas);
assume ((__var_67) >= (0));
__var_67 := BoogieRefToInt(__tmp__owner_Ownable[this]);
assume ((BoogieRefToInt(__tmp__owner_Ownable[this])) >= (0));
__var_66 := ConstantToRef(BoogieRefToInt(__tmp__owner_Ownable[this]));
call __var_63 := send__fail(this, ConstantToRef(BoogieRefToInt(__tmp__owner_Ownable[this])), __tmp__Balance[this]);
gas := (__var_65) + (gas);
}

implementation destruct_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_63: bool;
var __var_64: Ref;
var __var_65: int;
var __var_66: Ref;
var __var_67: int;
call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assert {:EventEmitted "TokenDestroyed_StokrToken"} (true);
__var_64 := this;
assume ((Balance[this]) >= (0));
__var_65 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_65 := (__var_65) - (gas);
assume ((__var_67) >= (0));
__var_67 := BoogieRefToInt(owner_Ownable[this]);
assume ((BoogieRefToInt(owner_Ownable[this])) >= (0));
__var_66 := ConstantToRef(BoogieRefToInt(owner_Ownable[this]));
call __var_63 := send__success(this, ConstantToRef(BoogieRefToInt(owner_Ownable[this])), Balance[this]);
gas := (__var_65) + (gas);
}

implementation recoverToken_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref)
{
call onlyTokenRecoverer_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _newAddress_s1983);
if (revert) {
return;
}
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_newAddress_s1983]]) >= (0));
assume ((__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_newAddress_s1983]]) >= (0));
if (!(((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_newAddress_s1983]]) == (0)) && ((__tmp__lastTotalProfits_ProfitSharing.InvestorAccount[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_newAddress_s1983]]) == (0)))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1983);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_newAddress_s1983] := __tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_oldAddress_s1983];
}

implementation recoverToken_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _oldAddress_s1983: Ref, _newAddress_s1983: Ref)
{
call onlyTokenRecoverer_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _newAddress_s1983);
if (revert) {
return;
}
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_newAddress_s1983]]) >= (0));
assume ((lastTotalProfits_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_newAddress_s1983]]) >= (0));
if (!(((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_newAddress_s1983]]) == (0)) && ((lastTotalProfits_ProfitSharing.InvestorAccount[M_Ref_Ref[accounts_ProfitSharing[this]][_newAddress_s1983]]) == (0)))) {
revert := true;
return;
}
if ((DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1983);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_Ref[accounts_ProfitSharing[this]][_newAddress_s1983] := M_Ref_Ref[accounts_ProfitSharing[this]][_oldAddress_s1983];
assert {:EventEmitted "TokenRecovery_StokrToken"} (true);
assert {:EventEmitted "Transfer_StokrToken"} (true);
}

implementation totalSupply_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp__totalSupply__ProfitSharing[this]) >= (0));
__ret_0_ := __tmp__totalSupply__ProfitSharing[this];
return;
}

implementation totalSupply_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((totalSupply__ProfitSharing[this]) >= (0));
__ret_0_ := totalSupply__ProfitSharing[this];
return;
}

implementation balanceOf_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int)
{
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s2004]]) >= (0));
__ret_0_ := __tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_investor_s2004]];
return;
}

implementation balanceOf_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2004: Ref) returns (__ret_0_: int)
{
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s2004]]) >= (0));
__ret_0_ := Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_investor_s2004]];
return;
}

implementation allowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int)
{
var __var_68: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020]) == (null)) {
call __var_68 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020] := __var_68;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020]][_spender_s2020]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_investor_s2020]][_spender_s2020];
return;
}

implementation allowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2020: Ref, _spender_s2020: Ref) returns (__ret_0_: int)
{
var __var_68: Ref;
if ((M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020]) == (null)) {
call __var_68 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020] := __var_68;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020]][_spender_s2020]) >= (0));
__ret_0_ := M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_investor_s2020]][_spender_s2020];
return;
}

implementation approve_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool)
{
var __var_69: bool;
assume ((_value_s2037) >= (0));
call __var_69 := _approve_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2037, _value_s2037);
if (revert) {
return;
}
__ret_0_ := __var_69;
return;
}

implementation approve_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2037: Ref, _value_s2037: int) returns (__ret_0_: bool)
{
var __var_69: bool;
assume ((_value_s2037) >= (0));
call __var_69 := _approve_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2037, _value_s2037);
if (revert) {
return;
}
__ret_0_ := __var_69;
return;
}

implementation increaseAllowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool)
{
var __var_70: Ref;
var __var_71: bool;
var __var_72: int;
var __var_73: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_70 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG] := __var_70;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) >= (0));
assume ((_amount_s2076) >= (0));
assume (((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) + (_amount_s2076)) >= (0));
assume ((_amount_s2076) >= (0));
if (!(((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) + (_amount_s2076)) >= (_amount_s2076))) {
revert := true;
return;
}
assume ((__var_72) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_73 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG] := __var_73;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) >= (0));
assume ((_amount_s2076) >= (0));
call __var_72 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076], _amount_s2076);
if (revert) {
return;
}
assume ((__var_72) >= (0));
call __var_71 := _approve_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2076, __var_72);
if (revert) {
return;
}
__ret_0_ := __var_71;
return;
}

implementation increaseAllowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2076: Ref, _amount_s2076: int) returns (__ret_0_: bool)
{
var __var_70: Ref;
var __var_71: bool;
var __var_72: int;
var __var_73: Ref;
if ((M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_70 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG] := __var_70;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) >= (0));
assume ((_amount_s2076) >= (0));
assume (((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) + (_amount_s2076)) >= (0));
assume ((_amount_s2076) >= (0));
if (!(((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) + (_amount_s2076)) >= (_amount_s2076))) {
revert := true;
return;
}
assume ((__var_72) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_73 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG] := __var_73;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076]) >= (0));
assume ((_amount_s2076) >= (0));
call __var_72 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2076], _amount_s2076);
if (revert) {
return;
}
assume ((__var_72) >= (0));
call __var_71 := _approve_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2076, __var_72);
if (revert) {
return;
}
__ret_0_ := __var_71;
return;
}

implementation decreaseAllowance_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool)
{
var __var_74: Ref;
var __var_75: bool;
var __var_76: int;
var __var_77: Ref;
assume ((_amount_s2113) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_74 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG] := __var_74;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]) >= (0));
if (!((_amount_s2113) <= (__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]))) {
revert := true;
return;
}
assume ((__var_76) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_77 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG] := __var_77;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]) >= (0));
assume ((_amount_s2113) >= (0));
call __var_76 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113], _amount_s2113);
if (revert) {
return;
}
assume ((__var_76) >= (0));
call __var_75 := _approve_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2113, __var_76);
if (revert) {
return;
}
__ret_0_ := __var_75;
return;
}

implementation decreaseAllowance_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2113: Ref, _amount_s2113: int) returns (__ret_0_: bool)
{
var __var_74: Ref;
var __var_75: bool;
var __var_76: int;
var __var_77: Ref;
assume ((_amount_s2113) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_74 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG] := __var_74;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]) >= (0));
if (!((_amount_s2113) <= (M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]))) {
revert := true;
return;
}
assume ((__var_76) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]) == (null)) {
call __var_77 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG] := __var_77;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113]) >= (0));
assume ((_amount_s2113) >= (0));
call __var_76 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][msgsender_MSG]][_spender_s2113], _amount_s2113);
if (revert) {
return;
}
assume ((__var_76) >= (0));
call __var_75 := _approve_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _spender_s2113, __var_76);
if (revert) {
return;
}
__ret_0_ := __var_75;
return;
}

implementation canTransfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool)
{
var __var_78: Ref;
var __var_79: Ref;
var __var_80: bool;
var __var_81: int;
var __var_82: bool;
var __var_83: int;
__var_78 := null;
__var_79 := null;
assume ((_value_s2156) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2156]]) >= (0));
assume ((__tmp__DType[__tmp__whitelist_Whitelisted[this]]) == (Whitelist));
__var_80 := M_Ref_bool[__tmp__isWhitelisted_Whitelist[__tmp__whitelist_Whitelisted[this]]][_from_s2156];
assume ((__tmp__DType[__tmp__whitelist_Whitelisted[this]]) == (Whitelist));
__var_82 := M_Ref_bool[__tmp__isWhitelisted_Whitelist[__tmp__whitelist_Whitelisted[this]]][_to_s2156];
__ret_0_ := (((((__tmp__totalSupplyIsFixed_ProfitSharing[this]) && ((_from_s2156) != (null))) && ((_to_s2156) != (null))) && ((_value_s2156) <= (__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2156]]))) && (__var_80)) && (__var_82);
return;
}

implementation canTransfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2156: Ref, _to_s2156: Ref, _value_s2156: int) returns (__ret_0_: bool)
{
var __var_78: Ref;
var __var_79: Ref;
var __var_80: bool;
var __var_81: int;
var __var_82: bool;
var __var_83: int;
__var_78 := null;
__var_79 := null;
assume ((_value_s2156) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2156]]) >= (0));
assume ((DType[whitelist_Whitelisted[this]]) == (Whitelist));
__var_80 := M_Ref_bool[isWhitelisted_Whitelist[whitelist_Whitelisted[this]]][_from_s2156];
assume ((DType[whitelist_Whitelisted[this]]) == (Whitelist));
__var_82 := M_Ref_bool[isWhitelisted_Whitelist[whitelist_Whitelisted[this]]][_to_s2156];
__ret_0_ := (((((totalSupplyIsFixed_ProfitSharing[this]) && ((_from_s2156) != (null))) && ((_to_s2156) != (null))) && ((_value_s2156) <= (Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2156]]))) && (__var_80)) && (__var_82);
return;
}

implementation canTransferFrom_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool)
{
var __var_84: bool;
var __var_85: Ref;
assume ((_value_s2184) >= (0));
call __var_84 := canTransfer_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2184, _to_s2184, _value_s2184);
if (revert) {
return;
}
assume ((_value_s2184) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184]) == (null)) {
call __var_85 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184] := __var_85;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184]][_spender_s2184]) >= (0));
__ret_0_ := (__var_84) && ((_value_s2184) <= (__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2184]][_spender_s2184]));
return;
}

implementation canTransferFrom_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s2184: Ref, _from_s2184: Ref, _to_s2184: Ref, _value_s2184: int) returns (__ret_0_: bool)
{
var __var_84: bool;
var __var_85: Ref;
assume ((_value_s2184) >= (0));
call __var_84 := canTransfer_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s2184, _to_s2184, _value_s2184);
if (revert) {
return;
}
assume ((_value_s2184) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][_from_s2184]) == (null)) {
call __var_85 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][_from_s2184] := __var_85;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2184]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2184]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2184]][_spender_s2184]) >= (0));
__ret_0_ := (__var_84) && ((_value_s2184) <= (M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2184]][_spender_s2184]));
return;
}

implementation transfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool)
{
var __var_86: bool;
assume ((_value_s2201) >= (0));
call __var_86 := _transfer_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _to_s2201, _value_s2201);
if (revert) {
return;
}
__ret_0_ := __var_86;
return;
}

implementation transfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s2201: Ref, _value_s2201: int) returns (__ret_0_: bool)
{
var __var_86: bool;
assume ((_value_s2201) >= (0));
call __var_86 := _transfer_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _to_s2201, _value_s2201);
if (revert) {
return;
}
__ret_0_ := __var_86;
return;
}

implementation transferFrom_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool)
{
var __var_87: Ref;
var __var_88: bool;
var __var_89: int;
var __var_90: Ref;
var __var_91: bool;
assume ((_value_s2246) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]) == (null)) {
call __var_87 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246] := __var_87;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]) >= (0));
if (!((_value_s2246) <= (__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]))) {
revert := true;
return;
}
assume ((__var_89) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]) == (null)) {
call __var_90 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246] := __var_90;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]) >= (0));
assume ((_value_s2246) >= (0));
call __var_89 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2246]][msgsender_MSG], _value_s2246);
if (revert) {
return;
}
assume ((__var_89) >= (0));
call __var_88 := _approve_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2246, msgsender_MSG, __var_89);
if (revert) {
return;
}
assume ((_value_s2246) >= (0));
call __var_91 := _transfer_StokrToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2246, _to_s2246, _value_s2246);
if (revert) {
return;
}
__ret_0_ := (__var_88) && (__var_91);
return;
}

implementation transferFrom_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2246: Ref, _to_s2246: Ref, _value_s2246: int) returns (__ret_0_: bool)
{
var __var_87: Ref;
var __var_88: bool;
var __var_89: int;
var __var_90: Ref;
var __var_91: bool;
assume ((_value_s2246) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]) == (null)) {
call __var_87 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][_from_s2246] := __var_87;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]) >= (0));
if (!((_value_s2246) <= (M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]))) {
revert := true;
return;
}
assume ((__var_89) >= (0));
if ((M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]) == (null)) {
call __var_90 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][_from_s2246] := __var_90;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]][msgsender_MSG]) >= (0));
assume ((_value_s2246) >= (0));
call __var_89 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2246]][msgsender_MSG], _value_s2246);
if (revert) {
return;
}
assume ((__var_89) >= (0));
call __var_88 := _approve_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s2246, msgsender_MSG, __var_89);
if (revert) {
return;
}
assume ((_value_s2246) >= (0));
call __var_91 := _transfer_StokrToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s2246, _to_s2246, _value_s2246);
if (revert) {
return;
}
__ret_0_ := (__var_88) && (__var_91);
return;
}

implementation _approve_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2279: Ref, _spender_s2279: Ref, _value_s2279: int) returns (__ret_0_: bool)
{
var __var_92: Ref;
call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2279);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]) == (null)) {
call __var_92 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279] := __var_92;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]] := zeroRefIntArr();
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]] := 0;
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]][_spender_s2279]) >= (0));
assume ((_value_s2279) >= (0));
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]] := (__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]]) - (__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]][_spender_s2279]);
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]][_spender_s2279] := _value_s2279;
__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]] := (__tmp__sum[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]]) + (__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowance__StokrToken[this]][_from_s2279]][_spender_s2279]);
__ret_0_ := true;
return;
}

implementation _approve_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2279: Ref, _spender_s2279: Ref, _value_s2279: int) returns (__ret_0_: bool)
{
var __var_92: Ref;
call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _from_s2279);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]) == (null)) {
call __var_92 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowance__StokrToken[this]][_from_s2279] := __var_92;
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]] := zeroRefIntArr();
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]] := 0;
}
assume ((M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]][_spender_s2279]) >= (0));
assume ((_value_s2279) >= (0));
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]] := (sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]]) - (M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]][_spender_s2279]);
M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]][_spender_s2279] := _value_s2279;
sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]] := (sum[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]]) + (M_Ref_int[M_Ref_Ref[allowance__StokrToken[this]][_from_s2279]][_spender_s2279]);
assert {:EventEmitted "Approval_StokrToken"} (true);
__ret_0_ := true;
return;
}

implementation _transfer_StokrToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2360: Ref, _to_s2360: Ref, _value_s2360: int) returns (__ret_0_: bool)
{
var __var_93: Ref;
var __var_94: int;
var __var_95: int;
call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2360);
if (revert) {
return;
}
call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s2360);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_93 := null;
if (!((_to_s2360) != (null))) {
revert := true;
return;
}
assume ((_value_s2360) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
if (!((_value_s2360) <= (__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _from_s2360);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__fail(this, msgsender_MSG, msgvalue_MSG, _to_s2360);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
assume ((_value_s2360) >= (0));
call __var_94 := sub_SafeMath__fail(this, this, 0, __tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]], _value_s2360);
if (revert) {
return;
}
__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_from_s2360]] := __var_94;
assume ((__var_94) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s2360]]) >= (0));
assume ((__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s2360]]) >= (0));
assume ((_value_s2360) >= (0));
call __var_95 := add_SafeMath__fail(this, this, 0, __tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s2360]], _value_s2360);
if (revert) {
return;
}
__tmp__Balance[__tmp__M_Ref_Ref[__tmp__accounts_ProfitSharing[this]][_to_s2360]] := __var_95;
assume ((__var_95) >= (0));
__ret_0_ := true;
return;
}

implementation _transfer_StokrToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s2360: Ref, _to_s2360: Ref, _value_s2360: int) returns (__ret_0_: bool)
{
var __var_93: Ref;
var __var_94: int;
var __var_95: int;
call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _from_s2360);
if (revert) {
return;
}
call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s2360);
if (revert) {
return;
}
call onlyWhenTotalSupplyIsFixed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_93 := null;
if (!((_to_s2360) != (null))) {
revert := true;
return;
}
assume ((_value_s2360) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
if (!((_value_s2360) <= (Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]]))) {
revert := true;
return;
}
if ((DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _from_s2360);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (StokrToken)) {
call updateProfitShare_ProfitSharing__success(this, msgsender_MSG, msgvalue_MSG, _to_s2360);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]]) >= (0));
assume ((_value_s2360) >= (0));
call __var_94 := sub_SafeMath__success(this, this, 0, Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]], _value_s2360);
if (revert) {
return;
}
Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_from_s2360]] := __var_94;
assume ((__var_94) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s2360]]) >= (0));
assume ((Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s2360]]) >= (0));
assume ((_value_s2360) >= (0));
call __var_95 := add_SafeMath__success(this, this, 0, Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s2360]], _value_s2360);
if (revert) {
return;
}
Balance[M_Ref_Ref[accounts_ProfitSharing[this]][_to_s2360]] := __var_95;
assume ((__var_95) >= (0));
assert {:EventEmitted "Transfer_StokrToken"} (true);
__ret_0_ := true;
return;
}

implementation StokrCrowdsale_StokrCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref)
{
var __var_96: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__tokenGoal_StokrCrowdsale[this] := 0;
// Make array/mapping vars distinct for investments
call __var_96 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__investments_StokrCrowdsale[this] := __var_96;
// Initialize Integer mapping investments
__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]] := zeroRefIntArr();
__tmp__sum[__tmp__investments_StokrCrowdsale[this]] := 0;
// end of initialization
assume ((_tokenGoal_s2436) >= (0));
assume ((_tokenCapOfPublicSale_s2436) >= (0));
assume ((_tokenCapOfPrivateSale_s2436) >= (0));
assume (((_tokenCapOfPublicSale_s2436) + (_tokenCapOfPrivateSale_s2436)) >= (0));
if (!((_tokenGoal_s2436) <= ((_tokenCapOfPublicSale_s2436) + (_tokenCapOfPrivateSale_s2436)))) {
revert := true;
return;
}
assume ((__tmp__tokenGoal_StokrCrowdsale[this]) >= (0));
assume ((_tokenGoal_s2436) >= (0));
__tmp__tokenGoal_StokrCrowdsale[this] := _tokenGoal_s2436;
}

implementation StokrCrowdsale_StokrCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref)
{
var __var_96: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
tokenGoal_StokrCrowdsale[this] := 0;
// Make array/mapping vars distinct for investments
call __var_96 := FreshRefGenerator__success();
if (revert) {
return;
}
investments_StokrCrowdsale[this] := __var_96;
// Initialize Integer mapping investments
M_Ref_int[investments_StokrCrowdsale[this]] := zeroRefIntArr();
sum[investments_StokrCrowdsale[this]] := 0;
// end of initialization
assume ((_tokenGoal_s2436) >= (0));
assume ((_tokenCapOfPublicSale_s2436) >= (0));
assume ((_tokenCapOfPrivateSale_s2436) >= (0));
assume (((_tokenCapOfPublicSale_s2436) + (_tokenCapOfPrivateSale_s2436)) >= (0));
if (!((_tokenGoal_s2436) <= ((_tokenCapOfPublicSale_s2436) + (_tokenCapOfPrivateSale_s2436)))) {
revert := true;
return;
}
assume ((tokenGoal_StokrCrowdsale[this]) >= (0));
assume ((_tokenGoal_s2436) >= (0));
tokenGoal_StokrCrowdsale[this] := _tokenGoal_s2436;
}

implementation StokrCrowdsale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref)
{
var __var_96: Ref;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_tokenCapOfPublicSale_s2436) >= (0));
assume ((_tokenCapOfPrivateSale_s2436) >= (0));
assume ((_tokenPurchaseMinimum_s2436) >= (0));
assume ((_tokenPurchaseLimit_s2436) >= (0));
assume ((_tokenReservePerMill_s2436) >= (0));
assume ((_tokenPrice_s2436) >= (0));
assume ((_openingTime_s2436) >= (0));
assume ((_closingTime_s2436) >= (0));
assume ((_limitEndTime_s2436) >= (0));
call MintingCrowdsale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
if (revert) {
return;
}
call StokrCrowdsale_StokrCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenGoal_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
if (revert) {
return;
}
}

implementation StokrCrowdsale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rateSource_s2436: Ref, _token_s2436: Ref, _tokenCapOfPublicSale_s2436: int, _tokenCapOfPrivateSale_s2436: int, _tokenGoal_s2436: int, _tokenPurchaseMinimum_s2436: int, _tokenPurchaseLimit_s2436: int, _tokenReservePerMill_s2436: int, _tokenPrice_s2436: int, _openingTime_s2436: int, _closingTime_s2436: int, _limitEndTime_s2436: int, _companyWallet_s2436: Ref, _reserveAccount_s2436: Ref)
{
var __var_96: Ref;
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_tokenCapOfPublicSale_s2436) >= (0));
assume ((_tokenCapOfPrivateSale_s2436) >= (0));
assume ((_tokenPurchaseMinimum_s2436) >= (0));
assume ((_tokenPurchaseLimit_s2436) >= (0));
assume ((_tokenReservePerMill_s2436) >= (0));
assume ((_tokenPrice_s2436) >= (0));
assume ((_openingTime_s2436) >= (0));
assume ((_closingTime_s2436) >= (0));
assume ((_limitEndTime_s2436) >= (0));
call MintingCrowdsale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
if (revert) {
return;
}
call StokrCrowdsale_StokrCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenGoal_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
if (revert) {
return;
}
}

implementation goalReached_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_97: int;
assume ((__var_97) >= (0));
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call __var_97 := tokenSold_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_97) >= (0));
assume ((__tmp__tokenGoal_StokrCrowdsale[this]) >= (0));
__ret_0_ := (__var_97) >= (__tmp__tokenGoal_StokrCrowdsale[this]);
return;
}

implementation goalReached_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_97: int;
assume ((__var_97) >= (0));
if ((DType[this]) == (StokrCrowdsale)) {
call __var_97 := tokenSold_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_97) >= (0));
assume ((tokenGoal_StokrCrowdsale[this]) >= (0));
__ret_0_ := (__var_97) >= (tokenGoal_StokrCrowdsale[this]);
return;
}

implementation distributeRefunds_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref)
{
var i_s2471: int;
assume ((i_s2471) >= (0));
assume ((__tmp__Length[_investors_s2473]) >= (0));
assume ((i_s2471) >= (0));
i_s2471 := 0;
while ((i_s2471) < (__tmp__Length[_investors_s2473]))
{
assume ((i_s2471) >= (0));
call refundInvestor_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_investors_s2473][i_s2471]);
if (revert) {
return;
}
assume ((i_s2471) >= (0));
i_s2471 := (i_s2471) + (1);
assume ((i_s2471) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation distributeRefunds_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investors_s2473: Ref)
{
var i_s2471: int;
assume ((i_s2471) >= (0));
assume ((Length[_investors_s2473]) >= (0));
assume ((i_s2471) >= (0));
i_s2471 := 0;
while ((i_s2471) < (Length[_investors_s2473]))
{
assume ((i_s2471) >= (0));
call refundInvestor_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_investors_s2473][i_s2471]);
if (revert) {
return;
}
assume ((i_s2471) >= (0));
i_s2471 := (i_s2471) + (1);
assume ((i_s2471) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation claimRefund_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call refundInvestor_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
}

implementation claimRefund_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call refundInvestor_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
}

implementation finalize_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_98: int;
var __var_99: bool;
var __var_100: Ref;
var __var_101: Ref;
var __var_102: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call finalize_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call __var_99 := goalReached_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(__var_99)) {
__var_101 := __tmp__token_MintingCrowdsale[this];
assume ((__tmp__DType[__tmp__token_MintingCrowdsale[this]]) == (StokrToken));
__var_100 := __tmp__token_MintingCrowdsale[this];
call destruct_StokrToken__fail(__var_100, this, __var_102);
if (revert) {
return;
}
}
}

implementation finalize_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_98: int;
var __var_99: bool;
var __var_100: Ref;
var __var_101: Ref;
var __var_102: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (StokrCrowdsale)) {
call finalize_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call __var_99 := goalReached_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(__var_99)) {
__var_101 := token_MintingCrowdsale[this];
assume ((DType[token_MintingCrowdsale[this]]) == (StokrToken));
__var_100 := token_MintingCrowdsale[this];
call destruct_StokrToken__success(__var_100, this, __var_102);
if (revert) {
return;
}
}
}

implementation distributeTokensViaPublicSale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref)
{
var __var_103: int;
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call distributeTokensViaPublicSale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2526, amounts_s2526);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation distributeTokensViaPublicSale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2526: Ref, amounts_s2526: Ref)
{
var __var_103: int;
if ((DType[this]) == (StokrCrowdsale)) {
call distributeTokensViaPublicSale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2526, amounts_s2526);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation distributeTokensViaPrivateSale_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref)
{
var __var_104: int;
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call distributeTokensViaPrivateSale_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2546, amounts_s2546);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation distributeTokensViaPrivateSale_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiaries_s2546: Ref, amounts_s2546: Ref)
{
var __var_104: int;
if ((DType[this]) == (StokrCrowdsale)) {
call distributeTokensViaPrivateSale_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2546, amounts_s2546);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (StokrCrowdsale)) {
call forwardFunds_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation forwardFunds_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_105: bool;
var __var_106: int;
var __var_107: int;
call __var_105 := goalReached_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_105) {
if ((__tmp__DType[this]) == (StokrCrowdsale)) {
call forwardFunds_MintingCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
} else {
assume ((__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((msgvalue_MSG) >= (0));
call __var_107 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG], msgvalue_MSG);
if (revert) {
return;
}
__tmp__sum[__tmp__investments_StokrCrowdsale[this]] := (__tmp__sum[__tmp__investments_StokrCrowdsale[this]]) - (__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG]);
__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG] := __var_107;
__tmp__sum[__tmp__investments_StokrCrowdsale[this]] := (__tmp__sum[__tmp__investments_StokrCrowdsale[this]]) + (__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][msgsender_MSG]);
assume ((__var_107) >= (0));
}
}

implementation forwardFunds_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_105: bool;
var __var_106: int;
var __var_107: int;
call __var_105 := goalReached_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_105) {
if ((DType[this]) == (StokrCrowdsale)) {
call forwardFunds_MintingCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
} else {
assume ((M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG]) >= (0));
assume ((msgvalue_MSG) >= (0));
call __var_107 := add_SafeMath__success(this, this, 0, M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG], msgvalue_MSG);
if (revert) {
return;
}
sum[investments_StokrCrowdsale[this]] := (sum[investments_StokrCrowdsale[this]]) - (M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG]);
M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG] := __var_107;
sum[investments_StokrCrowdsale[this]] := (sum[investments_StokrCrowdsale[this]]) + (M_Ref_int[investments_StokrCrowdsale[this]][msgsender_MSG]);
assume ((__var_107) >= (0));
}
}

implementation refundInvestor_StokrCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2620: Ref)
{
var __var_108: bool;
var investment_s2619: int;
var __var_109: int;
var __var_110: bool;
if (!(__tmp__isFinalized_MintingCrowdsale[this])) {
revert := true;
return;
}
call __var_108 := goalReached_StokrCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_108))) {
revert := true;
return;
}
assume ((investment_s2619) >= (0));
assume ((__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620]) >= (0));
investment_s2619 := __tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620];
assume ((investment_s2619) >= (0));
if ((investment_s2619) > (0)) {
assume ((__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620]) >= (0));
__tmp__sum[__tmp__investments_StokrCrowdsale[this]] := (__tmp__sum[__tmp__investments_StokrCrowdsale[this]]) - (__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620]);
__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620] := 0;
__tmp__sum[__tmp__investments_StokrCrowdsale[this]] := (__tmp__sum[__tmp__investments_StokrCrowdsale[this]]) + (__tmp__M_Ref_int[__tmp__investments_StokrCrowdsale[this]][_investor_s2620]);
__var_109 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_109 := (__var_109) - (gas);
assume ((investment_s2619) >= (0));
call __var_110 := send__fail(this, _investor_s2620, investment_s2619);
if (!(__var_110)) {
revert := true;
return;
}
gas := (__var_109) + (gas);
}
}

implementation refundInvestor_StokrCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s2620: Ref)
{
var __var_108: bool;
var investment_s2619: int;
var __var_109: int;
var __var_110: bool;
if (!(isFinalized_MintingCrowdsale[this])) {
revert := true;
return;
}
call __var_108 := goalReached_StokrCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_108))) {
revert := true;
return;
}
assume ((investment_s2619) >= (0));
assume ((M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620]) >= (0));
investment_s2619 := M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620];
assume ((investment_s2619) >= (0));
if ((investment_s2619) > (0)) {
assume ((M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620]) >= (0));
sum[investments_StokrCrowdsale[this]] := (sum[investments_StokrCrowdsale[this]]) - (M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620]);
M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620] := 0;
sum[investments_StokrCrowdsale[this]] := (sum[investments_StokrCrowdsale[this]]) + (M_Ref_int[investments_StokrCrowdsale[this]][_investor_s2620]);
__var_109 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_109 := (__var_109) - (gas);
assume ((investment_s2619) >= (0));
call __var_110 := send__success(this, _investor_s2620, investment_s2619);
if (!(__var_110)) {
revert := true;
return;
}
gas := (__var_109) + (gas);
assert {:EventEmitted "InvestorRefund_StokrCrowdsale"} (true);
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (StokrCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (StokrToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (TokenRecoverable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (MintingCrowdsale)) {
call FallbackMethod_MintingCrowdsale__fail(to, from, amount);
if (revert) {
return;
}
} else if ((__tmp__DType[to]) == (RateSource)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (MintableToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ProfitSharing)) {
call FallbackMethod_ProfitSharing__fail(to, from, amount);
if (revert) {
return;
}
} else if ((__tmp__DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Whitelisted)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Whitelist)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__fail(from, to, amount);
if (revert) {
return;
}
}
}

implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (StokrCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (StokrToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (TokenRecoverable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (MintingCrowdsale)) {
call FallbackMethod_MintingCrowdsale__success(to, from, amount);
if (revert) {
return;
}
} else if ((DType[to]) == (RateSource)) {
assume ((amount) == (0));
} else if ((DType[to]) == (MintableToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ProfitSharing)) {
call FallbackMethod_ProfitSharing__success(to, from, amount);
if (revert) {
return;
}
} else if ((DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Whitelisted)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Whitelist)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__success(from, to, amount);
if (revert) {
return;
}
}
}

implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
}

implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
var __snap___tmp__Balance: [Ref]int;
var __snap___tmp__DType: [Ref]ContractName;
var __snap___tmp__Alloc: [Ref]bool;
var __snap___tmp__balance_ADDR: [Ref]int;
var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
var __snap___tmp__sum: [Ref]int;
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__M_int_Ref: [Ref][int]Ref;
var __snap___tmp__M_int_int: [Ref][int]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__owner_Ownable: [Ref]Ref;
var __snap___tmp__newOwner_Ownable: [Ref]Ref;
var __snap___tmp__admins_Whitelist: [Ref]Ref;
var __snap___tmp__isWhitelisted_Whitelist: [Ref]Ref;
var __snap___tmp__whitelist_Whitelisted: [Ref]Ref;
var __snap___tmp__balance_ProfitSharing.InvestorAccount: [Ref]int;
var __snap___tmp__lastTotalProfits_ProfitSharing.InvestorAccount: [Ref]int;
var __snap___tmp__profitShare_ProfitSharing.InvestorAccount: [Ref]int;
var __snap___tmp__accounts_ProfitSharing: [Ref]Ref;
var __snap___tmp__profitDepositor_ProfitSharing: [Ref]Ref;
var __snap___tmp__profitDistributor_ProfitSharing: [Ref]Ref;
var __snap___tmp__totalProfits_ProfitSharing: [Ref]int;
var __snap___tmp__totalSupplyIsFixed_ProfitSharing: [Ref]bool;
var __snap___tmp__totalSupply__ProfitSharing: [Ref]int;
var __snap___tmp__minter_MintableToken: [Ref]Ref;
var __snap___tmp__numberOfInvestors_MintableToken: [Ref]int;
var __snap___tmp__MAXOFFERINGPERIOD_MintingCrowdsale: [Ref]int;
var __snap___tmp__rateSource_MintingCrowdsale: [Ref]Ref;
var __snap___tmp__token_MintingCrowdsale: [Ref]Ref;
var __snap___tmp__tokenCapOfPublicSale_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenCapOfPrivateSale_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenRemainingForPublicSale_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenRemainingForPrivateSale_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenPrice_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenPurchaseMinimum_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenPurchaseLimit_MintingCrowdsale: [Ref]int;
var __snap___tmp__tokenPurchased_MintingCrowdsale: [Ref]Ref;
var __snap___tmp__openingTime_MintingCrowdsale: [Ref]int;
var __snap___tmp__closingTime_MintingCrowdsale: [Ref]int;
var __snap___tmp__limitEndTime_MintingCrowdsale: [Ref]int;
var __snap___tmp__companyWallet_MintingCrowdsale: [Ref]Ref;
var __snap___tmp__tokenReservePerMill_MintingCrowdsale: [Ref]int;
var __snap___tmp__reserveAccount_MintingCrowdsale: [Ref]Ref;
var __snap___tmp__isFinalized_MintingCrowdsale: [Ref]bool;
var __snap___tmp__tokenRecoverer_TokenRecoverable: [Ref]Ref;
var __snap___tmp__name_StokrToken: [Ref]int;
var __snap___tmp__symbol_StokrToken: [Ref]int;
var __snap___tmp__decimals_StokrToken: [Ref]int;
var __snap___tmp__allowance__StokrToken: [Ref]Ref;
var __snap___tmp__tokenGoal_StokrCrowdsale: [Ref]int;
var __snap___tmp__investments_StokrCrowdsale: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
__snap___tmp__sum := __tmp__sum;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__M_int_Ref := __tmp__M_int_Ref;
__snap___tmp__M_int_int := __tmp__M_int_int;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__owner_Ownable := __tmp__owner_Ownable;
__snap___tmp__newOwner_Ownable := __tmp__newOwner_Ownable;
__snap___tmp__admins_Whitelist := __tmp__admins_Whitelist;
__snap___tmp__isWhitelisted_Whitelist := __tmp__isWhitelisted_Whitelist;
__snap___tmp__whitelist_Whitelisted := __tmp__whitelist_Whitelisted;
__snap___tmp__balance_ProfitSharing.InvestorAccount := __tmp__balance_ProfitSharing.InvestorAccount;
__snap___tmp__lastTotalProfits_ProfitSharing.InvestorAccount := __tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
__snap___tmp__profitShare_ProfitSharing.InvestorAccount := __tmp__profitShare_ProfitSharing.InvestorAccount;
__snap___tmp__accounts_ProfitSharing := __tmp__accounts_ProfitSharing;
__snap___tmp__profitDepositor_ProfitSharing := __tmp__profitDepositor_ProfitSharing;
__snap___tmp__profitDistributor_ProfitSharing := __tmp__profitDistributor_ProfitSharing;
__snap___tmp__totalProfits_ProfitSharing := __tmp__totalProfits_ProfitSharing;
__snap___tmp__totalSupplyIsFixed_ProfitSharing := __tmp__totalSupplyIsFixed_ProfitSharing;
__snap___tmp__totalSupply__ProfitSharing := __tmp__totalSupply__ProfitSharing;
__snap___tmp__minter_MintableToken := __tmp__minter_MintableToken;
__snap___tmp__numberOfInvestors_MintableToken := __tmp__numberOfInvestors_MintableToken;
__snap___tmp__MAXOFFERINGPERIOD_MintingCrowdsale := __tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
__snap___tmp__rateSource_MintingCrowdsale := __tmp__rateSource_MintingCrowdsale;
__snap___tmp__token_MintingCrowdsale := __tmp__token_MintingCrowdsale;
__snap___tmp__tokenCapOfPublicSale_MintingCrowdsale := __tmp__tokenCapOfPublicSale_MintingCrowdsale;
__snap___tmp__tokenCapOfPrivateSale_MintingCrowdsale := __tmp__tokenCapOfPrivateSale_MintingCrowdsale;
__snap___tmp__tokenRemainingForPublicSale_MintingCrowdsale := __tmp__tokenRemainingForPublicSale_MintingCrowdsale;
__snap___tmp__tokenRemainingForPrivateSale_MintingCrowdsale := __tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
__snap___tmp__tokenPrice_MintingCrowdsale := __tmp__tokenPrice_MintingCrowdsale;
__snap___tmp__tokenPurchaseMinimum_MintingCrowdsale := __tmp__tokenPurchaseMinimum_MintingCrowdsale;
__snap___tmp__tokenPurchaseLimit_MintingCrowdsale := __tmp__tokenPurchaseLimit_MintingCrowdsale;
__snap___tmp__tokenPurchased_MintingCrowdsale := __tmp__tokenPurchased_MintingCrowdsale;
__snap___tmp__openingTime_MintingCrowdsale := __tmp__openingTime_MintingCrowdsale;
__snap___tmp__closingTime_MintingCrowdsale := __tmp__closingTime_MintingCrowdsale;
__snap___tmp__limitEndTime_MintingCrowdsale := __tmp__limitEndTime_MintingCrowdsale;
__snap___tmp__companyWallet_MintingCrowdsale := __tmp__companyWallet_MintingCrowdsale;
__snap___tmp__tokenReservePerMill_MintingCrowdsale := __tmp__tokenReservePerMill_MintingCrowdsale;
__snap___tmp__reserveAccount_MintingCrowdsale := __tmp__reserveAccount_MintingCrowdsale;
__snap___tmp__isFinalized_MintingCrowdsale := __tmp__isFinalized_MintingCrowdsale;
__snap___tmp__tokenRecoverer_TokenRecoverable := __tmp__tokenRecoverer_TokenRecoverable;
__snap___tmp__name_StokrToken := __tmp__name_StokrToken;
__snap___tmp__symbol_StokrToken := __tmp__symbol_StokrToken;
__snap___tmp__decimals_StokrToken := __tmp__decimals_StokrToken;
__snap___tmp__allowance__StokrToken := __tmp__allowance__StokrToken;
__snap___tmp__tokenGoal_StokrCrowdsale := __tmp__tokenGoal_StokrCrowdsale;
__snap___tmp__investments_StokrCrowdsale := __tmp__investments_StokrCrowdsale;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
__tmp__sum := __snap___tmp__sum;
__tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
__tmp__M_Ref_int := __snap___tmp__M_Ref_int;
__tmp__M_int_Ref := __snap___tmp__M_int_Ref;
__tmp__M_int_int := __snap___tmp__M_int_int;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__owner_Ownable := __snap___tmp__owner_Ownable;
__tmp__newOwner_Ownable := __snap___tmp__newOwner_Ownable;
__tmp__admins_Whitelist := __snap___tmp__admins_Whitelist;
__tmp__isWhitelisted_Whitelist := __snap___tmp__isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := __snap___tmp__whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := __snap___tmp__balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := __snap___tmp__lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := __snap___tmp__profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := __snap___tmp__accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := __snap___tmp__profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := __snap___tmp__profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := __snap___tmp__totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := __snap___tmp__totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := __snap___tmp__totalSupply__ProfitSharing;
__tmp__minter_MintableToken := __snap___tmp__minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := __snap___tmp__numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := __snap___tmp__MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := __snap___tmp__rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := __snap___tmp__token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := __snap___tmp__tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := __snap___tmp__tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := __snap___tmp__tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := __snap___tmp__tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := __snap___tmp__tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := __snap___tmp__tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := __snap___tmp__tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := __snap___tmp__tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := __snap___tmp__openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := __snap___tmp__closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := __snap___tmp__limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := __snap___tmp__companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := __snap___tmp__tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := __snap___tmp__reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := __snap___tmp__isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := __snap___tmp__tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := __snap___tmp__name_StokrToken;
__tmp__symbol_StokrToken := __snap___tmp__symbol_StokrToken;
__tmp__decimals_StokrToken := __snap___tmp__decimals_StokrToken;
__tmp__allowance__StokrToken := __snap___tmp__allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := __snap___tmp__tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := __snap___tmp__investments_StokrCrowdsale;
revert := false;
} else {
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
havoc __exception;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_int_Ref := M_int_Ref;
__tmp__M_int_int := M_int_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__admins_Whitelist := admins_Whitelist;
__tmp__isWhitelisted_Whitelist := isWhitelisted_Whitelist;
__tmp__whitelist_Whitelisted := whitelist_Whitelisted;
__tmp__balance_ProfitSharing.InvestorAccount := balance_ProfitSharing.InvestorAccount;
__tmp__lastTotalProfits_ProfitSharing.InvestorAccount := lastTotalProfits_ProfitSharing.InvestorAccount;
__tmp__profitShare_ProfitSharing.InvestorAccount := profitShare_ProfitSharing.InvestorAccount;
__tmp__accounts_ProfitSharing := accounts_ProfitSharing;
__tmp__profitDepositor_ProfitSharing := profitDepositor_ProfitSharing;
__tmp__profitDistributor_ProfitSharing := profitDistributor_ProfitSharing;
__tmp__totalProfits_ProfitSharing := totalProfits_ProfitSharing;
__tmp__totalSupplyIsFixed_ProfitSharing := totalSupplyIsFixed_ProfitSharing;
__tmp__totalSupply__ProfitSharing := totalSupply__ProfitSharing;
__tmp__minter_MintableToken := minter_MintableToken;
__tmp__numberOfInvestors_MintableToken := numberOfInvestors_MintableToken;
__tmp__MAXOFFERINGPERIOD_MintingCrowdsale := MAXOFFERINGPERIOD_MintingCrowdsale;
__tmp__rateSource_MintingCrowdsale := rateSource_MintingCrowdsale;
__tmp__token_MintingCrowdsale := token_MintingCrowdsale;
__tmp__tokenCapOfPublicSale_MintingCrowdsale := tokenCapOfPublicSale_MintingCrowdsale;
__tmp__tokenCapOfPrivateSale_MintingCrowdsale := tokenCapOfPrivateSale_MintingCrowdsale;
__tmp__tokenRemainingForPublicSale_MintingCrowdsale := tokenRemainingForPublicSale_MintingCrowdsale;
__tmp__tokenRemainingForPrivateSale_MintingCrowdsale := tokenRemainingForPrivateSale_MintingCrowdsale;
__tmp__tokenPrice_MintingCrowdsale := tokenPrice_MintingCrowdsale;
__tmp__tokenPurchaseMinimum_MintingCrowdsale := tokenPurchaseMinimum_MintingCrowdsale;
__tmp__tokenPurchaseLimit_MintingCrowdsale := tokenPurchaseLimit_MintingCrowdsale;
__tmp__tokenPurchased_MintingCrowdsale := tokenPurchased_MintingCrowdsale;
__tmp__openingTime_MintingCrowdsale := openingTime_MintingCrowdsale;
__tmp__closingTime_MintingCrowdsale := closingTime_MintingCrowdsale;
__tmp__limitEndTime_MintingCrowdsale := limitEndTime_MintingCrowdsale;
__tmp__companyWallet_MintingCrowdsale := companyWallet_MintingCrowdsale;
__tmp__tokenReservePerMill_MintingCrowdsale := tokenReservePerMill_MintingCrowdsale;
__tmp__reserveAccount_MintingCrowdsale := reserveAccount_MintingCrowdsale;
__tmp__isFinalized_MintingCrowdsale := isFinalized_MintingCrowdsale;
__tmp__tokenRecoverer_TokenRecoverable := tokenRecoverer_TokenRecoverable;
__tmp__name_StokrToken := name_StokrToken;
__tmp__symbol_StokrToken := symbol_StokrToken;
__tmp__decimals_StokrToken := decimals_StokrToken;
__tmp__allowance__StokrToken := allowance__StokrToken;
__tmp__tokenGoal_StokrCrowdsale := tokenGoal_StokrCrowdsale;
__tmp__investments_StokrCrowdsale := investments_StokrCrowdsale;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
revert := false;
} else {
if ((Balance[from]) >= (amount)) {
call FallbackDispatch__success(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation onlyAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(__tmp__M_Ref_bool[__tmp__admins_Whitelist[this]][msgsender_MSG])) {
revert := true;
return;
}
}

implementation onlyAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(M_Ref_bool[admins_Whitelist[this]][msgsender_MSG])) {
revert := true;
return;
}
}

implementation onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s436: Ref)
{
var __var_8: bool;
var __var_9: int;
assume ((__tmp__DType[__tmp__whitelist_Whitelisted[this]]) == (Whitelist));
__var_8 := M_Ref_bool[__tmp__isWhitelisted_Whitelist[__tmp__whitelist_Whitelisted[this]]][_address_s436];
if (!(__var_8)) {
revert := true;
return;
}
}

implementation onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s436: Ref)
{
var __var_8: bool;
var __var_9: int;
assume ((DType[whitelist_Whitelisted[this]]) == (Whitelist));
__var_8 := M_Ref_bool[isWhitelisted_Whitelist[whitelist_Whitelisted[this]]][_address_s436];
if (!(__var_8)) {
revert := true;
return;
}
}

implementation onlyProfitDepositor_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__profitDepositor_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation onlyProfitDepositor_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (profitDepositor_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation onlyProfitDistributor_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__profitDistributor_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation onlyProfitDistributor_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (profitDistributor_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation onlyWhenTotalSupplyIsFixed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(__tmp__totalSupplyIsFixed_ProfitSharing[this])) {
revert := true;
return;
}
}

implementation onlyWhenTotalSupplyIsFixed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(totalSupplyIsFixed_ProfitSharing[this])) {
revert := true;
return;
}
}

implementation onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__minter_MintableToken[this]))) {
revert := true;
return;
}
}

implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (minter_MintableToken[this]))) {
revert := true;
return;
}
}

implementation canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(__tmp__totalSupplyIsFixed_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(totalSupplyIsFixed_ProfitSharing[this]))) {
revert := true;
return;
}
}

implementation onlyTokenRecoverer_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__tokenRecoverer_TokenRecoverable[this]))) {
revert := true;
return;
}
}

implementation onlyTokenRecoverer_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (tokenRecoverer_TokenRecoverable[this]))) {
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (SafeMath));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}

implementation CorralChoice_Ownable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((((((((DType[this]) == (Ownable)) || ((DType[this]) == (Whitelist))) || ((DType[this]) == (Whitelisted))) || ((DType[this]) == (ProfitSharing))) || ((DType[this]) == (MintableToken))) || ((DType[this]) == (MintingCrowdsale))) || ((DType[this]) == (TokenRecoverable))) || ((DType[this]) == (StokrToken))) || ((DType[this]) == (StokrCrowdsale)));
gas := (gas) - (53000);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
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
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _admin_s287: Ref;
var _admin_s319: Ref;
var _investors_s365: Ref;
var _investors_s410: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _admin_s287;
havoc _admin_s319;
havoc _investors_s365;
havoc _investors_s410;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call addAdmin_Whitelist(this, msgsender_MSG, msgvalue_MSG, _admin_s287);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call removeAdmin_Whitelist(this, msgsender_MSG, msgvalue_MSG, _admin_s319);
} else if ((choice) == (2)) {
call _investors_s365 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call addToWhitelist_Whitelist(this, msgsender_MSG, msgvalue_MSG, _investors_s365);
} else if ((choice) == (1)) {
call _investors_s410 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call removeFromWhitelist_Whitelist(this, msgsender_MSG, msgvalue_MSG, _investors_s410);
}
}

implementation CorralEntry_Whitelist()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Whitelist));
gas := (gas) - (53000);
call Whitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Whitelist(this);
}
}

implementation CorralChoice_Whitelisted(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _whitelist_s446: Ref;
var _newWhitelist_s489: Ref;
var _admin_s287: Ref;
var _admin_s319: Ref;
var _investors_s365: Ref;
var _investors_s410: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _whitelist_s446;
havoc _newWhitelist_s489;
havoc _admin_s287;
havoc _admin_s319;
havoc _investors_s365;
havoc _investors_s410;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call addAdmin_Whitelist(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _admin_s287);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call removeAdmin_Whitelist(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _admin_s319);
} else if ((choice) == (6)) {
call _investors_s365 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call addToWhitelist_Whitelist(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _investors_s365);
} else if ((choice) == (5)) {
call _investors_s410 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call removeFromWhitelist_Whitelist(whitelist_Whitelisted[this], msgsender_MSG, msgvalue_MSG, _investors_s410);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setWhitelist_Whitelisted(this, msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
}
}

implementation CorralEntry_Whitelisted()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _whitelist_s446: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (Whitelisted)) || ((DType[this]) == (MintableToken))) || ((DType[this]) == (StokrToken)));
gas := (gas) - (53000);
call Whitelisted_Whitelisted(this, msgsender_MSG, msgvalue_MSG, _whitelist_s446);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Whitelisted(this);
}
}

implementation CorralChoice_ERC20(this: Ref)
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (ERC20)) || ((DType[this]) == (MintableToken))) || ((DType[this]) == (StokrToken)));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20(this);
}
}

implementation CorralChoice_ProfitSharing(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _profitDepositor_s666: Ref;
var _profitDistributor_s666: Ref;
var _newProfitDepositor_s704: Ref;
var _newProfitDistributor_s735: Ref;
var _investor_s806: Ref;
var __ret_0_profitShareOwing: int;
var _investor_s839: Ref;
var _beneficiary_s862: Ref;
var _investors_s893: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _profitDepositor_s666;
havoc _profitDistributor_s666;
havoc _newProfitDepositor_s704;
havoc _newProfitDistributor_s735;
havoc _investor_s806;
havoc __ret_0_profitShareOwing;
havoc _investor_s839;
havoc _beneficiary_s862;
havoc _investors_s893;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDepositor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDistributor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call depositProfit_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_profitShareOwing := profitShareOwing_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s806);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call updateProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShareTo_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
} else if ((choice) == (1)) {
call _investors_s893 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShares_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investors_s893);
}
}

implementation CorralEntry_ProfitSharing()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _profitDepositor_s666: Ref;
var _profitDistributor_s666: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (ProfitSharing)) || ((DType[this]) == (MintableToken))) || ((DType[this]) == (StokrToken)));
gas := (gas) - (53000);
call ProfitSharing_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _profitDepositor_s666, _profitDistributor_s666);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ProfitSharing(this);
}
}

implementation CorralChoice_MintableToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _whitelist_s446: Ref;
var _newWhitelist_s489: Ref;
var __ret_0_totalSupply: int;
var _owner_s519: Ref;
var __ret_0_balanceOf: int;
var _owner_s528: Ref;
var _spender_s528: Ref;
var __ret_0_allowance: int;
var _spender_s537: Ref;
var _value_s537: int;
var __ret_0_approve: bool;
var _to_s546: Ref;
var _value_s546: int;
var __ret_0_transfer: bool;
var _from_s557: Ref;
var _to_s557: Ref;
var _value_s557: int;
var __ret_0_transferFrom: bool;
var _profitDepositor_s666: Ref;
var _profitDistributor_s666: Ref;
var _newProfitDepositor_s704: Ref;
var _newProfitDistributor_s735: Ref;
var _investor_s806: Ref;
var __ret_0_profitShareOwing: int;
var _investor_s839: Ref;
var _beneficiary_s862: Ref;
var _investors_s893: Ref;
var _minter_s1004: Ref;
var _to_s1063: Ref;
var _amount_s1063: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _whitelist_s446;
havoc _newWhitelist_s489;
havoc __ret_0_totalSupply;
havoc _owner_s519;
havoc __ret_0_balanceOf;
havoc _owner_s528;
havoc _spender_s528;
havoc __ret_0_allowance;
havoc _spender_s537;
havoc _value_s537;
havoc __ret_0_approve;
havoc _to_s546;
havoc _value_s546;
havoc __ret_0_transfer;
havoc _from_s557;
havoc _to_s557;
havoc _value_s557;
havoc __ret_0_transferFrom;
havoc _profitDepositor_s666;
havoc _profitDistributor_s666;
havoc _newProfitDepositor_s704;
havoc _newProfitDistributor_s735;
havoc _investor_s806;
havoc __ret_0_profitShareOwing;
havoc _investor_s839;
havoc _beneficiary_s862;
havoc _investors_s893;
havoc _minter_s1004;
havoc _to_s1063;
havoc _amount_s1063;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (21)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (20)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (19)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (18)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setWhitelist_Whitelisted(this, msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
} else if ((choice) == (17)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (16)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, _owner_s519);
} else if ((choice) == (15)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, _owner_s528, _spender_s528);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, _spender_s537, _value_s537);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, _to_s546, _value_s546);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, _from_s557, _to_s557, _value_s557);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDepositor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDistributor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call depositProfit_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_profitShareOwing := profitShareOwing_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s806);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call updateProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShareTo_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
} else if ((choice) == (4)) {
call _investors_s893 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShares_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investors_s893);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setMinter_MintableToken(this, msgsender_MSG, msgvalue_MSG, _minter_s1004);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1063, _amount_s1063);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_MintableToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (MintableToken)) || ((DType[this]) == (StokrToken)));
gas := (gas) - (53000);
call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_MintableToken(this);
}
}

implementation CorralChoice_RateSource(this: Ref)
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_RateSource()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (RateSource));
gas := (gas) - (53000);
call RateSource_RateSource__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RateSource(this);
}
}

implementation CorralChoice_MintingCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _rateSource_s1364: Ref;
var _token_s1364: Ref;
var _tokenCapOfPublicSale_s1364: int;
var _tokenCapOfPrivateSale_s1364: int;
var _tokenPurchaseMinimum_s1364: int;
var _tokenPurchaseLimit_s1364: int;
var _tokenReservePerMill_s1364: int;
var _tokenPrice_s1364: int;
var _openingTime_s1364: int;
var _closingTime_s1364: int;
var _limitEndTime_s1364: int;
var _companyWallet_s1364: Ref;
var _reserveAccount_s1364: Ref;
var beneficiaries_s1390: Ref;
var amounts_s1390: Ref;
var beneficiaries_s1409: Ref;
var amounts_s1409: Ref;
var __ret_0_hasClosed: bool;
var __ret_0_isOpen: bool;
var __ret_0_timeRemaining: int;
var __ret_0_tokenSold: int;
var _newClosingTime_s1615: int;
var _whitelist_s446: Ref;
var _newWhitelist_s489: Ref;
var __ret_0_totalSupply: int;
var _owner_s519: Ref;
var __ret_0_balanceOf: int;
var _owner_s528: Ref;
var _spender_s528: Ref;
var __ret_0_allowance: int;
var _spender_s537: Ref;
var _value_s537: int;
var __ret_0_approve: bool;
var _to_s546: Ref;
var _value_s546: int;
var __ret_0_transfer: bool;
var _from_s557: Ref;
var _to_s557: Ref;
var _value_s557: int;
var __ret_0_transferFrom: bool;
var _profitDepositor_s666: Ref;
var _profitDistributor_s666: Ref;
var _newProfitDepositor_s704: Ref;
var _newProfitDistributor_s735: Ref;
var _investor_s806: Ref;
var __ret_0_profitShareOwing: int;
var _investor_s839: Ref;
var _beneficiary_s862: Ref;
var _investors_s893: Ref;
var _minter_s1004: Ref;
var _to_s1063: Ref;
var _amount_s1063: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _rateSource_s1364;
havoc _token_s1364;
havoc _tokenCapOfPublicSale_s1364;
havoc _tokenCapOfPrivateSale_s1364;
havoc _tokenPurchaseMinimum_s1364;
havoc _tokenPurchaseLimit_s1364;
havoc _tokenReservePerMill_s1364;
havoc _tokenPrice_s1364;
havoc _openingTime_s1364;
havoc _closingTime_s1364;
havoc _limitEndTime_s1364;
havoc _companyWallet_s1364;
havoc _reserveAccount_s1364;
havoc beneficiaries_s1390;
havoc amounts_s1390;
havoc beneficiaries_s1409;
havoc amounts_s1409;
havoc __ret_0_hasClosed;
havoc __ret_0_isOpen;
havoc __ret_0_timeRemaining;
havoc __ret_0_tokenSold;
havoc _newClosingTime_s1615;
havoc _whitelist_s446;
havoc _newWhitelist_s489;
havoc __ret_0_totalSupply;
havoc _owner_s519;
havoc __ret_0_balanceOf;
havoc _owner_s528;
havoc _spender_s528;
havoc __ret_0_allowance;
havoc _spender_s537;
havoc _value_s537;
havoc __ret_0_approve;
havoc _to_s546;
havoc _value_s546;
havoc __ret_0_transfer;
havoc _from_s557;
havoc _to_s557;
havoc _value_s557;
havoc __ret_0_transferFrom;
havoc _profitDepositor_s666;
havoc _profitDistributor_s666;
havoc _newProfitDepositor_s704;
havoc _newProfitDistributor_s735;
havoc _investor_s806;
havoc __ret_0_profitShareOwing;
havoc _investor_s839;
havoc _beneficiary_s862;
havoc _investors_s893;
havoc _minter_s1004;
havoc _to_s1063;
havoc _amount_s1063;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (33)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (32)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (31)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (30)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setWhitelist_Whitelisted(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
} else if ((choice) == (29)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (28)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _owner_s519);
} else if ((choice) == (27)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _owner_s528, _spender_s528);
} else if ((choice) == (26)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _spender_s537, _value_s537);
} else if ((choice) == (25)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _to_s546, _value_s546);
} else if ((choice) == (24)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _from_s557, _to_s557, _value_s557);
} else if ((choice) == (23)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDepositor_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
} else if ((choice) == (22)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDistributor_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
} else if ((choice) == (21)) {
gas := (gas) - (21000);
call depositProfit_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (20)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_profitShareOwing := profitShareOwing_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _investor_s806);
} else if ((choice) == (19)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call updateProfitShare_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _investor_s839);
} else if ((choice) == (18)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShare_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (17)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShareTo_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
} else if ((choice) == (16)) {
call _investors_s893 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShares_ProfitSharing(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _investors_s893);
} else if ((choice) == (15)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setMinter_MintableToken(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _minter_s1004);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call mint_MintableToken(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG, _to_s1063, _amount_s1063);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call finishMinting_MintableToken(token_MintingCrowdsale[this], msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call beneficiaries_s1390 := FreshRefGenerator__success();
call amounts_s1390 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call distributeTokensViaPublicSale_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1390, amounts_s1390);
} else if ((choice) == (8)) {
call beneficiaries_s1409 := FreshRefGenerator__success();
call amounts_s1409 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call distributeTokensViaPrivateSale_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s1409, amounts_s1409);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_timeRemaining := timeRemaining_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_tokenSold := tokenSold_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call buyTokens_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call changeClosingTime_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG, _newClosingTime_s1615);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call finalize_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_MintingCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _rateSource_s1364: Ref;
var _token_s1364: Ref;
var _tokenCapOfPublicSale_s1364: int;
var _tokenCapOfPrivateSale_s1364: int;
var _tokenPurchaseMinimum_s1364: int;
var _tokenPurchaseLimit_s1364: int;
var _tokenReservePerMill_s1364: int;
var _tokenPrice_s1364: int;
var _openingTime_s1364: int;
var _closingTime_s1364: int;
var _limitEndTime_s1364: int;
var _companyWallet_s1364: Ref;
var _reserveAccount_s1364: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (MintingCrowdsale)) || ((DType[this]) == (StokrCrowdsale)));
gas := (gas) - (53000);
call MintingCrowdsale_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG, _rateSource_s1364, _token_s1364, _tokenCapOfPublicSale_s1364, _tokenCapOfPrivateSale_s1364, _tokenPurchaseMinimum_s1364, _tokenPurchaseLimit_s1364, _tokenReservePerMill_s1364, _tokenPrice_s1364, _openingTime_s1364, _closingTime_s1364, _limitEndTime_s1364, _companyWallet_s1364, _reserveAccount_s1364);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_MintingCrowdsale(this);
}
}

implementation CorralChoice_TokenRecoverable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _tokenRecoverer_s1808: Ref;
var _newTokenRecoverer_s1839: Ref;
var _oldAddress_s1846: Ref;
var _newAddress_s1846: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _tokenRecoverer_s1808;
havoc _newTokenRecoverer_s1839;
havoc _oldAddress_s1846;
havoc _newAddress_s1846;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setTokenRecoverer_TokenRecoverable(this, msgsender_MSG, msgvalue_MSG, _newTokenRecoverer_s1839);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call recoverToken_TokenRecoverable(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1846, _newAddress_s1846);
}
}

implementation CorralEntry_TokenRecoverable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _tokenRecoverer_s1808: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (TokenRecoverable)) || ((DType[this]) == (StokrToken)));
gas := (gas) - (53000);
call TokenRecoverable_TokenRecoverable(this, msgsender_MSG, msgvalue_MSG, _tokenRecoverer_s1808);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_TokenRecoverable(this);
}
}

implementation CorralChoice_StokrToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _whitelist_s446: Ref;
var _newWhitelist_s489: Ref;
var __ret_0_totalSupply: int;
var _investor_s2004: Ref;
var __ret_0_balanceOf: int;
var _investor_s2020: Ref;
var _spender_s2020: Ref;
var __ret_0_allowance: int;
var _spender_s2037: Ref;
var _value_s2037: int;
var __ret_0_approve: bool;
var _to_s2201: Ref;
var _value_s2201: int;
var __ret_0_transfer: bool;
var _from_s2246: Ref;
var _to_s2246: Ref;
var _value_s2246: int;
var __ret_0_transferFrom: bool;
var _profitDepositor_s666: Ref;
var _profitDistributor_s666: Ref;
var _newProfitDepositor_s704: Ref;
var _newProfitDistributor_s735: Ref;
var _investor_s806: Ref;
var __ret_0_profitShareOwing: int;
var _investor_s839: Ref;
var _beneficiary_s862: Ref;
var _investors_s893: Ref;
var _minter_s1004: Ref;
var _to_s1063: Ref;
var _amount_s1063: int;
var _tokenRecoverer_s1808: Ref;
var _newTokenRecoverer_s1839: Ref;
var _oldAddress_s1983: Ref;
var _newAddress_s1983: Ref;
var _name_s1901: int;
var _symbol_s1901: int;
var _whitelist_s1901: Ref;
var _profitDepositor_s1901: Ref;
var _profitDistributor_s1901: Ref;
var _tokenRecoverer_s1901: Ref;
var _spender_s2076: Ref;
var _amount_s2076: int;
var __ret_0_increaseAllowance: bool;
var _spender_s2113: Ref;
var _amount_s2113: int;
var __ret_0_decreaseAllowance: bool;
var _from_s2156: Ref;
var _to_s2156: Ref;
var _value_s2156: int;
var __ret_0_canTransfer: bool;
var _spender_s2184: Ref;
var _from_s2184: Ref;
var _to_s2184: Ref;
var _value_s2184: int;
var __ret_0_canTransferFrom: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _whitelist_s446;
havoc _newWhitelist_s489;
havoc __ret_0_totalSupply;
havoc _investor_s2004;
havoc __ret_0_balanceOf;
havoc _investor_s2020;
havoc _spender_s2020;
havoc __ret_0_allowance;
havoc _spender_s2037;
havoc _value_s2037;
havoc __ret_0_approve;
havoc _to_s2201;
havoc _value_s2201;
havoc __ret_0_transfer;
havoc _from_s2246;
havoc _to_s2246;
havoc _value_s2246;
havoc __ret_0_transferFrom;
havoc _profitDepositor_s666;
havoc _profitDistributor_s666;
havoc _newProfitDepositor_s704;
havoc _newProfitDistributor_s735;
havoc _investor_s806;
havoc __ret_0_profitShareOwing;
havoc _investor_s839;
havoc _beneficiary_s862;
havoc _investors_s893;
havoc _minter_s1004;
havoc _to_s1063;
havoc _amount_s1063;
havoc _tokenRecoverer_s1808;
havoc _newTokenRecoverer_s1839;
havoc _oldAddress_s1983;
havoc _newAddress_s1983;
havoc _name_s1901;
havoc _symbol_s1901;
havoc _whitelist_s1901;
havoc _profitDepositor_s1901;
havoc _profitDistributor_s1901;
havoc _tokenRecoverer_s1901;
havoc _spender_s2076;
havoc _amount_s2076;
havoc __ret_0_increaseAllowance;
havoc _spender_s2113;
havoc _amount_s2113;
havoc __ret_0_decreaseAllowance;
havoc _from_s2156;
havoc _to_s2156;
havoc _value_s2156;
havoc __ret_0_canTransfer;
havoc _spender_s2184;
havoc _from_s2184;
havoc _to_s2184;
havoc _value_s2184;
havoc __ret_0_canTransferFrom;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (28)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (27)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (26)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (25)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setWhitelist_Whitelisted(this, msgsender_MSG, msgvalue_MSG, _newWhitelist_s489);
} else if ((choice) == (24)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_StokrToken(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (23)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_StokrToken(this, msgsender_MSG, msgvalue_MSG, _investor_s2004);
} else if ((choice) == (22)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StokrToken(this, msgsender_MSG, msgvalue_MSG, _investor_s2020, _spender_s2020);
} else if ((choice) == (21)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_StokrToken(this, msgsender_MSG, msgvalue_MSG, _spender_s2037, _value_s2037);
} else if ((choice) == (20)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_StokrToken(this, msgsender_MSG, msgvalue_MSG, _to_s2201, _value_s2201);
} else if ((choice) == (19)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_StokrToken(this, msgsender_MSG, msgvalue_MSG, _from_s2246, _to_s2246, _value_s2246);
} else if ((choice) == (18)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDepositor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDepositor_s704);
} else if ((choice) == (17)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setProfitDistributor_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _newProfitDistributor_s735);
} else if ((choice) == (16)) {
gas := (gas) - (21000);
call depositProfit_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (15)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_profitShareOwing := profitShareOwing_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s806);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call updateProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investor_s839);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShare_ProfitSharing(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShareTo_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s862);
} else if ((choice) == (11)) {
call _investors_s893 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call withdrawProfitShares_ProfitSharing(this, msgsender_MSG, msgvalue_MSG, _investors_s893);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setMinter_MintableToken(this, msgsender_MSG, msgvalue_MSG, _minter_s1004);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1063, _amount_s1063);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call setTokenRecoverer_TokenRecoverable(this, msgsender_MSG, msgvalue_MSG, _newTokenRecoverer_s1839);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call recoverToken_StokrToken(this, msgsender_MSG, msgvalue_MSG, _oldAddress_s1983, _newAddress_s1983);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call destruct_StokrToken(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_StokrToken(this, msgsender_MSG, msgvalue_MSG, _spender_s2076, _amount_s2076);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_StokrToken(this, msgsender_MSG, msgvalue_MSG, _spender_s2113, _amount_s2113);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_canTransfer := canTransfer_StokrToken(this, msgsender_MSG, msgvalue_MSG, _from_s2156, _to_s2156, _value_s2156);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_canTransferFrom := canTransferFrom_StokrToken(this, msgsender_MSG, msgvalue_MSG, _spender_s2184, _from_s2184, _to_s2184, _value_s2184);
}
}

implementation CorralEntry_StokrToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _name_s1901: int;
var _symbol_s1901: int;
var _whitelist_s1901: Ref;
var _profitDepositor_s1901: Ref;
var _profitDistributor_s1901: Ref;
var _tokenRecoverer_s1901: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (StokrToken));
gas := (gas) - (53000);
call StokrToken_StokrToken(this, msgsender_MSG, msgvalue_MSG, _name_s1901, _symbol_s1901, _whitelist_s1901, _profitDepositor_s1901, _profitDistributor_s1901, _tokenRecoverer_s1901);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_StokrToken(this);
}
}

implementation CorralChoice_StokrCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _newOwner_s146: Ref;
var _newOwner_s167: Ref;
var _rateSource_s1364: Ref;
var _token_s1364: Ref;
var _tokenCapOfPublicSale_s1364: int;
var _tokenCapOfPrivateSale_s1364: int;
var _tokenPurchaseMinimum_s1364: int;
var _tokenPurchaseLimit_s1364: int;
var _tokenReservePerMill_s1364: int;
var _tokenPrice_s1364: int;
var _openingTime_s1364: int;
var _closingTime_s1364: int;
var _limitEndTime_s1364: int;
var _companyWallet_s1364: Ref;
var _reserveAccount_s1364: Ref;
var beneficiaries_s2526: Ref;
var amounts_s2526: Ref;
var beneficiaries_s2546: Ref;
var amounts_s2546: Ref;
var __ret_0_hasClosed: bool;
var __ret_0_isOpen: bool;
var __ret_0_timeRemaining: int;
var __ret_0_tokenSold: int;
var _newClosingTime_s1615: int;
var _rateSource_s2436: Ref;
var _token_s2436: Ref;
var _tokenCapOfPublicSale_s2436: int;
var _tokenCapOfPrivateSale_s2436: int;
var _tokenGoal_s2436: int;
var _tokenPurchaseMinimum_s2436: int;
var _tokenPurchaseLimit_s2436: int;
var _tokenReservePerMill_s2436: int;
var _tokenPrice_s2436: int;
var _openingTime_s2436: int;
var _closingTime_s2436: int;
var _limitEndTime_s2436: int;
var _companyWallet_s2436: Ref;
var _reserveAccount_s2436: Ref;
var __ret_0_goalReached: bool;
var _investors_s2473: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _newOwner_s146;
havoc _newOwner_s167;
havoc _rateSource_s1364;
havoc _token_s1364;
havoc _tokenCapOfPublicSale_s1364;
havoc _tokenCapOfPrivateSale_s1364;
havoc _tokenPurchaseMinimum_s1364;
havoc _tokenPurchaseLimit_s1364;
havoc _tokenReservePerMill_s1364;
havoc _tokenPrice_s1364;
havoc _openingTime_s1364;
havoc _closingTime_s1364;
havoc _limitEndTime_s1364;
havoc _companyWallet_s1364;
havoc _reserveAccount_s1364;
havoc beneficiaries_s2526;
havoc amounts_s2526;
havoc beneficiaries_s2546;
havoc amounts_s2546;
havoc __ret_0_hasClosed;
havoc __ret_0_isOpen;
havoc __ret_0_timeRemaining;
havoc __ret_0_tokenSold;
havoc _newClosingTime_s1615;
havoc _rateSource_s2436;
havoc _token_s2436;
havoc _tokenCapOfPublicSale_s2436;
havoc _tokenCapOfPrivateSale_s2436;
havoc _tokenGoal_s2436;
havoc _tokenPurchaseMinimum_s2436;
havoc _tokenPurchaseLimit_s2436;
havoc _tokenReservePerMill_s2436;
havoc _tokenPrice_s2436;
havoc _openingTime_s2436;
havoc _closingTime_s2436;
havoc _limitEndTime_s2436;
havoc _companyWallet_s2436;
havoc _reserveAccount_s2436;
havoc __ret_0_goalReached;
havoc _investors_s2473;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Whitelist));
assume ((DType[msgsender_MSG]) != (Whitelisted));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (ProfitSharing));
assume ((DType[msgsender_MSG]) != (MintableToken));
assume ((DType[msgsender_MSG]) != (RateSource));
assume ((DType[msgsender_MSG]) != (MintingCrowdsale));
assume ((DType[msgsender_MSG]) != (TokenRecoverable));
assume ((DType[msgsender_MSG]) != (StokrToken));
assume ((DType[msgsender_MSG]) != (StokrCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (16)) {
call CorralChoice_MintableToken(token_MintingCrowdsale[this]);
} else if ((choice) == (15)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s146);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call transferOwnershipUnsafe_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s167);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
call beneficiaries_s2526 := FreshRefGenerator__success();
call amounts_s2526 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call distributeTokensViaPublicSale_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2526, amounts_s2526);
} else if ((choice) == (11)) {
call beneficiaries_s2546 := FreshRefGenerator__success();
call amounts_s2546 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call distributeTokensViaPrivateSale_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiaries_s2546, amounts_s2546);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_timeRemaining := timeRemaining_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_tokenSold := tokenSold_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call buyTokens_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call changeClosingTime_MintingCrowdsale(this, msgsender_MSG, msgvalue_MSG, _newClosingTime_s1615);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call finalize_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_goalReached := goalReached_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call _investors_s2473 := FreshRefGenerator__success();
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call distributeRefunds_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG, _investors_s2473);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call claimRefund_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _rateSource_s2436: Ref;
var _token_s2436: Ref;
var _tokenCapOfPublicSale_s2436: int;
var _tokenCapOfPrivateSale_s2436: int;
var _tokenGoal_s2436: int;
var _tokenPurchaseMinimum_s2436: int;
var _tokenPurchaseLimit_s2436: int;
var _tokenReservePerMill_s2436: int;
var _tokenPrice_s2436: int;
var _openingTime_s2436: int;
var _closingTime_s2436: int;
var _limitEndTime_s2436: int;
var _companyWallet_s2436: Ref;
var _reserveAccount_s2436: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (StokrCrowdsale));
gas := (gas) - (53000);
call StokrCrowdsale_StokrCrowdsale(this, msgsender_MSG, msgvalue_MSG, _rateSource_s2436, _token_s2436, _tokenCapOfPublicSale_s2436, _tokenCapOfPrivateSale_s2436, _tokenGoal_s2436, _tokenPurchaseMinimum_s2436, _tokenPurchaseLimit_s2436, _tokenReservePerMill_s2436, _tokenPrice_s2436, _openingTime_s2436, _closingTime_s2436, _limitEndTime_s2436, _companyWallet_s2436, _reserveAccount_s2436);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_StokrCrowdsale(this);
}
}


