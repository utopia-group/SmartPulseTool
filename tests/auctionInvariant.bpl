// #LTLProperty: []((AP(refundCalled)) ==> <>(AP(refundSuccess)))
var balance : int;
var refunds : [int]int;
var refundSum : int;
var highestBidder : int;
var highestBid : int;

var refundCalled : bool;
var refundSuccess : bool;

function { :smtdefined "((as const (Array Int Int)) 0)" } zero() returns (ret: [int]int);

procedure bid(bidder : int, bid : int) 
    modifies balance, refundSum, refunds, highestBid, highestBidder;
{
    balance := balance + bid;

    assume(bid > highestBid);

    refundSum := refundSum + highestBid;
    refunds[highestBidder] := refunds[highestBidder] + highestBid;
    highestBid := bid;
    highestBidder := bidder;
}

procedure transfer(id : int, amt : int)
    modifies balance, refundSuccess;
{
    if(balance >= amt) {
        balance := balance - amt;
        refundSuccess := true;
        refundSuccess := false;
    }
}

procedure refund(id : int) 
    modifies refunds, refundSum, balance, refundSuccess;
{
    var amt : int;
    var refundAmt : int;

    refundAmt := refunds[id];
    refunds[id] := 0;
    refundSum := refundSum - refundAmt;
    call transfer(id, refundAmt);
}

procedure main() 
    modifies balance, refunds, refundSum, highestBidder, highestBid, refundCalled, refundSuccess;
{
    var amt : int;
    var id : int;

    assume(refunds == zero());
    assume(refundSum == 0);
    assume(balance == 0);
    assume(highestBidder == 0);
    assume(highestBid == 0);

    while(*) {
        havoc amt;
        havoc id;

        assume(amt >= 0);
        assume(refunds[id] <= refundSum);
        //assume(balance == (refundSum + highestBid));

        if(*) {
            call bid(id, amt);
        }
        else {
            refundCalled := true;
            refundCalled := false;
            call refund(id);
        }
    }
}

procedure ULTIMATE.start() 
    modifies balance, refunds, refundSum, highestBidder, highestBid, refundCalled, refundSuccess;
{
    call main();
}
