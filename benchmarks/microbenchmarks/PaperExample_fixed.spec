// If I bid amount X and I am not the highest bidder, I will get my money back 
// #LTLVariables: L:Ref,X:int
// #LTLFairness: <>(started(Auction.withdraw, this.closed == true && L == msg.sender && L != this.winner))
// #LTLProperty: [](finished(Auction.bid, msg.value == X && msg.sender == L) ==> <>(started(send(from, to, amt), to == L && amt == X))) 
