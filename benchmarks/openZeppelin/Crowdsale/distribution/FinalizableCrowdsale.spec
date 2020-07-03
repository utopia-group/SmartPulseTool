[](!success(buyTokens) {token().balanceOf(beneficiary) < _getTokenAmount(msg.value)})

//may only finalize once
[]((success(finalize)) ==> X([](!success(finalize))))
