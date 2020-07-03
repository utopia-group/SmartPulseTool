[]((call(withdraw(payee)) {payee == person && amt == depositsOf(payee) && amt > 0} ; success(transfer(to, from, amount))) ==> <>(call(Withdrawn(payee, payment)) {payee == person && amt == payment}))
[]((call(withdraw) ; fail(transfer)) ==> <>(fail(withdraw))
[](call(deposit(payee)) {payee == person, amt == msg.value} ==> <>(call(Deposit(payee, payment)) {payee == person && payment == amt}))
