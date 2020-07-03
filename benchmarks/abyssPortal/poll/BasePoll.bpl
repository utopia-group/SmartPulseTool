type Ref = int;
type ContractName = int;
var null: Ref;
var BasePoll: ContractName;
var BasePoll.Vote: ContractName;
var IERC20Token: ContractName;
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
procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool);
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
procedure {:constructor} {:public} {:inline 1} BasePoll_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool);
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
implementation BasePoll_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool)
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
call BasePoll_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
assume ((revert) || ((gas) < (0)));
} else {
call BasePoll_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
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
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
implementation vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
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
call vote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, agree_s215);
assume ((revert) || ((gas) < (0)));
} else {
call vote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, agree_s215);
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
call revokeVote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call revokeVote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onTokenTransfer_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int);
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
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies weight_BasePoll.Vote;
implementation onTokenTransfer_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int)
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
call onTokenTransfer_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s404, amount_s404);
assume ((revert) || ((gas) < (0)));
} else {
call onTokenTransfer_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s404, amount_s404);
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
call __ret_0_ := isNowApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isNowApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} isSubjectApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} onPollFinish_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s454: bool);
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
procedure {:public} {:inline 1} balanceOf_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s472: Ref) returns (balance_s472: int);
procedure {:public} {:inline 1} transfer_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s481: Ref, _value_s481: int) returns (success_s481: bool);
procedure {:public} {:inline 1} transferFrom_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s492: Ref, _to_s492: Ref, _value_s492: int) returns (success_s492: bool);
procedure {:public} {:inline 1} approve_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s501: Ref, _value_s501: int) returns (success_s501: bool);
procedure {:public} {:inline 1} allowance_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s510: Ref, _spender_s510: Ref) returns (remaining_s510: int);
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
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s563: int, b_s563: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s581: int, b_s581: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s601: int, b_s601: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s625: int, b_s625: int) returns (__ret_0_: int);
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
modifies revert;
modifies Balance;
// const {:existential true} HoudiniB1_BasePoll: bool;
// const {:existential true} HoudiniB2_BasePoll: bool;
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
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} BasePoll.Vote_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, time: int, weight: int, agree: bool);
modifies __tmp__time_BasePoll.Vote;
modifies __tmp__weight_BasePoll.Vote;
modifies __tmp__agree_BasePoll.Vote;
procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool);
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
procedure {:constructor} {:inline 1} BasePoll_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool);
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
procedure {:constructor} {:inline 1} BasePoll_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool);
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
procedure {:inline 1} vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
modifies revert;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies time_BasePoll.Vote;
modifies weight_BasePoll.Vote;
modifies agree_BasePoll.Vote;
modifies totalVoted_BasePoll;
procedure {:inline 1} vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
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
procedure {:inline 1} onTokenTransfer_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int);
modifies revert;
modifies yesCounter_BasePoll;
modifies noCounter_BasePoll;
modifies weight_BasePoll.Vote;
procedure {:inline 1} onTokenTransfer_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int);
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
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s563: int, b_s563: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s581: int, b_s581: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s601: int, b_s601: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s625: int, b_s625: int) returns (__ret_0_: int);
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

implementation BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool)
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
if (!((_tokenAddress_s121) != (null))) {
revert := true;
return;
}
assume ((_startTime_s121) >= (0));
assume ((__tmp__now) >= (0));
assume ((_endTime_s121) >= (0));
assume ((_startTime_s121) >= (0));
if (!(((_startTime_s121) >= (__tmp__now)) && ((_endTime_s121) > (_startTime_s121)))) {
revert := true;
return;
}
assume ((__tmp__DType[_tokenAddress_s121]) == (IERC20Token));
__var_2 := _tokenAddress_s121;
__tmp__token_BasePoll[this] := __var_2;
__tmp__fundAddress_BasePoll[this] := _fundAddress_s121;
assume ((__tmp__startTime_BasePoll[this]) >= (0));
assume ((_startTime_s121) >= (0));
__tmp__startTime_BasePoll[this] := _startTime_s121;
assume ((__tmp__endTime_BasePoll[this]) >= (0));
assume ((_endTime_s121) >= (0));
__tmp__endTime_BasePoll[this] := _endTime_s121;
__tmp__finalized_BasePoll[this] := false;
__tmp__checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s121;
}

implementation BasePoll_BasePoll_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool)
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
if (!((_tokenAddress_s121) != (null))) {
revert := true;
return;
}
assume ((_startTime_s121) >= (0));
assume ((now) >= (0));
assume ((_endTime_s121) >= (0));
assume ((_startTime_s121) >= (0));
if (!(((_startTime_s121) >= (now)) && ((_endTime_s121) > (_startTime_s121)))) {
revert := true;
return;
}
assume ((DType[_tokenAddress_s121]) == (IERC20Token));
__var_2 := _tokenAddress_s121;
token_BasePoll[this] := __var_2;
fundAddress_BasePoll[this] := _fundAddress_s121;
assume ((startTime_BasePoll[this]) >= (0));
assume ((_startTime_s121) >= (0));
startTime_BasePoll[this] := _startTime_s121;
assume ((endTime_BasePoll[this]) >= (0));
assume ((_endTime_s121) >= (0));
endTime_BasePoll[this] := _endTime_s121;
finalized_BasePoll[this] := false;
checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s121;
}

implementation BasePoll_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasePoll_BasePoll_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
if (revert) {
return;
}
}

implementation BasePoll_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s121: Ref, _fundAddress_s121: Ref, _startTime_s121: int, _endTime_s121: int, _checkTransfersAfterEnd_s121: bool)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasePoll_BasePoll_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
if (revert) {
return;
}
}

implementation vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
{
var voiceWeight_s214: int;
var __var_4: int;
var maxVoiceWeight_s214: int;
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
assume ((voiceWeight_s214) >= (0));
call voiceWeight_s214 := balanceOf_IERC20Token(__tmp__token_BasePoll[this], this, __var_4, msgsender_MSG);
voiceWeight_s214 := voiceWeight_s214;
assume ((maxVoiceWeight_s214) >= (0));
assume ((__var_5) >= (0));
assume ((__tmp__DType[__tmp__token_BasePoll[this]]) == (IERC20Token));
__var_5 := __tmp__totalSupply_IERC20Token[__tmp__token_BasePoll[this]];
assume ((__var_5) >= (0));
assume (((__var_5) / (1000)) >= (0));
maxVoiceWeight_s214 := (__var_5) / (1000);
assume ((voiceWeight_s214) >= (0));
assume ((voiceWeight_s214) >= (0));
assume ((maxVoiceWeight_s214) >= (0));
assume ((voiceWeight_s214) >= (0));
assume ((maxVoiceWeight_s214) >= (0));
assume ((if (voiceWeight_s214) <= (maxVoiceWeight_s214) then (voiceWeight_s214) else (maxVoiceWeight_s214)) >= (0));
voiceWeight_s214 := if (voiceWeight_s214) <= (maxVoiceWeight_s214) then (voiceWeight_s214) else (maxVoiceWeight_s214);
if (agree_s215) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s214) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_7 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s214);
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
assume ((voiceWeight_s214) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_8 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s214);
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
assume ((voiceWeight_s214) >= (0));
__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s214;
__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s215;
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__tmp__totalVoted_BasePoll[this]) >= (0));
assume ((__var_10) >= (0));
__var_10 := 1;
assume ((1) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
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

implementation vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
{
var voiceWeight_s214: int;
var __var_4: int;
var maxVoiceWeight_s214: int;
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
assume ((voiceWeight_s214) >= (0));
call voiceWeight_s214 := balanceOf_IERC20Token(token_BasePoll[this], this, __var_4, msgsender_MSG);
voiceWeight_s214 := voiceWeight_s214;
assume ((maxVoiceWeight_s214) >= (0));
assume ((__var_5) >= (0));
assume ((DType[token_BasePoll[this]]) == (IERC20Token));
__var_5 := totalSupply_IERC20Token[token_BasePoll[this]];
assume ((__var_5) >= (0));
assume (((__var_5) / (1000)) >= (0));
maxVoiceWeight_s214 := (__var_5) / (1000);
assume ((voiceWeight_s214) >= (0));
assume ((voiceWeight_s214) >= (0));
assume ((maxVoiceWeight_s214) >= (0));
assume ((voiceWeight_s214) >= (0));
assume ((maxVoiceWeight_s214) >= (0));
assume ((if (voiceWeight_s214) <= (maxVoiceWeight_s214) then (voiceWeight_s214) else (maxVoiceWeight_s214)) >= (0));
voiceWeight_s214 := if (voiceWeight_s214) <= (maxVoiceWeight_s214) then (voiceWeight_s214) else (maxVoiceWeight_s214);
if (agree_s215) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s214) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_7 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s214);
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
assume ((voiceWeight_s214) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_8 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s214);
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
assume ((voiceWeight_s214) >= (0));
weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s214;
agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s215;
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((totalVoted_BasePoll[this]) >= (0));
assume ((__var_10) >= (0));
__var_10 := 1;
assume ((1) >= (0));
if ((DType[this]) == (BasePoll)) {
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
var voiceWeight_s297: int;
var agree_s297: bool;
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
assume ((voiceWeight_s297) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
voiceWeight_s297 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
agree_s297 := __tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
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
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__totalVoted_BasePoll[this] := __var_11;
assume ((__var_11) >= (0));
if (agree_s297) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s297) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s297);
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
assume ((voiceWeight_s297) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_14 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s297);
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
var voiceWeight_s297: int;
var agree_s297: bool;
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
assume ((voiceWeight_s297) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]) >= (0));
voiceWeight_s297 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
agree_s297 := agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
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
if ((DType[this]) == (BasePoll)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, totalVoted_BasePoll[this], 1);
if (revert) {
return;
}
} else {
assume (false);
}
totalVoted_BasePoll[this] := __var_11;
assume ((__var_11) >= (0));
if (agree_s297) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s297) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s297);
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
assume ((voiceWeight_s297) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_14 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s297);
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

implementation onTokenTransfer_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int)
{
var __var_15: int;
var __var_16: int;
var voiceWeight_s403: int;
var __var_17: int;
var __var_18: int;
var __var_19: int;
if (!((msgsender_MSG) == (__tmp__fundAddress_BasePoll[this]))) {
revert := true;
return;
}
assume ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) == (0)) {
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
call __var_15 := balanceOf_IERC20Token(__tmp__token_BasePoll[this], this, __var_16, tokenHolder_s404);
assume ((__var_15) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((__var_15) >= (__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]])) {
return;
}
assume ((voiceWeight_s403) >= (0));
assume ((amount_s404) >= (0));
voiceWeight_s403 := amount_s404;
assume ((amount_s404) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((amount_s404) > (__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]])) {
assume ((voiceWeight_s403) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
voiceWeight_s403 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]];
}
if (__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) {
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((__tmp__yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s403) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_17 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__yesCounter_BasePoll[this], voiceWeight_s403);
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
assume ((voiceWeight_s403) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_18 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__noCounter_BasePoll[this], voiceWeight_s403);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__noCounter_BasePoll[this] := __var_18;
assume ((__var_18) >= (0));
}
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
assume ((__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
assume ((voiceWeight_s403) >= (0));
if ((__tmp__DType[this]) == (BasePoll)) {
call __var_19 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]], voiceWeight_s403);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s404]] := __var_19;
assume ((__var_19) >= (0));
}

implementation onTokenTransfer_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenHolder_s404: Ref, amount_s404: int)
{
var __var_15: int;
var __var_16: int;
var voiceWeight_s403: int;
var __var_17: int;
var __var_18: int;
var __var_19: int;
if (!((msgsender_MSG) == (fundAddress_BasePoll[this]))) {
revert := true;
return;
}
assume ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) == (0)) {
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
call __var_15 := balanceOf_IERC20Token(token_BasePoll[this], this, __var_16, tokenHolder_s404);
assume ((__var_15) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((__var_15) >= (weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]])) {
return;
}
assume ((voiceWeight_s403) >= (0));
assume ((amount_s404) >= (0));
voiceWeight_s403 := amount_s404;
assume ((amount_s404) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
if ((amount_s404) > (weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]])) {
assume ((voiceWeight_s403) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
voiceWeight_s403 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]];
}
if (agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) {
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((yesCounter_BasePoll[this]) >= (0));
assume ((voiceWeight_s403) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_17 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, yesCounter_BasePoll[this], voiceWeight_s403);
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
assume ((voiceWeight_s403) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_18 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, noCounter_BasePoll[this], voiceWeight_s403);
if (revert) {
return;
}
} else {
assume (false);
}
noCounter_BasePoll[this] := __var_18;
assume ((__var_18) >= (0));
}
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
assume ((weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]]) >= (0));
assume ((voiceWeight_s403) >= (0));
if ((DType[this]) == (BasePoll)) {
call __var_19 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]], voiceWeight_s403);
if (revert) {
return;
}
} else {
assume (false);
}
weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s404]] := __var_19;
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
call __var_20 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_20);
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
call __var_20 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_20);
__ret_0_ := true;
return;
}

implementation isNowApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_21: bool;
call __var_21 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__ret_0_ := __var_21;
return;
}

implementation isNowApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_21: bool;
call __var_21 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
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
__tmp__name_IERC20Token[this] := 982672051;
__tmp__symbol_IERC20Token[this] := 982672051;
__tmp__decimals_IERC20Token[this] := 0;
__tmp__totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
name_IERC20Token[this] := 982672051;
symbol_IERC20Token[this] := 982672051;
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

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s563: int, b_s563: int) returns (__ret_0_: int)
// {
// var c_s562: int;
// assume ((c_s562) >= (0));
// assume ((a_s563) >= (0));
// assume ((b_s563) >= (0));
// assume (((a_s563) * (b_s563)) >= (0));
// c_s562 := (a_s563) * (b_s563);
// assume ((a_s563) >= (0));
// assume ((c_s562) >= (0));
// assume ((a_s563) >= (0));
// assume (((c_s562) / (a_s563)) >= (0));
// assume ((b_s563) >= (0));
// assume ((c_s562) >= (0));
// __ret_0_ := c_s562;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s563: int, b_s563: int) returns (__ret_0_: int)
// {
// var c_s562: int;
// assume ((c_s562) >= (0));
// assume ((a_s563) >= (0));
// assume ((b_s563) >= (0));
// assume (((a_s563) * (b_s563)) >= (0));
// c_s562 := (a_s563) * (b_s563);
// assume ((a_s563) >= (0));
// assume ((c_s562) >= (0));
// assume ((a_s563) >= (0));
// assume (((c_s562) / (a_s563)) >= (0));
// assume ((b_s563) >= (0));
// assert (((a_s563) == (0)) || (((c_s562) / (a_s563)) == (b_s563)));
// assume ((c_s562) >= (0));
// __ret_0_ := c_s562;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s581: int, b_s581: int) returns (__ret_0_: int)
// {
// var c_s580: int;
// assume ((c_s580) >= (0));
// assume ((a_s581) >= (0));
// assume ((b_s581) >= (0));
// assume (((a_s581) / (b_s581)) >= (0));
// c_s580 := (a_s581) / (b_s581);
// assume ((c_s580) >= (0));
// __ret_0_ := c_s580;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s581: int, b_s581: int) returns (__ret_0_: int)
// {
// var c_s580: int;
// assume ((c_s580) >= (0));
// assume ((a_s581) >= (0));
// assume ((b_s581) >= (0));
// assume (((a_s581) / (b_s581)) >= (0));
// c_s580 := (a_s581) / (b_s581);
// assume ((c_s580) >= (0));
// __ret_0_ := c_s580;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s601: int, b_s601: int) returns (__ret_0_: int)
{
assume ((a_s601) >= (0));
assume ((b_s601) >= (0));
assume ((a_s601) >= (0));
assume ((b_s601) >= (0));
assume (((a_s601) - (b_s601)) >= (0));
__ret_0_ := (a_s601) - (b_s601);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s601: int, b_s601: int) returns (__ret_0_: int)
{
assume ((a_s601) >= (0));
assume ((b_s601) >= (0));
assert ((a_s601) >= (b_s601));
assume ((a_s601) >= (0));
assume ((b_s601) >= (0));
assume (((a_s601) - (b_s601)) >= (0));
__ret_0_ := (a_s601) - (b_s601);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s625: int, b_s625: int) returns (__ret_0_: int)
{
var c_s624: int;
assume ((c_s624) >= (0));
assume ((a_s625) >= (0));
assume ((b_s625) >= (0));
assume (((a_s625) + (b_s625)) >= (0));
c_s624 := (a_s625) + (b_s625);
assume ((c_s624) >= (0));
assume ((a_s625) >= (0));
assume ((c_s624) >= (0));
__ret_0_ := c_s624;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s625: int, b_s625: int) returns (__ret_0_: int)
{
var c_s624: int;
assume ((c_s624) >= (0));
assume ((a_s625) >= (0));
assume ((b_s625) >= (0));
assume (((a_s625) + (b_s625)) >= (0));
c_s624 := (a_s625) + (b_s625);
assume ((c_s624) >= (0));
assume ((a_s625) >= (0));
assert ((c_s624) >= (a_s625));
assume ((c_s624) >= (0));
__ret_0_ := c_s624;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (SafeMath)) {
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _tokenAddress_s121: Ref;
var _fundAddress_s121: Ref;
var _startTime_s121: int;
var _endTime_s121: int;
var _checkTransfersAfterEnd_s121: bool;
var agree_s215: bool;
var tokenHolder_s404: Ref;
var amount_s404: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (BasePoll));
gas := (gas) - (53000);
call BasePoll_BasePoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_BasePoll) ==> ((fundAddress_BasePoll[this]) == (null));
  // invariant (HoudiniB2_BasePoll) ==> ((fundAddress_BasePoll[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s121;
havoc _fundAddress_s121;
havoc _startTime_s121;
havoc _endTime_s121;
havoc _checkTransfersAfterEnd_s121;
havoc agree_s215;
havoc tokenHolder_s404;
havoc amount_s404;
havoc __ret_0_tryToFinalize;
havoc __ret_0_isNowApproved;
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
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s215);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s404, amount_s404);
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
var _owner_s472: Ref;
var balance_s472: int;
var _to_s481: Ref;
var _value_s481: int;
var success_s481: bool;
var _from_s492: Ref;
var _to_s492: Ref;
var _value_s492: int;
var success_s492: bool;
var _spender_s501: Ref;
var _value_s501: int;
var success_s501: bool;
var _owner_s510: Ref;
var _spender_s510: Ref;
var remaining_s510: int;
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
havoc _owner_s472;
havoc balance_s472;
havoc _to_s481;
havoc _value_s481;
havoc success_s481;
havoc _from_s492;
havoc _to_s492;
havoc _value_s492;
havoc success_s492;
havoc _spender_s501;
havoc _value_s501;
havoc success_s501;
havoc _owner_s510;
havoc _spender_s510;
havoc remaining_s510;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s472 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s472);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s481 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s481, _value_s481);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s492 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s492, _to_s492, _value_s492);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s501 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s501, _value_s501);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s510 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s510, _spender_s510);
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
assume (((DType[this]) == (BasePoll)) || ((DType[this]) == (SafeMath)));
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
var _tokenAddress_s121: Ref;
var _fundAddress_s121: Ref;
var _startTime_s121: int;
var _endTime_s121: int;
var _checkTransfersAfterEnd_s121: bool;
var agree_s215: bool;
var tokenHolder_s404: Ref;
var amount_s404: int;
var __ret_0_tryToFinalize: bool;
var __ret_0_isNowApproved: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _tokenAddress_s121;
havoc _fundAddress_s121;
havoc _startTime_s121;
havoc _endTime_s121;
havoc _checkTransfersAfterEnd_s121;
havoc agree_s215;
havoc tokenHolder_s404;
havoc amount_s404;
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
call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s215);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s404, amount_s404);
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
var _tokenAddress_s121: Ref;
var _fundAddress_s121: Ref;
var _startTime_s121: int;
var _endTime_s121: int;
var _checkTransfersAfterEnd_s121: bool;
assume ((now) >= (0));
assume ((DType[this]) == (BasePoll));
gas := (gas) - (53000);
call BasePoll_BasePoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s121, _fundAddress_s121, _startTime_s121, _endTime_s121, _checkTransfersAfterEnd_s121);
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
var _owner_s472: Ref;
var balance_s472: int;
var _to_s481: Ref;
var _value_s481: int;
var success_s481: bool;
var _from_s492: Ref;
var _to_s492: Ref;
var _value_s492: int;
var success_s492: bool;
var _spender_s501: Ref;
var _value_s501: int;
var success_s501: bool;
var _owner_s510: Ref;
var _spender_s510: Ref;
var remaining_s510: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s472;
havoc balance_s472;
havoc _to_s481;
havoc _value_s481;
havoc success_s481;
havoc _from_s492;
havoc _to_s492;
havoc _value_s492;
havoc success_s492;
havoc _spender_s501;
havoc _value_s501;
havoc success_s501;
havoc _owner_s510;
havoc _spender_s510;
havoc remaining_s510;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s472 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s472);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s481 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s481, _value_s481);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s492 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s492, _to_s492, _value_s492);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s501 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s501, _value_s501);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s510 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s510, _spender_s510);
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
assume (((DType[this]) == (BasePoll)) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


