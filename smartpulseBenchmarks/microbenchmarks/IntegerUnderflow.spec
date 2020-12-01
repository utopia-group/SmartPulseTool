// #LTLVariables: user:Ref
// #LTLFairness: [](!started(Underflow.transfer(to, amt), to == user))
// #LTLProperty: [](!finished(*, Underflow.balanceOf(user) > fsum(Underflow.deposit, 2, msg.sender == user)))
