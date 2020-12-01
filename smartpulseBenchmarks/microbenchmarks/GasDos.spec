// #LTLVariables: user:Ref
// #LTLFairness: !started(CrowdFund.refund) U finished(CrowdFund.close) && [](<>(started(CrowdFund.refund, msg.sender == user))) 
// #LTLProperty: [](finished(CrowdFund.buy, msg.sender == user) ==> <>(started(send(from, to, amt), to == user && amt == fsum(CrowdFund.buy, 2, msg.sender == user))))
