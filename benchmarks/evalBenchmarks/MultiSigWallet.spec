// Spec: L1

// Spec: L2
// LTLVariables: id:int,user:Ref
// LTLFairness: <>(success(MultiSigWallet.confirmTransaction(txnId)) {id == txnId && msg.sender == user}) && [](<>(call(MultiSigWallet.revokeConfirmation(txnId)) {id == txnId && msg.sender == user}))
// LTLProperty: <>(success(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user}) || <>(fail(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user && MultiSigWallet.hasExecuted(txnId) == true}) 

// Spec: S1
// LTLProperty: [](!success(MultiSigWallet.confirmTransaction) {MultiSigWallet.isAOwner(msg.sender) == false})

// Spec: S2
// LTLProperty: [](!callSuccess(MultiSigWallet.confirmTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true } && !callSuccess(MultiSigWallet.executeTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true}) 

// Spec: S3
// LTLVariables: id:int,dst:Ref
// LTLProperty: []((callSuccess(MultiSigWallet.confirmTransaction(txnId)) {id == txnId && dst == MultiSigWallet.getDestination(id)} && (!success(MultiSigWallet.confirmTransaction) {}) U (success(send(from, to, amt)) {to == dst})) ==> <>(success(MultiSigWallet.confirmTransaction(txnId)) {txnId == id && MultiSigWallet.hasExecuted(id) == true}))


// Spec: S4
// LTLVariables: id:int
// LTLProperty: [](INV {MultiSigWallet.hasExecuted(id) == true} ==> [](!INV{MultiSigWallet.hasExecuted(id) == false}))
