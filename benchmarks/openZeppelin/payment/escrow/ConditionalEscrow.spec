[]((call(withdraw(payee)) {withdrawalAllowed(payee) && payee == person && amt == depositsOf(payee) && amt > 0} ; success(transfer(to, from, amount))) ==> <>(call(Withdrawn(payee, payment)) {payee == person && amt == payment}))
[]((call(withdraw(payee)) {withdrawAllowed(payee)} ; fail(transfer)) ==> <>(fail(withdraw)))
[]((call(withdraw(payee)) {!withdrawAllowed(payee)}) ==> <>(fail(withdraw)))
[](call(deposit(payee)) {payee == person, amt == msg.value} ==> <>(call(Deposit(payee, payment)) {payee == person && payment == amt}))
