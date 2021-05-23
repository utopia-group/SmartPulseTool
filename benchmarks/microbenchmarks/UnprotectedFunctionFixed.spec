// #LTLVariables: owner:Ref
// #LTLFairness: [](!started(MultiOwnable.newOwner, this.owners[msg.sender] != null))
// #LTLProperty: [](finished(TestContract.withdrawAll, owner == msg.sender) ==> [](!finished(TestContract.withdrawAll, msg.sender != owner)))
