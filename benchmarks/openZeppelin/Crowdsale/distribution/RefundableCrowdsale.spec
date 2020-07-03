[](!success(buyTokens) {token().balanceOf(beneficiary) < _getTokenAmount(msg.value)})

[](call(finalize) {!finalized() && hasClosed() && goalReached()} ==> <>(success(beneficiaryWithdraw))

[](!success(buyTokens) {finalized()})
