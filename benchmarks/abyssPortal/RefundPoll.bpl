type Ref = int;
type ContractName = int;
var null: Ref;
var BasePoll: ContractName;
var BasePoll.Vote: ContractName;
var IERC20Token: ContractName;
var IPollManagedFund: ContractName;
var RefundPoll: ContractName;
var SafeMath: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
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
var M_Ref_Ref: [Ref][Ref]Ref;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} BasePoll.Vote_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, time: int, weight: int, agree: bool);
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
var time_BasePoll.Vote: [Ref]int;
var weight_BasePoll.Vote: [Ref]int;
var agree_BasePoll.Vote: [Ref]bool;
var MAX_TOKENS_WEIGHT_DENOM_BasePoll: [Ref]int;
var token_BasePoll: [Ref]Ref;
var fundAddress_BasePoll: [Ref]Ref;
var startTime_BasePoll: [Ref]int;
var endTime_BasePoll: [Ref]int;
var checkTransfersAfterEnd_BasePoll: [Ref]bool;
var yesCounter_BasePoll: [Ref]int;
var noCounter_BasePoll: [Ref]int;
var totalVoted_BasePoll: [Ref]int;
var finalized_BasePoll: [Ref]bool;
var votesByAddress_BasePoll: [Ref]Ref;
procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool);
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies revert;
modifies token_BasePoll;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} BasePoll_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
implementation BasePoll_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call BasePoll_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
assume ((revert) || ((gas) < (0)));
} else {
call BasePoll_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
implementation vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call vote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, agree_s327);
assume ((revert) || ((gas) < (0)));
} else {
call vote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, agree_s327);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} revokeVote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
implementation revokeVote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call revokeVote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call revokeVote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onTokenTransfer_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies weight_BasePoll.Vote;
implementation onTokenTransfer_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call onTokenTransfer_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
assume ((revert) || ((gas) < (0)));
} else {
call onTokenTransfer_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} tryToFinalize_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies finalized_BasePoll;
implementation tryToFinalize_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call __ret_0_ := tryToFinalize_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := tryToFinalize_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isNowApproved_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
implementation isNowApproved_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call __ret_0_ := isNowApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isNowApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} isSubjectApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} onPollFinish_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s566: bool);
procedure {:inline 1} IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
implementation IERC20Token_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call IERC20Token_IERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var name_IERC20Token: [Ref]int;
var symbol_IERC20Token: [Ref]int;
var decimals_IERC20Token: [Ref]int;
var totalSupply_IERC20Token: [Ref]int;
procedure {:public} {:inline 1} balanceOf_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s599: Ref) returns (balance_s599: int);
procedure {:public} {:inline 1} transfer_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s608: Ref, _value_s608: int) returns (success_s608: bool);
procedure {:public} {:inline 1} transferFrom_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s619: Ref, _to_s619: Ref, _value_s619: int) returns (success_s619: bool);
procedure {:public} {:inline 1} approve_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s628: Ref, _value_s628: int) returns (success_s628: bool);
procedure {:public} {:inline 1} allowance_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s637: Ref, _spender_s637: Ref) returns (remaining_s637: int);
procedure {:inline 1} IPollManagedFund_IPollManagedFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IPollManagedFund_IPollManagedFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
implementation IPollManagedFund_IPollManagedFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call IPollManagedFund_IPollManagedFund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IPollManagedFund_IPollManagedFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onTapPollFinish_IPollManagedFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s576: bool, _tap_s576: int);
procedure {:public} {:inline 1} onRefundPollFinish_IPollManagedFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s581: bool);
var holdEndTime_RefundPoll: [Ref]int;
procedure {:inline 1} RefundPoll_RefundPoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool);
modifies holdEndTime_RefundPoll;
procedure {:constructor} {:public} {:inline 1} RefundPoll_RefundPoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
modifies holdEndTime_RefundPoll;
implementation RefundPoll_RefundPoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call RefundPoll_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
assume ((revert) || ((gas) < (0)));
} else {
call RefundPoll_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} tryToFinalize_RefundPoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies finalized_BasePoll;
implementation tryToFinalize_RefundPoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call __ret_0_ := tryToFinalize_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := tryToFinalize_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} isSubjectApproved_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} onPollFinish_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s110: bool);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s690: int, b_s690: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s708: int, b_s708: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s728: int, b_s728: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s752: int, b_s752: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies revert;
modifies Balance;
// const {:existential true} HoudiniB1_BasePoll: bool;
// const {:existential true} HoudiniB2_BasePoll: bool;
procedure BoogieEntry_BasePoll();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
procedure BoogieEntry_IERC20Token();
modifies gas;
modifies now;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure BoogieEntry_IPollManagedFund();
modifies gas;
modifies now;
// const {:existential true} HoudiniB1_RefundPoll: bool;
// const {:existential true} HoudiniB2_RefundPoll: bool;
procedure main();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
modifies holdEndTime_RefundPoll;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
procedure checkTime_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure CorralChoice_BasePoll(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
procedure CorralEntry_BasePoll();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies now;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
procedure CorralChoice_IERC20Token(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_IERC20Token();
modifies gas;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies now;
procedure CorralChoice_IPollManagedFund(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_IPollManagedFund();
modifies gas;
modifies now;
procedure CorralChoice_RefundPoll(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
procedure CorralEntry_RefundPoll();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies now;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies token_BasePoll;
modifies Alloc;
modifies holdEndTime_RefundPoll;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_SafeMath();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies now;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__time_BasePoll.Vote: [Ref]int;
var __tmp__weight_BasePoll.Vote: [Ref]int;
var __tmp__agree_BasePoll.Vote: [Ref]bool;
var __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll: [Ref]int;
var __tmp__token_BasePoll: [Ref]Ref;
var __tmp__fundAddress_BasePoll: [Ref]Ref;
var __tmp__startTime_BasePoll: [Ref]int;
var __tmp__endTime_BasePoll: [Ref]int;
var __tmp__checkTransfersAfterEnd_BasePoll: [Ref]bool;
var __tmp__yesCounter_BasePoll: [Ref]int;
var __tmp__noCounter_BasePoll: [Ref]int;
var __tmp__totalVoted_BasePoll: [Ref]int;
var __tmp__finalized_BasePoll: [Ref]bool;
var __tmp__votesByAddress_BasePoll: [Ref]Ref;
var __tmp__name_IERC20Token: [Ref]int;
var __tmp__symbol_IERC20Token: [Ref]int;
var __tmp__decimals_IERC20Token: [Ref]int;
var __tmp__totalSupply_IERC20Token: [Ref]int;
var __tmp__holdEndTime_RefundPoll: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} BasePoll.Vote_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, time: int, weight: int, agree: bool);
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool);
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__M_Ref_Ref;
modifies revert;
modifies __tmp__token_BasePoll;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} BasePoll_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool);
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies revert;
modifies token_BasePoll;
modifies Alloc;
procedure {:constructor} {:inline 1} BasePoll_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool);
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__M_Ref_Ref;
modifies revert;
modifies __tmp__token_BasePoll;
modifies __tmp__Alloc;
procedure {:inline 1} vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool);
modifies revert;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
procedure {:inline 1} vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool);
modifies revert;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__totalVoted_BasePoll;
procedure {:inline 1} revokeVote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
procedure {:inline 1} revokeVote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
procedure {:inline 1} onTokenTransfer_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int);
modifies revert;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies weight_BasePoll.Vote;
procedure {:inline 1} onTokenTransfer_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int);
modifies revert;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__weight_BasePoll.Vote;
procedure {:inline 1} tryToFinalize_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies finalized_BasePoll;
modifies revert;
procedure {:inline 1} tryToFinalize_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies __tmp__finalized_BasePoll;
modifies revert;
procedure {:inline 1} isNowApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} isNowApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} isSubjectApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
procedure {:inline 1} IPollManagedFund_IPollManagedFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IPollManagedFund_IPollManagedFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IPollManagedFund_IPollManagedFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} RefundPoll_RefundPoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool);
modifies __tmp__holdEndTime_RefundPoll;
procedure {:constructor} {:inline 1} RefundPoll_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool);
modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies fundAddress_BasePoll;
modifies startTime_BasePoll;
modifies endTime_BasePoll;
modifies checkTransfersAfterEnd_BasePoll;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies totalVoted_BasePoll;
modifies finalized_BasePoll;
modifies votesByAddress_BasePoll;
modifies M_Ref_Ref;
modifies revert;
modifies token_BasePoll;
modifies Alloc;
modifies holdEndTime_RefundPoll;
procedure {:constructor} {:inline 1} RefundPoll_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool);
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__M_Ref_Ref;
modifies revert;
modifies __tmp__token_BasePoll;
modifies __tmp__Alloc;
modifies __tmp__holdEndTime_RefundPoll;
procedure {:inline 1} tryToFinalize_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies finalized_BasePoll;
procedure {:inline 1} tryToFinalize_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__finalized_BasePoll;
procedure {:inline 1} isSubjectApproved_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} onPollFinish_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s110: bool);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s690: int, b_s690: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s708: int, b_s708: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s728: int, b_s728: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s752: int, b_s752: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
modifies __tmp__token_BasePoll;
modifies __tmp__fundAddress_BasePoll;
modifies __tmp__startTime_BasePoll;
modifies __tmp__endTime_BasePoll;
modifies __tmp__checkTransfersAfterEnd_BasePoll;
modifies __tmp__yesCounter_BasePoll;
modifies __tmp__noCounter_BasePoll;
modifies __tmp__totalVoted_BasePoll;
modifies __tmp__finalized_BasePoll;
modifies __tmp__votesByAddress_BasePoll;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__holdEndTime_RefundPoll;
modifies revert;
procedure checkTime_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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

implementation BasePoll.Vote_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, time: int, weight: int, agree: bool)
{
__tmp__time_BasePoll.Vote[this] := time;
__tmp__weight_BasePoll.Vote[this] := weight;
__tmp__agree_BasePoll.Vote[this] := agree;
}

implementation BasePoll.Vote_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, time: int, weight: int, agree: bool)
{
time_BasePoll.Vote[this] := time;
weight_BasePoll.Vote[this] := weight;
agree_BasePoll.Vote[this] := agree;
}

implementation BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll[this] := 1000;
__tmp__fundAddress_BasePoll[this] := null;
__tmp__startTime_BasePoll[this] := 0;
__tmp__endTime_BasePoll[this] := 0;
__tmp__checkTransfersAfterEnd_BasePoll[this] := false;
__tmp__yesCounter_BasePoll[this] := 0;
__tmp__noCounter_BasePoll[this] := 0;
__tmp__totalVoted_BasePoll[this] := 0;
__tmp__finalized_BasePoll[this] := false;
// Make array/mapping vars distinct for votesByAddress
call __var_3 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__votesByAddress_BasePoll[this] := __var_3;
// Initialize address/contract mapping votesByAddress
__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]] := zeroRefRefArr();
// end of initialization
__var_1 := null;
if (!((_tokenAddress_s233) != (null))) {
revert := true;
return;
}
assume ((_startTime_s233) >= (0));
assume ((__tmp__now) >= (0));
assume ((_endTime_s233) >= (0));
assume ((_startTime_s233) >= (0));
if (!(((_startTime_s233) >= (__tmp__now)) && ((_endTime_s233) > (_startTime_s233)))) {
revert := true;
return;
}
assume ((__tmp__DType[_tokenAddress_s233]) == (IERC20Token));
__var_2 := _tokenAddress_s233;
__tmp__token_BasePoll[this] := __var_2;
__tmp__fundAddress_BasePoll[this] := _fundAddress_s233;
assume ((__tmp__startTime_BasePoll[this]) >= (0));
assume ((_startTime_s233) >= (0));
__tmp__startTime_BasePoll[this] := _startTime_s233;
assume ((__tmp__endTime_BasePoll[this]) >= (0));
assume ((_endTime_s233) >= (0));
__tmp__endTime_BasePoll[this] := _endTime_s233;
__tmp__finalized_BasePoll[this] := false;
__tmp__checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s233;
}

implementation BasePoll_BasePoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
MAX_TOKENS_WEIGHT_DENOM_BasePoll[this] := 1000;
fundAddress_BasePoll[this] := null;
startTime_BasePoll[this] := 0;
endTime_BasePoll[this] := 0;
checkTransfersAfterEnd_BasePoll[this] := false;
yesCounter_BasePoll[this] := 0;
noCounter_BasePoll[this] := 0;
totalVoted_BasePoll[this] := 0;
finalized_BasePoll[this] := false;
// Make array/mapping vars distinct for votesByAddress
call __var_3 := FreshRefGenerator__success();
if (revert) {
return;
}
votesByAddress_BasePoll[this] := __var_3;
// Initialize address/contract mapping votesByAddress
M_Ref_Ref[votesByAddress_BasePoll[this]] := zeroRefRefArr();
// end of initialization
__var_1 := null;
if (!((_tokenAddress_s233) != (null))) {
revert := true;
return;
}
assume ((_startTime_s233) >= (0));
assume ((now) >= (0));
assume ((_endTime_s233) >= (0));
assume ((_startTime_s233) >= (0));
if (!(((_startTime_s233) >= (now)) && ((_endTime_s233) > (_startTime_s233)))) {
revert := true;
return;
}
assume ((DType[_tokenAddress_s233]) == (IERC20Token));
__var_2 := _tokenAddress_s233;
token_BasePoll[this] := __var_2;
fundAddress_BasePoll[this] := _fundAddress_s233;
assume ((startTime_BasePoll[this]) >= (0));
assume ((_startTime_s233) >= (0));
startTime_BasePoll[this] := _startTime_s233;
assume ((endTime_BasePoll[this]) >= (0));
assume ((_endTime_s233) >= (0));
endTime_BasePoll[this] := _endTime_s233;
finalized_BasePoll[this] := false;
checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s233;
}

implementation BasePoll_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasePoll_BasePoll_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
if (revert) {
return;
}
}

implementation BasePoll_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s233: Ref, _fundAddress_s233: Ref, _startTime_s233: int, _endTime_s233: int, _checkTransfersAfterEnd_s233: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasePoll_BasePoll_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
if (revert) {
return;
}
}

implementation vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool)
{
var voiceWeight_s326: int;
var __var_4: int;
var maxVoiceWeight_s326: int;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: int;
var __var_9: int;
var __var_10: int;
call checkTime_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
if (!((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) == (0))) {
revert := true;
return;
}
assume ((voiceWeight_s326) >= (0));
call voiceWeight_s326 := balanceOf_IERC20Token(__tmp__token_BasePoll[this], this, __var_4, msgsender_MSG);
voiceWeight_s326 := voiceWeight_s326;
assume ((maxVoiceWeight_s326) >= (0));
assume ((__var_5) >= (0));
assume ((__tmp__DType[__tmp__token_BasePoll[this]]) == (IERC20Token));
__var_5 := __tmp__totalSupply_IERC20Token[__tmp__token_BasePoll[this]];
assume ((__var_5) >= (0));
assume (((__var_5) / (1000)) >= (0));
maxVoiceWeight_s326 := (__var_5) / (1000);
assume ((voiceWeight_s326) >= (0));
assume ((voiceWeight_s326) >= (0));
assume ((maxVoiceWeight_s326) >= (0));
assume ((voiceWeight_s326) >= (0));
assume ((maxVoiceWeight_s326) >= (0));
assume ((if (voiceWeight_s326) <= (maxVoiceWeight_s326) then (voiceWeight_s326) else (maxVoiceWeight_s326)) >= (0));
voiceWeight_s326 := if (voiceWeight_s326) <= (maxVoiceWeight_s326) then (voiceWeight_s326) else (maxVoiceWeight_s326);
if (agree_s327) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s326) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_7 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_7 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__yesCounter_BasePoll[this] := __var_7;
assume ((__var_7) >= (0));
} else {
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s326) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_8 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_8 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__noCounter_BasePoll[this] := __var_8;
assume ((__var_8) >= (0));
}
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
assume ((__tmp__now) >= (0));
__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := __tmp__now;
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
assume ((voiceWeight_s326) >= (0));
__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s326;
__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s327;
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__var_10) >= (0));
__var_10 := 1;
assume ((1) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_9 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_9 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__totalVoted_BasePoll[this] := __var_9;
assume ((__var_9) >= (0));
}

implementation vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s327: bool)
{
var voiceWeight_s326: int;
var __var_4: int;
var maxVoiceWeight_s326: int;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: int;
var __var_9: int;
var __var_10: int;
call checkTime_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
if (!((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) == (0))) {
revert := true;
return;
}
assume ((voiceWeight_s326) >= (0));
call voiceWeight_s326 := balanceOf_IERC20Token(token_BasePoll[this], this, __var_4, msgsender_MSG);
voiceWeight_s326 := voiceWeight_s326;
assume ((maxVoiceWeight_s326) >= (0));
assume ((__var_5) >= (0));
assume ((DType[token_BasePoll[this]]) == (IERC20Token));
__var_5 := totalSupply_IERC20Token[token_BasePoll[this]];
assume ((__var_5) >= (0));
assume (((__var_5) / (1000)) >= (0));
maxVoiceWeight_s326 := (__var_5) / (1000);
assume ((voiceWeight_s326) >= (0));
assume ((voiceWeight_s326) >= (0));
assume ((maxVoiceWeight_s326) >= (0));
assume ((voiceWeight_s326) >= (0));
assume ((maxVoiceWeight_s326) >= (0));
assume ((if (voiceWeight_s326) <= (maxVoiceWeight_s326) then (voiceWeight_s326) else (maxVoiceWeight_s326)) >= (0));
voiceWeight_s326 := if (voiceWeight_s326) <= (maxVoiceWeight_s326) then (voiceWeight_s326) else (maxVoiceWeight_s326);
if (agree_s327) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s326) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_7 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_7 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else {
assume (false);
}
yesCounter_BasePoll[this] := __var_7;
assume ((__var_7) >= (0));
} else {
assume ((noCounter_BasePoll[this]) >= (0));
assume ((noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s326) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_8 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_8 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s326);
if (revert) {
return;
}
} else {
assume (false);
}
noCounter_BasePoll[this] := __var_8;
assume ((__var_8) >= (0));
}
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
assume ((now) >= (0));
time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := now;
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
assume ((voiceWeight_s326) >= (0));
weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s326;
agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s327;
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((__var_10) >= (0));
__var_10 := 1;
assume ((1) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_9 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_9 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
totalVoted_BasePoll[this] := __var_9;
assume ((__var_9) >= (0));
}

implementation revokeVote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var voiceWeight_s409: int;
var agree_s409: bool;
var __var_11: int;
var __var_12: int;
var __var_13: int;
var __var_14: int;
call checkTime_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
if (!((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) > (0))) {
revert := true;
return;
}
assume ((voiceWeight_s409) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
voiceWeight_s409 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
agree_s409 := __tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := false;
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__var_12) >= (0));
__var_12 := 1;
assume ((1) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__totalVoted_BasePoll[this] := __var_11;
assume ((__var_11) >= (0));
if (agree_s409) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s409) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__yesCounter_BasePoll[this] := __var_13;
assume ((__var_13) >= (0));
} else {
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s409) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_14 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_14 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__noCounter_BasePoll[this] := __var_14;
assume ((__var_14) >= (0));
}
}

implementation revokeVote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var voiceWeight_s409: int;
var agree_s409: bool;
var __var_11: int;
var __var_12: int;
var __var_13: int;
var __var_14: int;
call checkTime_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
if (!((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) > (0))) {
revert := true;
return;
}
assume ((voiceWeight_s409) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
voiceWeight_s409 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
agree_s409 := agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := false;
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((__var_12) >= (0));
__var_12 := 1;
assume ((1) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
totalVoted_BasePoll[this] := __var_11;
assume ((__var_11) >= (0));
if (agree_s409) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s409) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else {
assume (false);
}
yesCounter_BasePoll[this] := __var_13;
assume ((__var_13) >= (0));
} else {
assume ((noCounter_BasePoll[this]) >= (0));
assume ((noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s409) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_14 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_14 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s409);
if (revert) {
return;
}
} else {
assume (false);
}
noCounter_BasePoll[this] := __var_14;
assume ((__var_14) >= (0));
}
}

implementation onTokenTransfer_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int)
{
var __var_15: int;
var __var_16: int;
var voiceWeight_s515: int;
var __var_17: int;
var __var_18: int;
var __var_19: int;
if (!((msgsender_MSG) == (__tmp__fundAddress_BasePoll[this]))) {
revert := true;
return;
}
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) == (0)) {
return;
}
if (!(__tmp__checkTransfersAfterEnd_BasePoll[this])) {
assume ((__tmp__now) >= (0));
assume ((__tmp__startTime_BasePoll[this]) >= (0));
assume ((__tmp__now) >= (0));
assume ((__tmp__endTime_BasePoll[this]) >= (0));
if ((__tmp__finalized_BasePoll[this]) || ((((__tmp__now) < (__tmp__startTime_BasePoll[this])) || ((__tmp__now) > (__tmp__endTime_BasePoll[this]))))) {
return;
}
}
assume ((__var_15) >= (0));
call __var_15 := balanceOf_IERC20Token(__tmp__token_BasePoll[this], this, __var_16, tokenHolder_s516);
assume ((__var_15) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((__var_15) >= (__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]])) {
return;
}
assume ((voiceWeight_s515) >= (0));
assume ((amount_s516) >= (0));
voiceWeight_s515 := amount_s516;
assume ((amount_s516) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((amount_s516) > (__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]])) {
assume ((voiceWeight_s515) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
voiceWeight_s515 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]];
}
if (__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_17 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_17 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__yesCounter_BasePoll[this] := __var_17;
assume ((__var_17) >= (0));
} else {
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_18 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_18 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__noCounter_BasePoll[this] := __var_18;
assume ((__var_18) >= (0));
}
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_19 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]], voiceWeight_s515);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_19 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s516]] := __var_19;
assume ((__var_19) >= (0));
}

implementation onTokenTransfer_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s516: Ref, amount_s516: int)
{
var __var_15: int;
var __var_16: int;
var voiceWeight_s515: int;
var __var_17: int;
var __var_18: int;
var __var_19: int;
if (!((msgsender_MSG) == (fundAddress_BasePoll[this]))) {
revert := true;
return;
}
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) == (0)) {
return;
}
if (!(checkTransfersAfterEnd_BasePoll[this])) {
assume ((now) >= (0));
assume ((startTime_BasePoll[this]) >= (0));
assume ((now) >= (0));
assume ((endTime_BasePoll[this]) >= (0));
if ((finalized_BasePoll[this]) || ((((now) < (startTime_BasePoll[this])) || ((now) > (endTime_BasePoll[this]))))) {
return;
}
}
assume ((__var_15) >= (0));
call __var_15 := balanceOf_IERC20Token(token_BasePoll[this], this, __var_16, tokenHolder_s516);
assume ((__var_15) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((__var_15) >= (weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]])) {
return;
}
assume ((voiceWeight_s515) >= (0));
assume ((amount_s516) >= (0));
voiceWeight_s515 := amount_s516;
assume ((amount_s516) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
if ((amount_s516) > (weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]])) {
assume ((voiceWeight_s515) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
voiceWeight_s515 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]];
}
if (agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_17 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_17 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
yesCounter_BasePoll[this] := __var_17;
assume ((__var_17) >= (0));
} else {
assume ((noCounter_BasePoll[this]) >= (0));
assume ((noCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_18 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_18 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
noCounter_BasePoll[this] := __var_18;
assume ((__var_18) >= (0));
}
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]]) >= (0));
assume ((voiceWeight_s515) >= (0));
if ((DType[this]) == (RefundPoll)) {
call __var_19 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]], voiceWeight_s515);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_19 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]], voiceWeight_s515);
if (revert) {
return;
}
} else {
assume (false);
}
weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s516]] := __var_19;
assume ((__var_19) >= (0));
}

implementation tryToFinalize_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_20: bool;
call notFinalized_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__now) >= (0));
assume ((__tmp__endTime_BasePoll[this]) >= (0));
if ((__tmp__now) < (__tmp__endTime_BasePoll[this])) {
__ret_0_ := false;
return;
}
__tmp__finalized_BasePoll[this] := true;
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_20 := isSubjectApproved_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_20 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (RefundPoll)) {
call onPollFinish_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG, __var_20);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_20);
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation tryToFinalize_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_20: bool;
call notFinalized_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((now) >= (0));
assume ((endTime_BasePoll[this]) >= (0));
if ((now) < (endTime_BasePoll[this])) {
__ret_0_ := false;
return;
}
finalized_BasePoll[this] := true;
if ((DType[this]) == (RefundPoll)) {
call __var_20 := isSubjectApproved_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_20 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (RefundPoll)) {
call onPollFinish_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG, __var_20);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_20);
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation isNowApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_21: bool;
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_21 := isSubjectApproved_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (BasePoll)) {
call __var_21 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_21;
return;
}

implementation isNowApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_21: bool;
if ((DType[this]) == (RefundPoll)) {
call __var_21 := isSubjectApproved_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (BasePoll)) {
call __var_21 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_21;
return;
}

implementation isSubjectApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
__ret_0_ := (__tmp__yesCounter_BasePoll[this]) > (__tmp__noCounter_BasePoll[this]);
return;
}

implementation isSubjectApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((noCounter_BasePoll[this]) >= (0));
__ret_0_ := (yesCounter_BasePoll[this]) > (noCounter_BasePoll[this]);
return;
}

implementation IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__name_IERC20Token[this] := 845034323;
__tmp__symbol_IERC20Token[this] := 845034323;
__tmp__decimals_IERC20Token[this] := 0;
__tmp__totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
name_IERC20Token[this] := 845034323;
symbol_IERC20Token[this] := 845034323;
decimals_IERC20Token[this] := 0;
totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IERC20Token_IERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IPollManagedFund_IPollManagedFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation IPollManagedFund_IPollManagedFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation IPollManagedFund_IPollManagedFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IPollManagedFund_IPollManagedFund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IPollManagedFund_IPollManagedFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IPollManagedFund_IPollManagedFund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation RefundPoll_RefundPoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__holdEndTime_RefundPoll[this] := 0;
// end of initialization
assume ((__tmp__holdEndTime_RefundPoll[this]) >= (0));
assume ((_holdEndTime_s35) >= (0));
__tmp__holdEndTime_RefundPoll[this] := _holdEndTime_s35;
}

implementation RefundPoll_RefundPoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool)
{
// start of initialization
assume ((msgsender_MSG) != (null));
holdEndTime_RefundPoll[this] := 0;
// end of initialization
assume ((holdEndTime_RefundPoll[this]) >= (0));
assume ((_holdEndTime_s35) >= (0));
holdEndTime_RefundPoll[this] := _holdEndTime_s35;
}

implementation RefundPoll_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool)
{
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_startTime_s35) >= (0));
assume ((_endTime_s35) >= (0));
call BasePoll_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _checkTransfersAfterEnd_s35);
if (revert) {
return;
}
call RefundPoll_RefundPoll_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
if (revert) {
return;
}
}

implementation RefundPoll_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s35: Ref, _fundAddress_s35: Ref, _startTime_s35: int, _endTime_s35: int, _holdEndTime_s35: int, _checkTransfersAfterEnd_s35: bool)
{
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_startTime_s35) >= (0));
assume ((_endTime_s35) >= (0));
call BasePoll_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _checkTransfersAfterEnd_s35);
if (revert) {
return;
}
call RefundPoll_RefundPoll_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
if (revert) {
return;
}
}

implementation tryToFinalize_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_22: bool;
assume ((__tmp__holdEndTime_RefundPoll[this]) >= (0));
assume ((__tmp__holdEndTime_RefundPoll[this]) >= (0));
assume ((__tmp__endTime_BasePoll[this]) >= (0));
if (((__tmp__holdEndTime_RefundPoll[this]) > (0)) && ((__tmp__holdEndTime_RefundPoll[this]) > (__tmp__endTime_BasePoll[this]))) {
assume ((__tmp__now) >= (0));
assume ((__tmp__holdEndTime_RefundPoll[this]) >= (0));
if (!((__tmp__now) >= (__tmp__holdEndTime_RefundPoll[this]))) {
revert := true;
return;
}
} else {
assume ((__tmp__now) >= (0));
assume ((__tmp__endTime_BasePoll[this]) >= (0));
if (!((__tmp__now) >= (__tmp__endTime_BasePoll[this]))) {
revert := true;
return;
}
}
__tmp__finalized_BasePoll[this] := true;
if ((__tmp__DType[this]) == (RefundPoll)) {
call __var_22 := isSubjectApproved_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (RefundPoll)) {
call onPollFinish_RefundPoll__fail(this, msgsender_MSG, msgvalue_MSG, __var_22);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation tryToFinalize_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_22: bool;
assume ((holdEndTime_RefundPoll[this]) >= (0));
assume ((holdEndTime_RefundPoll[this]) >= (0));
assume ((endTime_BasePoll[this]) >= (0));
if (((holdEndTime_RefundPoll[this]) > (0)) && ((holdEndTime_RefundPoll[this]) > (endTime_BasePoll[this]))) {
assume ((now) >= (0));
assume ((holdEndTime_RefundPoll[this]) >= (0));
if (!((now) >= (holdEndTime_RefundPoll[this]))) {
revert := true;
return;
}
} else {
assume ((now) >= (0));
assume ((endTime_BasePoll[this]) >= (0));
if (!((now) >= (endTime_BasePoll[this]))) {
revert := true;
return;
}
}
finalized_BasePoll[this] := true;
if ((DType[this]) == (RefundPoll)) {
call __var_22 := isSubjectApproved_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (RefundPoll)) {
call onPollFinish_RefundPoll__success(this, msgsender_MSG, msgvalue_MSG, __var_22);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation isSubjectApproved_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_23: int;
var __var_24: int;
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__noCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__var_23) >= (0));
assume ((__tmp__DType[__tmp__token_BasePoll[this]]) == (IERC20Token));
__var_23 := __tmp__totalSupply_IERC20Token[__tmp__token_BasePoll[this]];
assume ((__var_23) >= (0));
assume (((__var_23) / (3)) >= (0));
__ret_0_ := ((__tmp__yesCounter_BasePoll[this]) > (__tmp__noCounter_BasePoll[this])) && ((__tmp__yesCounter_BasePoll[this]) >= ((__var_23) / (3)));
return;
}

implementation isSubjectApproved_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_23: int;
var __var_24: int;
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((noCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((__var_23) >= (0));
assume ((DType[token_BasePoll[this]]) == (IERC20Token));
__var_23 := totalSupply_IERC20Token[token_BasePoll[this]];
assume ((__var_23) >= (0));
assume (((__var_23) / (3)) >= (0));
__ret_0_ := ((yesCounter_BasePoll[this]) > (noCounter_BasePoll[this])) && ((yesCounter_BasePoll[this]) >= ((__var_23) / (3)));
return;
}

implementation onPollFinish_RefundPoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s110: bool)
{
var fund_s109: Ref;
var __var_25: int;
assume ((__tmp__DType[__tmp__fundAddress_BasePoll[this]]) == (IPollManagedFund));
fund_s109 := __tmp__fundAddress_BasePoll[this];
call onRefundPollFinish_IPollManagedFund(fund_s109, this, __var_25, agree_s110);
}

implementation onPollFinish_RefundPoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s110: bool)
{
var fund_s109: Ref;
var __var_25: int;
assume ((DType[fundAddress_BasePoll[this]]) == (IPollManagedFund));
fund_s109 := fundAddress_BasePoll[this];
call onRefundPollFinish_IPollManagedFund(fund_s109, this, __var_25, agree_s110);
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s690: int, b_s690: int) returns (__ret_0_: int)
// {
// var c_s689: int;
// assume ((c_s689) >= (0));
// assume ((a_s690) >= (0));
// assume ((b_s690) >= (0));
// assume (((a_s690) * (b_s690)) >= (0));
// c_s689 := (a_s690) * (b_s690);
// assume ((a_s690) >= (0));
// assume ((c_s689) >= (0));
// assume ((a_s690) >= (0));
// assume (((c_s689) / (a_s690)) >= (0));
// assume ((b_s690) >= (0));
// assume ((c_s689) >= (0));
// __ret_0_ := c_s689;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s690: int, b_s690: int) returns (__ret_0_: int)
// {
// var c_s689: int;
// assume ((c_s689) >= (0));
// assume ((a_s690) >= (0));
// assume ((b_s690) >= (0));
// assume (((a_s690) * (b_s690)) >= (0));
// c_s689 := (a_s690) * (b_s690);
// assume ((a_s690) >= (0));
// assume ((c_s689) >= (0));
// assume ((a_s690) >= (0));
// assume (((c_s689) / (a_s690)) >= (0));
// assume ((b_s690) >= (0));
// assert (((a_s690) == (0)) || (((c_s689) / (a_s690)) == (b_s690)));
// assume ((c_s689) >= (0));
// __ret_0_ := c_s689;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s708: int, b_s708: int) returns (__ret_0_: int)
// {
// var c_s707: int;
// assume ((c_s707) >= (0));
// assume ((a_s708) >= (0));
// assume ((b_s708) >= (0));
// assume (((a_s708) / (b_s708)) >= (0));
// c_s707 := (a_s708) / (b_s708);
// assume ((c_s707) >= (0));
// __ret_0_ := c_s707;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s708: int, b_s708: int) returns (__ret_0_: int)
// {
// var c_s707: int;
// assume ((c_s707) >= (0));
// assume ((a_s708) >= (0));
// assume ((b_s708) >= (0));
// assume (((a_s708) / (b_s708)) >= (0));
// c_s707 := (a_s708) / (b_s708);
// assume ((c_s707) >= (0));
// __ret_0_ := c_s707;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s728: int, b_s728: int) returns (__ret_0_: int)
{
assume ((a_s728) >= (0));
assume ((b_s728) >= (0));
assume ((a_s728) >= (0));
assume ((b_s728) >= (0));
assume (((a_s728) - (b_s728)) >= (0));
__ret_0_ := (a_s728) - (b_s728);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s728: int, b_s728: int) returns (__ret_0_: int)
{
assume ((a_s728) >= (0));
assume ((b_s728) >= (0));
assert ((a_s728) >= (b_s728));
assume ((a_s728) >= (0));
assume ((b_s728) >= (0));
assume (((a_s728) - (b_s728)) >= (0));
__ret_0_ := (a_s728) - (b_s728);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s752: int, b_s752: int) returns (__ret_0_: int)
{
var c_s751: int;
assume ((c_s751) >= (0));
assume ((a_s752) >= (0));
assume ((b_s752) >= (0));
assume (((a_s752) + (b_s752)) >= (0));
c_s751 := (a_s752) + (b_s752);
assume ((c_s751) >= (0));
assume ((a_s752) >= (0));
assume ((c_s751) >= (0));
__ret_0_ := c_s751;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s752: int, b_s752: int) returns (__ret_0_: int)
{
var c_s751: int;
assume ((c_s751) >= (0));
assume ((a_s752) >= (0));
assume ((b_s752) >= (0));
assume (((a_s752) + (b_s752)) >= (0));
c_s751 := (a_s752) + (b_s752);
assume ((c_s751) >= (0));
assume ((a_s752) >= (0));
assert ((c_s751) >= (a_s752));
assume ((c_s751) >= (0));
__ret_0_ := c_s751;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (RefundPoll)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IPollManagedFund)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20Token)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (BasePoll)) {
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
if ((DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((DType[to]) == (RefundPoll)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IPollManagedFund)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20Token)) {
assume ((amount) == (0));
} else if ((DType[to]) == (BasePoll)) {
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
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__time_BasePoll.Vote: [Ref]int;
var __snap___tmp__weight_BasePoll.Vote: [Ref]int;
var __snap___tmp__agree_BasePoll.Vote: [Ref]bool;
var __snap___tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll: [Ref]int;
var __snap___tmp__token_BasePoll: [Ref]Ref;
var __snap___tmp__fundAddress_BasePoll: [Ref]Ref;
var __snap___tmp__startTime_BasePoll: [Ref]int;
var __snap___tmp__endTime_BasePoll: [Ref]int;
var __snap___tmp__checkTransfersAfterEnd_BasePoll: [Ref]bool;
var __snap___tmp__yesCounter_BasePoll: [Ref]int;
var __snap___tmp__noCounter_BasePoll: [Ref]int;
var __snap___tmp__totalVoted_BasePoll: [Ref]int;
var __snap___tmp__finalized_BasePoll: [Ref]bool;
var __snap___tmp__votesByAddress_BasePoll: [Ref]Ref;
var __snap___tmp__name_IERC20Token: [Ref]int;
var __snap___tmp__symbol_IERC20Token: [Ref]int;
var __snap___tmp__decimals_IERC20Token: [Ref]int;
var __snap___tmp__totalSupply_IERC20Token: [Ref]int;
var __snap___tmp__holdEndTime_RefundPoll: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__time_BasePoll.Vote := __tmp__time_BasePoll.Vote;
__snap___tmp__weight_BasePoll.Vote := __tmp__weight_BasePoll.Vote;
__snap___tmp__agree_BasePoll.Vote := __tmp__agree_BasePoll.Vote;
__snap___tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__snap___tmp__token_BasePoll := __tmp__token_BasePoll;
__snap___tmp__fundAddress_BasePoll := __tmp__fundAddress_BasePoll;
__snap___tmp__startTime_BasePoll := __tmp__startTime_BasePoll;
__snap___tmp__endTime_BasePoll := __tmp__endTime_BasePoll;
__snap___tmp__checkTransfersAfterEnd_BasePoll := __tmp__checkTransfersAfterEnd_BasePoll;
__snap___tmp__yesCounter_BasePoll := __tmp__yesCounter_BasePoll;
__snap___tmp__noCounter_BasePoll := __tmp__noCounter_BasePoll;
__snap___tmp__totalVoted_BasePoll := __tmp__totalVoted_BasePoll;
__snap___tmp__finalized_BasePoll := __tmp__finalized_BasePoll;
__snap___tmp__votesByAddress_BasePoll := __tmp__votesByAddress_BasePoll;
__snap___tmp__name_IERC20Token := __tmp__name_IERC20Token;
__snap___tmp__symbol_IERC20Token := __tmp__symbol_IERC20Token;
__snap___tmp__decimals_IERC20Token := __tmp__decimals_IERC20Token;
__snap___tmp__totalSupply_IERC20Token := __tmp__totalSupply_IERC20Token;
__snap___tmp__holdEndTime_RefundPoll := __tmp__holdEndTime_RefundPoll;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__time_BasePoll.Vote := __snap___tmp__time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := __snap___tmp__weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := __snap___tmp__agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := __snap___tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := __snap___tmp__token_BasePoll;
__tmp__fundAddress_BasePoll := __snap___tmp__fundAddress_BasePoll;
__tmp__startTime_BasePoll := __snap___tmp__startTime_BasePoll;
__tmp__endTime_BasePoll := __snap___tmp__endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := __snap___tmp__checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := __snap___tmp__yesCounter_BasePoll;
__tmp__noCounter_BasePoll := __snap___tmp__noCounter_BasePoll;
__tmp__totalVoted_BasePoll := __snap___tmp__totalVoted_BasePoll;
__tmp__finalized_BasePoll := __snap___tmp__finalized_BasePoll;
__tmp__votesByAddress_BasePoll := __snap___tmp__votesByAddress_BasePoll;
__tmp__name_IERC20Token := __snap___tmp__name_IERC20Token;
__tmp__symbol_IERC20Token := __snap___tmp__symbol_IERC20Token;
__tmp__decimals_IERC20Token := __snap___tmp__decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := __snap___tmp__totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := __snap___tmp__holdEndTime_RefundPoll;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__time_BasePoll.Vote := time_BasePoll.Vote;
__tmp__weight_BasePoll.Vote := weight_BasePoll.Vote;
__tmp__agree_BasePoll.Vote := agree_BasePoll.Vote;
__tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll := MAX_TOKENS_WEIGHT_DENOM_BasePoll;
__tmp__token_BasePoll := token_BasePoll;
__tmp__fundAddress_BasePoll := fundAddress_BasePoll;
__tmp__startTime_BasePoll := startTime_BasePoll;
__tmp__endTime_BasePoll := endTime_BasePoll;
__tmp__checkTransfersAfterEnd_BasePoll := checkTransfersAfterEnd_BasePoll;
__tmp__yesCounter_BasePoll := yesCounter_BasePoll;
__tmp__noCounter_BasePoll := noCounter_BasePoll;
__tmp__totalVoted_BasePoll := totalVoted_BasePoll;
__tmp__finalized_BasePoll := finalized_BasePoll;
__tmp__votesByAddress_BasePoll := votesByAddress_BasePoll;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__holdEndTime_RefundPoll := holdEndTime_RefundPoll;
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

implementation checkTime_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assume ((__tmp__now) >= (0));
assume ((__tmp__startTime_BasePoll[this]) >= (0));
assume ((__tmp__now) >= (0));
assume ((__tmp__endTime_BasePoll[this]) >= (0));
if (!(((__tmp__now) >= (__tmp__startTime_BasePoll[this])) && ((__tmp__now) <= (__tmp__endTime_BasePoll[this])))) {
revert := true;
return;
}
}

implementation checkTime_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assume ((now) >= (0));
assume ((startTime_BasePoll[this]) >= (0));
assume ((now) >= (0));
assume ((endTime_BasePoll[this]) >= (0));
if (!(((now) >= (startTime_BasePoll[this])) && ((now) <= (endTime_BasePoll[this])))) {
revert := true;
return;
}
}

implementation notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(__tmp__finalized_BasePoll[this]))) {
revert := true;
return;
}
}

implementation notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(finalized_BasePoll[this]))) {
revert := true;
return;
}
}

implementation BoogieEntry_BasePoll()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _tokenAddress_s233: Ref;
var _fundAddress_s233: Ref;
var _startTime_s233: int;
var _endTime_s233: int;
var _checkTransfersAfterEnd_s233: bool;
var agree_s327: bool;
var tokenHolder_s516: Ref;
var amount_s516: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (BasePoll)) || ((DType[this]) == (RefundPoll)));
gas := (gas) - (53000);
call BasePoll_BasePoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_BasePoll) ==> ((fundAddress_BasePoll[this]) == (null));
  // invariant (HoudiniB2_BasePoll) ==> ((fundAddress_BasePoll[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s233;
havoc _fundAddress_s233;
havoc _startTime_s233;
havoc _endTime_s233;
havoc _checkTransfersAfterEnd_s233;
havoc agree_s327;
havoc tokenHolder_s516;
havoc amount_s516;
havoc __ret_0_tryToFinalize;
havoc __ret_0_isNowApproved;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s327);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_tryToFinalize := tryToFinalize_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_isNowApproved := isNowApproved_BasePoll(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s599: Ref;
var balance_s599: int;
var _to_s608: Ref;
var _value_s608: int;
var success_s608: bool;
var _from_s619: Ref;
var _to_s619: Ref;
var _value_s619: int;
var success_s619: bool;
var _spender_s628: Ref;
var _value_s628: int;
var success_s628: bool;
var _owner_s637: Ref;
var _spender_s637: Ref;
var remaining_s637: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (IERC20Token));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s599;
havoc balance_s599;
havoc _to_s608;
havoc _value_s608;
havoc success_s608;
havoc _from_s619;
havoc _to_s619;
havoc _value_s619;
havoc success_s619;
havoc _spender_s628;
havoc _value_s628;
havoc success_s628;
havoc _owner_s637;
havoc _spender_s637;
havoc remaining_s637;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s599 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s599);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s608 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s608, _value_s608);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s619 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s619, _to_s619, _value_s619);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s628 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s628, _value_s628);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s637 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s637, _spender_s637);
}
}
}

implementation BoogieEntry_IPollManagedFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (IPollManagedFund));
gas := (gas) - (53000);
call IPollManagedFund_IPollManagedFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _tokenAddress_s233: Ref;
var _fundAddress_s233: Ref;
var _startTime_s233: int;
var _endTime_s233: int;
var _checkTransfersAfterEnd_s233: bool;
var agree_s327: bool;
var tokenHolder_s516: Ref;
var amount_s516: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var _tokenAddress_s35: Ref;
var _fundAddress_s35: Ref;
var _startTime_s35: int;
var _endTime_s35: int;
var _holdEndTime_s35: int;
var _checkTransfersAfterEnd_s35: bool;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (RefundPoll));
gas := (gas) - (53000);
call RefundPoll_RefundPoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_RefundPoll) ==> ((fundAddress_BasePoll[this]) == (null));
  // invariant (HoudiniB2_RefundPoll) ==> ((fundAddress_BasePoll[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s233;
havoc _fundAddress_s233;
havoc _startTime_s233;
havoc _endTime_s233;
havoc _checkTransfersAfterEnd_s233;
havoc agree_s327;
havoc tokenHolder_s516;
havoc amount_s516;
havoc __ret_0_tryToFinalize;
havoc __ret_0_isNowApproved;
havoc _tokenAddress_s35;
havoc _fundAddress_s35;
havoc _startTime_s35;
havoc _endTime_s35;
havoc _holdEndTime_s35;
havoc _checkTransfersAfterEnd_s35;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s327);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_tryToFinalize := tryToFinalize_RefundPoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_isNowApproved := isNowApproved_BasePoll(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (BasePoll)) || ((DType[this]) == (RefundPoll))) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation CorralChoice_BasePoll(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _tokenAddress_s233: Ref;
var _fundAddress_s233: Ref;
var _startTime_s233: int;
var _endTime_s233: int;
var _checkTransfersAfterEnd_s233: bool;
var agree_s327: bool;
var tokenHolder_s516: Ref;
var amount_s516: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s233;
havoc _fundAddress_s233;
havoc _startTime_s233;
havoc _endTime_s233;
havoc _checkTransfersAfterEnd_s233;
havoc agree_s327;
havoc tokenHolder_s516;
havoc amount_s516;
havoc __ret_0_tryToFinalize;
havoc __ret_0_isNowApproved;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s327);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_tryToFinalize := tryToFinalize_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_isNowApproved := isNowApproved_BasePoll(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_BasePoll()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _tokenAddress_s233: Ref;
var _fundAddress_s233: Ref;
var _startTime_s233: int;
var _endTime_s233: int;
var _checkTransfersAfterEnd_s233: bool;
assume ((now) >= (0));
assume (((DType[this]) == (BasePoll)) || ((DType[this]) == (RefundPoll)));
gas := (gas) - (53000);
call BasePoll_BasePoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s233, _fundAddress_s233, _startTime_s233, _endTime_s233, _checkTransfersAfterEnd_s233);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_BasePoll(this);
}
}

implementation CorralChoice_IERC20Token(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s599: Ref;
var balance_s599: int;
var _to_s608: Ref;
var _value_s608: int;
var success_s608: bool;
var _from_s619: Ref;
var _to_s619: Ref;
var _value_s619: int;
var success_s619: bool;
var _spender_s628: Ref;
var _value_s628: int;
var success_s628: bool;
var _owner_s637: Ref;
var _spender_s637: Ref;
var remaining_s637: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s599;
havoc balance_s599;
havoc _to_s608;
havoc _value_s608;
havoc success_s608;
havoc _from_s619;
havoc _to_s619;
havoc _value_s619;
havoc success_s619;
havoc _spender_s628;
havoc _value_s628;
havoc success_s628;
havoc _owner_s637;
havoc _spender_s637;
havoc remaining_s637;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s599 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s599);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s608 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s608, _value_s608);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s619 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s619, _to_s619, _value_s619);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s628 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s628, _value_s628);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s637 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s637, _spender_s637);
}
}

implementation CorralEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (IERC20Token));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20Token(this);
}
}

implementation CorralChoice_IPollManagedFund(this: Ref)
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
}

implementation CorralEntry_IPollManagedFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (IPollManagedFund));
gas := (gas) - (53000);
call IPollManagedFund_IPollManagedFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IPollManagedFund(this);
}
}

implementation CorralChoice_RefundPoll(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _tokenAddress_s233: Ref;
var _fundAddress_s233: Ref;
var _startTime_s233: int;
var _endTime_s233: int;
var _checkTransfersAfterEnd_s233: bool;
var agree_s327: bool;
var tokenHolder_s516: Ref;
var amount_s516: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var _tokenAddress_s35: Ref;
var _fundAddress_s35: Ref;
var _startTime_s35: int;
var _endTime_s35: int;
var _holdEndTime_s35: int;
var _checkTransfersAfterEnd_s35: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s233;
havoc _fundAddress_s233;
havoc _startTime_s233;
havoc _endTime_s233;
havoc _checkTransfersAfterEnd_s233;
havoc agree_s327;
havoc tokenHolder_s516;
havoc amount_s516;
havoc __ret_0_tryToFinalize;
havoc __ret_0_isNowApproved;
havoc _tokenAddress_s35;
havoc _fundAddress_s35;
havoc _startTime_s35;
havoc _endTime_s35;
havoc _holdEndTime_s35;
havoc _checkTransfersAfterEnd_s35;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s327);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s516, amount_s516);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_tryToFinalize := tryToFinalize_RefundPoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_isNowApproved := isNowApproved_BasePoll(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_RefundPoll()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _tokenAddress_s35: Ref;
var _fundAddress_s35: Ref;
var _startTime_s35: int;
var _endTime_s35: int;
var _holdEndTime_s35: int;
var _checkTransfersAfterEnd_s35: bool;
assume ((now) >= (0));
assume ((DType[this]) == (RefundPoll));
gas := (gas) - (53000);
call RefundPoll_RefundPoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s35, _fundAddress_s35, _startTime_s35, _endTime_s35, _holdEndTime_s35, _checkTransfersAfterEnd_s35);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RefundPoll(this);
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
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((DType[this]) == (BasePoll)) || ((DType[this]) == (RefundPoll))) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


