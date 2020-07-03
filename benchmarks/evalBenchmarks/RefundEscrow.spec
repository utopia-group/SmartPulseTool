// Spec: L1
// #LTLVariables: user:Ref,val:int
// #LTLFairness: <>(success(RefundEscrow.enableRefunds) {}) && [](<>(success(ConditionalEscrow.withdraw(payee)) {payee == user}))
// #LTLProperty: [](success(RefundEscrow.deposit(payee)) {payee == user && msg.value == val} ==> <>(success(send(from, to, amt)) {to == user && amt >= val}))

// Spec: L2
// LTLVariables: val:int
// LTLFairness: [](<>(call(RefundEscrow.beneficiaryWithdraw) {})) 
// LTLProperty: []((success(RefundEscrow.deposit) {val == msg.value} ; success(RefundEscrow.close) {}) ==> <>(success(send(from, to, amt)) {to == RefundEscrow.beneficiary() && amt >= val}))

// Spec: S1
// LTLFairness: [](!success(RefundEscrow.close))
// LTLProperty: [](!success(RefundEscrow.beneficiaryWithdraw))

// Spec: S2
// LTLProperty: (!success(RefundEscrow.beneficiaryWithdraw) {}) R (success(RefundEscow.close))

// Spec: S3 

// Spec: S4
