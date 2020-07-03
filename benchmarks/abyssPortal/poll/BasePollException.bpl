// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:BasePollException.bpl /pretty:1 BasePollVerisol.bpl

type Ref = int;

type ContractName = int;

const unique null: Ref;

const unique BasePoll: ContractName;

const unique BasePoll.Vote: ContractName;

const unique ERC20Token: ContractName;

const unique SafeMath: ContractName;

function ConstantToRef(x: int) : Ref;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_Ref: [Ref][Ref]Ref;

var M_Ref_int: [Ref][Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;

procedure {:inline 1} HavocAllocMany__success();
  modifies Alloc;

procedure {:inline 1} BasePoll.Vote_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    time: int, 
    weight: int, 
    agree: bool);
  modifies time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote;

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

procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool);
  modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll, fundAddress_BasePoll, startTime_BasePoll, endTime_BasePoll, checkTransfersAfterEnd_BasePoll, yesCounter_BasePoll, noCounter_BasePoll, totalVoted_BasePoll, finalized_BasePoll, votesByAddress_BasePoll, revert, token_BasePoll, Alloc;

procedure {:constructor} {:public} {:inline 1} BasePoll_BasePoll(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, MAX_TOKENS_WEIGHT_DENOM_BasePoll, fundAddress_BasePoll, startTime_BasePoll, endTime_BasePoll, checkTransfersAfterEnd_BasePoll, yesCounter_BasePoll, noCounter_BasePoll, totalVoted_BasePoll, finalized_BasePoll, votesByAddress_BasePoll, token_BasePoll, Alloc;

implementation BasePoll_BasePoll(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call BasePoll_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s122, _fundAddress_s122, _startTime_s122, _endTime_s122, _checkTransfersAfterEnd_s122);
        assume revert || gas < 0;
    }
    else
    {
        call BasePoll_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s122, _fundAddress_s122, _startTime_s122, _endTime_s122, _checkTransfersAfterEnd_s122);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, yesCounter_BasePoll, noCounter_BasePoll, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll;

implementation vote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call vote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, agree_s215);
        assume revert || gas < 0;
    }
    else
    {
        call vote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, agree_s215);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} revokeVote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll, yesCounter_BasePoll, noCounter_BasePoll;

implementation revokeVote_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call revokeVote_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call revokeVote_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} onTokenTransfer_BasePoll(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, yesCounter_BasePoll, noCounter_BasePoll, weight_BasePoll.Vote;

implementation onTokenTransfer_BasePoll(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call onTokenTransfer_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s406, amount_s406);
        assume revert || gas < 0;
    }
    else
    {
        call onTokenTransfer_BasePoll__success(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s406, amount_s406);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} tryToFinalize_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, finalized_BasePoll;

implementation tryToFinalize_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := tryToFinalize_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := tryToFinalize_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} isNowApproved_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token;

implementation isNowApproved_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := isNowApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isNowApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}

procedure {:inline 1} isSubjectApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);

procedure {:inline 1} onPollFinish_BasePoll(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s456: bool);

procedure {:inline 1} ERC20Token_ERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies name_ERC20Token, symbol_ERC20Token, decimals_ERC20Token, totalSupply_ERC20Token, balances_ERC20Token, allowed_ERC20Token, Alloc;

procedure {:inline 1} ERC20Token_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, name_ERC20Token, symbol_ERC20Token, decimals_ERC20Token, totalSupply_ERC20Token, balances_ERC20Token, allowed_ERC20Token, Alloc;

implementation ERC20Token_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}

var name_ERC20Token: [Ref]int;

var symbol_ERC20Token: [Ref]int;

var decimals_ERC20Token: [Ref]int;

var totalSupply_ERC20Token: [Ref]int;

var balances_ERC20Token: [Ref]Ref;

var allowed_ERC20Token: [Ref]Ref;

procedure {:public} {:inline 1} transfer_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, M_Ref_int;

implementation transfer_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := transfer_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s557, _value_s557);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s557, _value_s557);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} transferFrom_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, M_Ref_int;

implementation transferFrom_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := transferFrom_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s641, _to_s641, _value_s641);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s641, _to_s641, _value_s641);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token;

implementation balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := balanceOf_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s653);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s653);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} approve_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, M_Ref_int;

implementation approve_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := approve_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s681, _value_s681);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s681, _value_s681);
        assume !revert && gas >= 0;
    }
}

procedure {:public} {:inline 1} allowance_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token;

implementation allowance_ERC20Token(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call __ret_0_ := allowance_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s697, _spender_s697);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s697, _spender_s697);
        assume !revert && gas >= 0;
    }
}

procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);

procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token;

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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s725: int, b_s725: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s784: int, b_s784: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s830: int, b_s830: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;

procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;

procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, revert, Balance;

procedure BoogieEntry_SafeMath();
  modifies gas;

procedure checkTime_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;

procedure notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;

procedure CorralChoice_BasePoll(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, yesCounter_BasePoll, noCounter_BasePoll, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll, finalized_BasePoll;

procedure CorralEntry_BasePoll();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, yesCounter_BasePoll, noCounter_BasePoll, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll, finalized_BasePoll, MAX_TOKENS_WEIGHT_DENOM_BasePoll, fundAddress_BasePoll, startTime_BasePoll, endTime_BasePoll, checkTransfersAfterEnd_BasePoll, votesByAddress_BasePoll, token_BasePoll, Alloc;

var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_Ref: [Ref][Ref]Ref;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__Length: [Ref]int;

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

var __tmp__name_ERC20Token: [Ref]int;

var __tmp__symbol_ERC20Token: [Ref]int;

var __tmp__decimals_ERC20Token: [Ref]int;

var __tmp__totalSupply_ERC20Token: [Ref]int;

var __tmp__balances_ERC20Token: [Ref]Ref;

var __tmp__allowed_ERC20Token: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;

procedure {:inline 1} HavocAllocMany__fail();
  modifies __tmp__Alloc;

procedure {:inline 1} BasePoll.Vote_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    time: int, 
    weight: int, 
    agree: bool);
  modifies __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote;

procedure {:inline 1} BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool);
  modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, revert, __tmp__token_BasePoll, __tmp__Alloc;

procedure {:constructor} {:inline 1} BasePoll_BasePoll__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool);
  modifies MAX_TOKENS_WEIGHT_DENOM_BasePoll, fundAddress_BasePoll, startTime_BasePoll, endTime_BasePoll, checkTransfersAfterEnd_BasePoll, yesCounter_BasePoll, noCounter_BasePoll, totalVoted_BasePoll, finalized_BasePoll, votesByAddress_BasePoll, revert, token_BasePoll, Alloc;

procedure {:constructor} {:inline 1} BasePoll_BasePoll__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool);
  modifies __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, revert, __tmp__token_BasePoll, __tmp__Alloc;

procedure {:inline 1} vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
  modifies revert, yesCounter_BasePoll, noCounter_BasePoll, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll;

procedure {:inline 1} vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool);
  modifies revert, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__totalVoted_BasePoll;

procedure {:inline 1} revokeVote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, time_BasePoll.Vote, weight_BasePoll.Vote, agree_BasePoll.Vote, totalVoted_BasePoll, yesCounter_BasePoll, noCounter_BasePoll;

procedure {:inline 1} revokeVote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__totalVoted_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll;

procedure {:inline 1} onTokenTransfer_BasePoll__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int);
  modifies revert, yesCounter_BasePoll, noCounter_BasePoll, weight_BasePoll.Vote;

procedure {:inline 1} onTokenTransfer_BasePoll__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int);
  modifies revert, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__weight_BasePoll.Vote;

procedure {:inline 1} tryToFinalize_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies finalized_BasePoll, revert;

procedure {:inline 1} tryToFinalize_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies __tmp__finalized_BasePoll, revert;

procedure {:inline 1} isNowApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);

procedure {:inline 1} isNowApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);

procedure {:inline 1} isSubjectApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);

procedure {:inline 1} ERC20Token_ERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, __tmp__Alloc;

procedure {:inline 1} ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies name_ERC20Token, symbol_ERC20Token, decimals_ERC20Token, totalSupply_ERC20Token, balances_ERC20Token, allowed_ERC20Token, Alloc;

procedure {:inline 1} ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, __tmp__Alloc;

procedure {:inline 1} transfer_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;

procedure {:inline 1} transfer_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;

procedure {:inline 1} transferFrom_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;

procedure {:inline 1} transferFrom_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;

procedure {:inline 1} balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
   returns (__ret_0_: int);

procedure {:inline 1} balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
   returns (__ret_0_: int);

procedure {:inline 1} approve_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
   returns (__ret_0_: bool);
  modifies M_Ref_int;

procedure {:inline 1} approve_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
   returns (__ret_0_: bool);
  modifies __tmp__M_Ref_int;

procedure {:inline 1} allowance_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
   returns (__ret_0_: int);

procedure {:inline 1} allowance_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
   returns (__ret_0_: int);

procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);

procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);

procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);

procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s725: int, b_s725: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s784: int, b_s784: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s830: int, b_s830: int)
   returns (__ret_0_: int);
  modifies revert;

procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;

procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;

procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref, __tmp__M_Ref_int, __tmp__Length, __tmp__time_BasePoll.Vote, __tmp__weight_BasePoll.Vote, __tmp__agree_BasePoll.Vote, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll, __tmp__token_BasePoll, __tmp__fundAddress_BasePoll, __tmp__startTime_BasePoll, __tmp__endTime_BasePoll, __tmp__checkTransfersAfterEnd_BasePoll, __tmp__yesCounter_BasePoll, __tmp__noCounter_BasePoll, __tmp__totalVoted_BasePoll, __tmp__finalized_BasePoll, __tmp__votesByAddress_BasePoll, __tmp__name_ERC20Token, __tmp__symbol_ERC20Token, __tmp__decimals_ERC20Token, __tmp__totalSupply_ERC20Token, __tmp__balances_ERC20Token, __tmp__allowed_ERC20Token, revert;

procedure checkTime_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;

procedure notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;

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

implementation HavocAllocMany__fail()
{
  var oldAlloc: [Ref]bool;

    oldAlloc := __tmp__Alloc;
    havoc __tmp__Alloc;
    assume (forall __i__0_0: Ref :: oldAlloc[__i__0_0] ==> __tmp__Alloc[__i__0_0]);
}

implementation HavocAllocMany__success()
{
  var oldAlloc: [Ref]bool;

    oldAlloc := Alloc;
    havoc Alloc;
    assume (forall __i__0_0: Ref :: oldAlloc[__i__0_0] ==> Alloc[__i__0_0]);
}

implementation BasePoll.Vote_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    time: int, 
    weight: int, 
    agree: bool)
{
    __tmp__time_BasePoll.Vote[this] := time;
    __tmp__weight_BasePoll.Vote[this] := weight;
    __tmp__agree_BasePoll.Vote[this] := agree;
}

implementation BasePoll.Vote_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    time: int, 
    weight: int, 
    agree: bool)
{
    time_BasePoll.Vote[this] := time;
    weight_BasePoll.Vote[this] := weight;
    agree_BasePoll.Vote[this] := agree;
}

implementation BasePoll_BasePoll_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: Ref;
  var __var_6: Ref;

    assume msgsender_MSG != null;
    __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll[this] := 1000;
    __tmp__fundAddress_BasePoll[this] := null;
    __tmp__startTime_BasePoll[this] := 0;
    __tmp__endTime_BasePoll[this] := 0;
    __tmp__checkTransfersAfterEnd_BasePoll[this] := false;
    __tmp__yesCounter_BasePoll[this] := 0;
    __tmp__noCounter_BasePoll[this] := 0;
    __tmp__totalVoted_BasePoll[this] := 0;
    __tmp__finalized_BasePoll[this] := false;
    call __var_6 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__votesByAddress_BasePoll[this] := __var_6;
    assume (forall __i__0_0: Ref :: 
      __tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][__i__0_0] == null);
    __var_3 := null;
    if (!(_tokenAddress_s122 != null))
    {
        revert := true;
        return;
    }

    havoc __var_4;
    if (!(_startTime_s122 >= __var_4 && _endTime_s122 > _startTime_s122))
    {
        revert := true;
        return;
    }

    assume __tmp__DType[_tokenAddress_s122] == ERC20Token;
    __var_5 := _tokenAddress_s122;
    __tmp__token_BasePoll[this] := __var_5;
    __tmp__fundAddress_BasePoll[this] := _fundAddress_s122;
    __tmp__startTime_BasePoll[this] := _startTime_s122;
    __tmp__endTime_BasePoll[this] := _endTime_s122;
    __tmp__finalized_BasePoll[this] := false;
    __tmp__checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s122;
}

implementation BasePoll_BasePoll_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: Ref;
  var __var_6: Ref;

    assume msgsender_MSG != null;
    MAX_TOKENS_WEIGHT_DENOM_BasePoll[this] := 1000;
    fundAddress_BasePoll[this] := null;
    startTime_BasePoll[this] := 0;
    endTime_BasePoll[this] := 0;
    checkTransfersAfterEnd_BasePoll[this] := false;
    yesCounter_BasePoll[this] := 0;
    noCounter_BasePoll[this] := 0;
    totalVoted_BasePoll[this] := 0;
    finalized_BasePoll[this] := false;
    call __var_6 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    votesByAddress_BasePoll[this] := __var_6;
    assume (forall __i__0_0: Ref :: 
      M_Ref_Ref[votesByAddress_BasePoll[this]][__i__0_0] == null);
    __var_3 := null;
    if (!(_tokenAddress_s122 != null))
    {
        revert := true;
        return;
    }

    havoc __var_4;
    if (!(_startTime_s122 >= __var_4 && _endTime_s122 > _startTime_s122))
    {
        revert := true;
        return;
    }

    assume DType[_tokenAddress_s122] == ERC20Token;
    __var_5 := _tokenAddress_s122;
    token_BasePoll[this] := __var_5;
    fundAddress_BasePoll[this] := _fundAddress_s122;
    startTime_BasePoll[this] := _startTime_s122;
    endTime_BasePoll[this] := _endTime_s122;
    finalized_BasePoll[this] := false;
    checkTransfersAfterEnd_BasePoll[this] := _checkTransfersAfterEnd_s122;
}

implementation BasePoll_BasePoll__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: Ref;
  var __var_6: Ref;

    call BasePoll_BasePoll_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s122, _fundAddress_s122, _startTime_s122, _endTime_s122, _checkTransfersAfterEnd_s122);
    if (revert)
    {
        return;
    }
}

implementation BasePoll_BasePoll__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenAddress_s122: Ref, 
    _fundAddress_s122: Ref, 
    _startTime_s122: int, 
    _endTime_s122: int, 
    _checkTransfersAfterEnd_s122: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: Ref;
  var __var_6: Ref;

    call BasePoll_BasePoll_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s122, _fundAddress_s122, _startTime_s122, _endTime_s122, _checkTransfersAfterEnd_s122);
    if (revert)
    {
        return;
    }
}

implementation vote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
{
  var voiceWeight_s214: int;
  var __var_7: int;
  var maxVoiceWeight_s214: int;
  var __var_8: int;
  var __var_9: int;
  var __var_10: int;
  var __var_11: int;
  var __var_12: int;
  var __var_13: int;

    call checkTime_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!(__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]
       == 0))
    {
        revert := true;
        return;
    }

    call voiceWeight_s214 := balanceOf_ERC20Token__fail(__tmp__token_BasePoll[this], this, __var_7, msgsender_MSG);
    if (revert)
    {
        return;
    }

    voiceWeight_s214 := voiceWeight_s214;
    assume __tmp__DType[__tmp__token_BasePoll[this]] == ERC20Token;
    __var_8 := __tmp__totalSupply_ERC20Token[__tmp__token_BasePoll[this]];
    call maxVoiceWeight_s214 := div_SafeMath__fail(this, this, 0, __var_8, __tmp__MAX_TOKENS_WEIGHT_DENOM_BasePoll[this]);
    if (revert)
    {
        return;
    }

    maxVoiceWeight_s214 := maxVoiceWeight_s214;
    voiceWeight_s214 := (if voiceWeight_s214 <= maxVoiceWeight_s214
       then voiceWeight_s214
       else maxVoiceWeight_s214);
    if (agree_s215)
    {
        call __var_10 := add_SafeMath__fail(this, this, 0, __tmp__yesCounter_BasePoll[this], voiceWeight_s214);
        if (revert)
        {
            return;
        }

        __tmp__yesCounter_BasePoll[this] := __var_10;
    }
    else
    {
        call __var_11 := add_SafeMath__fail(this, this, 0, __tmp__noCounter_BasePoll[this], voiceWeight_s214);
        if (revert)
        {
            return;
        }

        __tmp__noCounter_BasePoll[this] := __var_11;
    }

    havoc __var_12;
    __tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := __var_12;
    __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s214;
    __tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s215;
    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__totalVoted_BasePoll[this], 1);
    if (revert)
    {
        return;
    }

    __tmp__totalVoted_BasePoll[this] := __var_13;
}

implementation vote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, agree_s215: bool)
{
  var voiceWeight_s214: int;
  var __var_7: int;
  var maxVoiceWeight_s214: int;
  var __var_8: int;
  var __var_9: int;
  var __var_10: int;
  var __var_11: int;
  var __var_12: int;
  var __var_13: int;

    call checkTime_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!(time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]
       == 0))
    {
        revert := true;
        return;
    }

    call voiceWeight_s214 := balanceOf_ERC20Token__success(token_BasePoll[this], this, __var_7, msgsender_MSG);
    if (revert)
    {
        return;
    }

    voiceWeight_s214 := voiceWeight_s214;
    assume DType[token_BasePoll[this]] == ERC20Token;
    __var_8 := totalSupply_ERC20Token[token_BasePoll[this]];
    call maxVoiceWeight_s214 := div_SafeMath__success(this, this, 0, __var_8, MAX_TOKENS_WEIGHT_DENOM_BasePoll[this]);
    if (revert)
    {
        return;
    }

    maxVoiceWeight_s214 := maxVoiceWeight_s214;
    voiceWeight_s214 := (if voiceWeight_s214 <= maxVoiceWeight_s214
       then voiceWeight_s214
       else maxVoiceWeight_s214);
    if (agree_s215)
    {
        call __var_10 := add_SafeMath__success(this, this, 0, yesCounter_BasePoll[this], voiceWeight_s214);
        if (revert)
        {
            return;
        }

        yesCounter_BasePoll[this] := __var_10;
    }
    else
    {
        call __var_11 := add_SafeMath__success(this, this, 0, noCounter_BasePoll[this], voiceWeight_s214);
        if (revert)
        {
            return;
        }

        noCounter_BasePoll[this] := __var_11;
    }

    havoc __var_12;
    time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := __var_12;
    weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := voiceWeight_s214;
    agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := agree_s215;
    call __var_13 := add_SafeMath__success(this, this, 0, totalVoted_BasePoll[this], 1);
    if (revert)
    {
        return;
    }

    totalVoted_BasePoll[this] := __var_13;
}

implementation revokeVote_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var voiceWeight_s295: int;
  var agree_s295: bool;
  var __var_14: int;
  var __var_15: int;
  var __var_16: int;

    call checkTime_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!(__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]]
       > 0))
    {
        revert := true;
        return;
    }

    voiceWeight_s295 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
    agree_s295 := __tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]];
    __tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
    __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
    __tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][msgsender_MSG]] := false;
    call __var_14 := sub_SafeMath__fail(this, this, 0, __tmp__totalVoted_BasePoll[this], 1);
    if (revert)
    {
        return;
    }

    __tmp__totalVoted_BasePoll[this] := __var_14;
    if (agree_s295)
    {
        call __var_15 := sub_SafeMath__fail(this, this, 0, __tmp__yesCounter_BasePoll[this], voiceWeight_s295);
        if (revert)
        {
            return;
        }

        __tmp__yesCounter_BasePoll[this] := __var_15;
    }
    else
    {
        call __var_16 := sub_SafeMath__fail(this, this, 0, __tmp__noCounter_BasePoll[this], voiceWeight_s295);
        if (revert)
        {
            return;
        }

        __tmp__noCounter_BasePoll[this] := __var_16;
    }
}

implementation revokeVote_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var voiceWeight_s295: int;
  var agree_s295: bool;
  var __var_14: int;
  var __var_15: int;
  var __var_16: int;

    call checkTime_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!(time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]]
       > 0))
    {
        revert := true;
        return;
    }

    voiceWeight_s295 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
    agree_s295 := agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]];
    time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
    weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := 0;
    agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][msgsender_MSG]] := false;
    call __var_14 := sub_SafeMath__success(this, this, 0, totalVoted_BasePoll[this], 1);
    if (revert)
    {
        return;
    }

    totalVoted_BasePoll[this] := __var_14;
    if (agree_s295)
    {
        call __var_15 := sub_SafeMath__success(this, this, 0, yesCounter_BasePoll[this], voiceWeight_s295);
        if (revert)
        {
            return;
        }

        yesCounter_BasePoll[this] := __var_15;
    }
    else
    {
        call __var_16 := sub_SafeMath__success(this, this, 0, noCounter_BasePoll[this], voiceWeight_s295);
        if (revert)
        {
            return;
        }

        noCounter_BasePoll[this] := __var_16;
    }
}

implementation onTokenTransfer_BasePoll__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int)
{
  var __var_17: int;
  var __var_18: int;
  var __var_19: int;
  var __var_20: int;
  var voiceWeight_s405: int;
  var __var_21: int;
  var __var_22: int;
  var curWeight_s405: int;
  var __var_23: int;

    if (!(msgsender_MSG == __tmp__fundAddress_BasePoll[this]))
    {
        revert := true;
        return;
    }

    if (__tmp__time_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]]
       == 0)
    {
        return;
    }

    if (!__tmp__checkTransfersAfterEnd_BasePoll[this])
    {
        havoc __var_17;
        havoc __var_18;
        if (__tmp__finalized_BasePoll[this]
           || 
          __var_17 < __tmp__startTime_BasePoll[this]
           || __var_18 > __tmp__endTime_BasePoll[this])
        {
            return;
        }
    }

    call __var_19 := balanceOf_ERC20Token__fail(__tmp__token_BasePoll[this], this, __var_20, tokenHolder_s406);
    if (revert)
    {
        return;
    }

    if (__var_19
       >= __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        return;
    }

    voiceWeight_s405 := amount_s406;
    if (amount_s406
       > __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        voiceWeight_s405 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]];
    }

    if (__tmp__agree_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        call __var_21 := sub_SafeMath__fail(this, this, 0, __tmp__yesCounter_BasePoll[this], voiceWeight_s405);
        if (revert)
        {
            return;
        }

        __tmp__yesCounter_BasePoll[this] := __var_21;
    }
    else
    {
        call __var_22 := sub_SafeMath__fail(this, this, 0, __tmp__noCounter_BasePoll[this], voiceWeight_s405);
        if (revert)
        {
            return;
        }

        __tmp__noCounter_BasePoll[this] := __var_22;
    }

    curWeight_s405 := __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]];
    call __var_23 := sub_SafeMath__fail(this, this, 0, curWeight_s405, voiceWeight_s405);
    if (revert)
    {
        return;
    }

    __tmp__weight_BasePoll.Vote[__tmp__M_Ref_Ref[__tmp__votesByAddress_BasePoll[this]][tokenHolder_s406]] := __var_23;
}

implementation onTokenTransfer_BasePoll__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    tokenHolder_s406: Ref, 
    amount_s406: int)
{
  var __var_17: int;
  var __var_18: int;
  var __var_19: int;
  var __var_20: int;
  var voiceWeight_s405: int;
  var __var_21: int;
  var __var_22: int;
  var curWeight_s405: int;
  var __var_23: int;

    if (!(msgsender_MSG == fundAddress_BasePoll[this]))
    {
        revert := true;
        return;
    }

    if (time_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]]
       == 0)
    {
        return;
    }

    if (!checkTransfersAfterEnd_BasePoll[this])
    {
        havoc __var_17;
        havoc __var_18;
        if (finalized_BasePoll[this]
           || 
          __var_17 < startTime_BasePoll[this]
           || __var_18 > endTime_BasePoll[this])
        {
            return;
        }
    }

    call __var_19 := balanceOf_ERC20Token__success(token_BasePoll[this], this, __var_20, tokenHolder_s406);
    if (revert)
    {
        return;
    }

    if (__var_19
       >= weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        return;
    }

    voiceWeight_s405 := amount_s406;
    if (amount_s406
       > weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        voiceWeight_s405 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]];
    }

    if (agree_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]])
    {
        call __var_21 := sub_SafeMath__success(this, this, 0, yesCounter_BasePoll[this], voiceWeight_s405);
        if (revert)
        {
            return;
        }

        yesCounter_BasePoll[this] := __var_21;
    }
    else
    {
        call __var_22 := sub_SafeMath__success(this, this, 0, noCounter_BasePoll[this], voiceWeight_s405);
        if (revert)
        {
            return;
        }

        noCounter_BasePoll[this] := __var_22;
    }

    curWeight_s405 := weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]];
    call __var_23 := sub_SafeMath__success(this, this, 0, curWeight_s405, voiceWeight_s405);
    if (revert)
    {
        return;
    }

    weight_BasePoll.Vote[M_Ref_Ref[votesByAddress_BasePoll[this]][tokenHolder_s406]] := __var_23;
}

implementation tryToFinalize_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_24: int;
  var __var_25: bool;

    call notFinalized_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    havoc __var_24;
    if (__var_24 < __tmp__endTime_BasePoll[this])
    {
        __ret_0_ := false;
        return;
    }

    __tmp__finalized_BasePoll[this] := true;
    call __var_25 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_25);
    __ret_0_ := true;
    return;
}

implementation tryToFinalize_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_24: int;
  var __var_25: bool;

    call notFinalized_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    havoc __var_24;
    if (__var_24 < endTime_BasePoll[this])
    {
        __ret_0_ := false;
        return;
    }

    finalized_BasePoll[this] := true;
    call __var_25 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onPollFinish_BasePoll(this, msgsender_MSG, msgvalue_MSG, __var_25);
    __ret_0_ := true;
    return;
}

implementation isNowApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_26: bool;

    call __var_26 := isSubjectApproved_BasePoll__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_26;
    return;
}

implementation isNowApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_26: bool;

    call __var_26 := isSubjectApproved_BasePoll__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_26;
    return;
}

implementation isSubjectApproved_BasePoll__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    __ret_0_ := __tmp__yesCounter_BasePoll[this] > __tmp__noCounter_BasePoll[this];
    return;
}

implementation isSubjectApproved_BasePoll__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    __ret_0_ := yesCounter_BasePoll[this] > noCounter_BasePoll[this];
    return;
}

implementation ERC20Token_ERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: Ref;
  var __var_28: Ref;

    assume msgsender_MSG != null;
    __tmp__name_ERC20Token[this] := 1728220095;
    __tmp__symbol_ERC20Token[this] := 1728220095;
    __tmp__decimals_ERC20Token[this] := 0;
    __tmp__totalSupply_ERC20Token[this] := 0;
    call __var_27 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_ERC20Token[this] := __var_27;
    assume (forall __i__0_0: Ref :: 
      __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][__i__0_0] == 0);
    call __var_28 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_ERC20Token[this] := __var_28;
    assume (forall __i__0_0: Ref :: 
      __tmp__Length[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][__i__0_0]] == 0);
    assume (forall __i__0_0: Ref :: 
      !__tmp__Alloc[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][__i__0_0]]);
    call HavocAllocMany__fail();
    if (revert)
    {
        return;
    }

    assume (forall __i__0_0: Ref :: 
      __tmp__Alloc[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][__i__0_0]]);
    assume (forall __i__0_0: Ref, __i__0_1: Ref :: 
      { M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0], M_Ref_Ref[allowed_ERC20Token[this]][__i__0_1] } 
      __i__0_0 == __i__0_1
         || __tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][__i__0_0]
           != __tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][__i__0_1]);
}

implementation ERC20Token_ERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: Ref;
  var __var_28: Ref;

    assume msgsender_MSG != null;
    name_ERC20Token[this] := 1728220095;
    symbol_ERC20Token[this] := 1728220095;
    decimals_ERC20Token[this] := 0;
    totalSupply_ERC20Token[this] := 0;
    call __var_27 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_ERC20Token[this] := __var_27;
    assume (forall __i__0_0: Ref :: M_Ref_int[balances_ERC20Token[this]][__i__0_0] == 0);
    call __var_28 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_ERC20Token[this] := __var_28;
    assume (forall __i__0_0: Ref :: 
      Length[M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0]] == 0);
    assume (forall __i__0_0: Ref :: !Alloc[M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0]]);
    call HavocAllocMany__success();
    if (revert)
    {
        return;
    }

    assume (forall __i__0_0: Ref :: Alloc[M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0]]);
    assume (forall __i__0_0: Ref, __i__0_1: Ref :: 
      { M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0], M_Ref_Ref[allowed_ERC20Token[this]][__i__0_1] } 
      __i__0_0 == __i__0_1
         || M_Ref_Ref[allowed_ERC20Token[this]][__i__0_0]
           != M_Ref_Ref[allowed_ERC20Token[this]][__i__0_1]);
}

implementation ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Token_ERC20Token_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}

implementation ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Token_ERC20Token_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}

implementation transfer_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
   returns (__ret_0_: bool)
{
  var __var_29: Ref;
  var __var_30: int;
  var __var_31: int;

    __var_29 := null;
    if (!(_to_s557 != null))
    {
        revert := true;
        return;
    }

    if (!(__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]
       >= _value_s557))
    {
        revert := true;
        return;
    }

    call __var_30 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s557);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG] := __var_30;
    call __var_31 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s557], _value_s557);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s557] := __var_31;
    __ret_0_ := true;
    return;
}

implementation transfer_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s557: Ref, 
    _value_s557: int)
   returns (__ret_0_: bool)
{
  var __var_29: Ref;
  var __var_30: int;
  var __var_31: int;

    __var_29 := null;
    if (!(_to_s557 != null))
    {
        revert := true;
        return;
    }

    if (!(M_Ref_int[balances_ERC20Token[this]][msgsender_MSG] >= _value_s557))
    {
        revert := true;
        return;
    }

    call __var_30 := sub_SafeMath__success(this, this, 0, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s557);
    if (revert)
    {
        return;
    }

    M_Ref_int[balances_ERC20Token[this]][msgsender_MSG] := __var_30;
    call __var_31 := add_SafeMath__success(this, this, 0, M_Ref_int[balances_ERC20Token[this]][_to_s557], _value_s557);
    if (revert)
    {
        return;
    }

    M_Ref_int[balances_ERC20Token[this]][_to_s557] := __var_31;
    assert {:EventEmitted "Transfer_ERC20Token"} true;
    __ret_0_ := true;
    return;
}

implementation transferFrom_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
   returns (__ret_0_: bool)
{
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: int;
  var __var_35: int;

    __var_32 := null;
    if (!(_to_s641 != null))
    {
        revert := true;
        return;
    }

    if (!(__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s641] >= _value_s641
       && __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s641]][msgsender_MSG]
         >= _value_s641))
    {
        revert := true;
        return;
    }

    call __var_33 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s641], _value_s641);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s641] := __var_33;
    call __var_34 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s641], _value_s641);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s641] := __var_34;
    call __var_35 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s641]][msgsender_MSG], _value_s641);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s641]][msgsender_MSG] := __var_35;
    __ret_0_ := true;
    return;
}

implementation transferFrom_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s641: Ref, 
    _to_s641: Ref, 
    _value_s641: int)
   returns (__ret_0_: bool)
{
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: int;
  var __var_35: int;

    __var_32 := null;
    if (!(_to_s641 != null))
    {
        revert := true;
        return;
    }

    if (!(M_Ref_int[balances_ERC20Token[this]][_from_s641] >= _value_s641
       && M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s641]][msgsender_MSG]
         >= _value_s641))
    {
        revert := true;
        return;
    }

    call __var_33 := add_SafeMath__success(this, this, 0, M_Ref_int[balances_ERC20Token[this]][_to_s641], _value_s641);
    if (revert)
    {
        return;
    }

    M_Ref_int[balances_ERC20Token[this]][_to_s641] := __var_33;
    call __var_34 := sub_SafeMath__success(this, this, 0, M_Ref_int[balances_ERC20Token[this]][_from_s641], _value_s641);
    if (revert)
    {
        return;
    }

    M_Ref_int[balances_ERC20Token[this]][_from_s641] := __var_34;
    call __var_35 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s641]][msgsender_MSG], _value_s641);
    if (revert)
    {
        return;
    }

    M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s641]][msgsender_MSG] := __var_35;
    assert {:EventEmitted "Transfer_ERC20Token"} true;
    __ret_0_ := true;
    return;
}

implementation balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s653];
    return;
}

implementation balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s653: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[balances_ERC20Token[this]][_owner_s653];
    return;
}

implementation approve_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
   returns (__ret_0_: bool)
{
    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s681] := _value_s681;
    __ret_0_ := true;
    return;
}

implementation approve_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s681: Ref, 
    _value_s681: int)
   returns (__ret_0_: bool)
{
    M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s681] := _value_s681;
    assert {:EventEmitted "Approval_ERC20Token"} true;
    __ret_0_ := true;
    return;
}

implementation allowance_ERC20Token__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s697]][_spender_s697];
    return;
}

implementation allowance_ERC20Token__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s697: Ref, 
    _spender_s697: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s697]][_spender_s697];
    return;
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s725: int, b_s725: int)
   returns (__ret_0_: int)
{
  var c_s724: int;

    c_s724 := a_s725 + b_s725;
    if (!(c_s724 >= a_s725))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s724;
    return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s725: int, b_s725: int)
   returns (__ret_0_: int)
{
  var c_s724: int;

    c_s724 := a_s725 + b_s725;
    if (!(c_s724 >= a_s725))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s724;
    return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int)
{
  var c_s749: int;

    if (!(b_s750 <= a_s750))
    {
        revert := true;
        return;
    }

    c_s749 := a_s750 - b_s750;
    __ret_0_ := c_s749;
    return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int)
{
  var c_s749: int;

    if (!(b_s750 <= a_s750))
    {
        revert := true;
        return;
    }

    c_s749 := a_s750 - b_s750;
    __ret_0_ := c_s749;
    return;
}

implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s784: int, b_s784: int)
   returns (__ret_0_: int)
{
  var c_s783: int;

    if (a_s784 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s783 := a_s784 * b_s784;
    if (!(c_s783 div a_s784 == b_s784))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s783;
    return;
}

implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s784: int, b_s784: int)
   returns (__ret_0_: int)
{
  var c_s783: int;

    if (a_s784 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s783 := a_s784 * b_s784;
    if (!(c_s783 div a_s784 == b_s784))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s783;
    return;
}

implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int)
{
  var c_s808: int;

    if (!(b_s809 > 0))
    {
        revert := true;
        return;
    }

    c_s808 := a_s809 div b_s809;
    __ret_0_ := c_s808;
    return;
}

implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int)
{
  var c_s808: int;

    if (!(b_s809 > 0))
    {
        revert := true;
        return;
    }

    c_s808 := a_s809 div b_s809;
    __ret_0_ := c_s808;
    return;
}

implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s830: int, b_s830: int)
   returns (__ret_0_: int)
{
    if (!(b_s830 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s830 mod b_s830;
    return;
}

implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s830: int, b_s830: int)
   returns (__ret_0_: int)
{
    if (!(b_s830 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s830 mod b_s830;
    return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ERC20Token)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BasePoll)
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
    if (DType[to] == ERC20Token)
    {
        assume amount == 0;
    }
    else if (DType[to] == BasePoll)
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
  var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
  var __snap___tmp__M_Ref_int: [Ref][Ref]int;
  var __snap___tmp__Length: [Ref]int;
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
  var __snap___tmp__name_ERC20Token: [Ref]int;
  var __snap___tmp__symbol_ERC20Token: [Ref]int;
  var __snap___tmp__decimals_ERC20Token: [Ref]int;
  var __snap___tmp__totalSupply_ERC20Token: [Ref]int;
  var __snap___tmp__balances_ERC20Token: [Ref]Ref;
  var __snap___tmp__allowed_ERC20Token: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__Length := __tmp__Length;
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
        __snap___tmp__name_ERC20Token := __tmp__name_ERC20Token;
        __snap___tmp__symbol_ERC20Token := __tmp__symbol_ERC20Token;
        __snap___tmp__decimals_ERC20Token := __tmp__decimals_ERC20Token;
        __snap___tmp__totalSupply_ERC20Token := __tmp__totalSupply_ERC20Token;
        __snap___tmp__balances_ERC20Token := __tmp__balances_ERC20Token;
        __snap___tmp__allowed_ERC20Token := __tmp__allowed_ERC20Token;
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
        __tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
        __tmp__M_Ref_int := __snap___tmp__M_Ref_int;
        __tmp__Length := __snap___tmp__Length;
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
        __tmp__name_ERC20Token := __snap___tmp__name_ERC20Token;
        __tmp__symbol_ERC20Token := __snap___tmp__symbol_ERC20Token;
        __tmp__decimals_ERC20Token := __snap___tmp__decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := __snap___tmp__totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := __snap___tmp__balances_ERC20Token;
        __tmp__allowed_ERC20Token := __snap___tmp__allowed_ERC20Token;
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
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
        __tmp__name_ERC20Token := name_ERC20Token;
        __tmp__symbol_ERC20Token := symbol_ERC20Token;
        __tmp__decimals_ERC20Token := decimals_ERC20Token;
        __tmp__totalSupply_ERC20Token := totalSupply_ERC20Token;
        __tmp__balances_ERC20Token := balances_ERC20Token;
        __tmp__allowed_ERC20Token := allowed_ERC20Token;
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

implementation checkTime_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: int;
  var __var_2: int;

    havoc __var_1;
    havoc __var_2;
    if (!(__var_1 >= __tmp__startTime_BasePoll[this]
       && __var_2 <= __tmp__endTime_BasePoll[this]))
    {
        revert := true;
        return;
    }
}

implementation checkTime_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: int;
  var __var_2: int;

    havoc __var_1;
    havoc __var_2;
    if (!(__var_1 >= startTime_BasePoll[this] && __var_2 <= endTime_BasePoll[this]))
    {
        revert := true;
        return;
    }
}

implementation notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!!__tmp__finalized_BasePoll[this])
    {
        revert := true;
        return;
    }
}

implementation notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!!finalized_BasePoll[this])
    {
        revert := true;
        return;
    }
}

implementation CorralChoice_BasePoll(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _tokenAddress_s122: Ref;
  var _fundAddress_s122: Ref;
  var _startTime_s122: int;
  var _endTime_s122: int;
  var _checkTransfersAfterEnd_s122: bool;
  var agree_s215: bool;
  var tokenHolder_s406: Ref;
  var amount_s406: int;
  var __ret_0_tryToFinalize: bool;
  var __ret_0_isNowApproved: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _tokenAddress_s122;
    havoc _fundAddress_s122;
    havoc _startTime_s122;
    havoc _endTime_s122;
    havoc _checkTransfersAfterEnd_s122;
    havoc agree_s215;
    havoc tokenHolder_s406;
    havoc amount_s406;
    havoc __ret_0_tryToFinalize;
    havoc __ret_0_isNowApproved;
    if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call vote_BasePoll(this, msgsender_MSG, msgvalue_MSG, agree_s215);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call revokeVote_BasePoll(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call onTokenTransfer_BasePoll(this, msgsender_MSG, msgvalue_MSG, tokenHolder_s406, amount_s406);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_tryToFinalize := tryToFinalize_BasePoll(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isNowApproved := isNowApproved_BasePoll(this, msgsender_MSG, msgvalue_MSG);
    }
}

implementation CorralEntry_BasePoll()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _tokenAddress_s122: Ref;
  var _fundAddress_s122: Ref;
  var _startTime_s122: int;
  var _endTime_s122: int;
  var _checkTransfersAfterEnd_s122: bool;

    assume DType[this] == BasePoll;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call BasePoll_BasePoll(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s122, _fundAddress_s122, _startTime_s122, _endTime_s122, _checkTransfersAfterEnd_s122);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BasePoll(this);
    }
}

