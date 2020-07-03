[]((success(enableRefunds)) ==> [](!fail(withdraw(payee)) {depositsOf(payee) > 0}))
[]((success(close) ; call(beneficiaryWithdraw)) ==> <>(success(transfer(from, to, amount)) {to == beneficiary() && amount == address(this).balance}))
[]((success(deposit(payee)) {payee == person && msg.value == amt} ; success(enableRefunds) ; call(withdraw(payee)) {payee == person}) ==> <>(success(send(from,to,amount)) {to == person && amount == amt}))
