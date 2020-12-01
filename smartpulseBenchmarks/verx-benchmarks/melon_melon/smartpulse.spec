// balance_safety
// LTLProperty: []((finished(ERC20.totalSupply, msg.sender != 1) || finished(ERC20.balanceOf, msg.sender != 1) || finished(ERC20.allowance, msg.sender != 1) || finished(ERC20.transfer, msg.sender != 1) || finished(ERC20.approve, msg.sender != 1) || finished(ERC20.increaseAllowance, msg.sender != 1) || finished(ERC20.decreaseAllowance, msg.sender != 1) || finished(ERC20Detailed.name, msg.sender != 1) || finished(ERC20Detailed.symbol, msg.sender != 1) || finished(ERC20Detailed.decimals, msg.sender != 1) || finished(Melon.changeCouncil, msg.sender != 1) || finished(Melon.mintInitialSupply, msg.sender != 1) || finished(Melon.mintInflation, msg.sender != 1)) ==> <>(finished(*, old(M_Ref_int__balances0[_balances_ERC20[this]][1]) <= M_Ref_int__balances0[_balances_ERC20[this]][1])))

// constant_decimals
// LTLProperty: [](!finished(*, old(_decimals_ERC20Detailed[this]) != _decimals_ERC20Detailed[this]))

// constant_name
// LTLProperty: [](!finished(*, old(_name_ERC20Detailed[this]) != _name_ERC20Detailed[this]))

// constant_symbol
// LTLProperty: [](!finished(*, old(_symbol_ERC20Detailed[this]) != _symbol_ERC20Detailed[this]))

// inflation_enabled
// LTLProperty: [](!finished(Melon.mintInflation, now < 1551398400))

// last_minting_increases
// LTLProperty: [](!finished(*, old(nextMinting_Melon[this]) != nextMinting_Melon[this] && old(nextMinting_Melon[this]) > (nextMinting_Melon[this] - 31536000)))

// minting
// LTLProperty: [](!finished(*, old(nextMinting_Melon[this]) != nextMinting_Melon[this] && old(nextMinting_Melon[this]) != (nextMinting_Melon[this] - 31536000)))

// only_burn_decreases_tokens
// LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.allowance) || finished(ERC20.transfer) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(Melon.changeCouncil) || finished(Melon.mintInitialSupply) || finished(Melon.mintInflation)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) <= _totalSupply_ERC20[this])))

// only_council_can_change_council
// LTLProperty: [](!INV {old(council_Melon[this]) != council_Melon[this] && msg.sender != old(council_Melon[this])})

// only_mint_increases_tokens
// #LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.allowance) || finished(ERC20.transfer) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(ERC20Burnable.burn) || finished(ERC20Burnable.burnFrom) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(Melon.changeCouncil)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) >= _totalSupply_ERC20[this])))

// receiver_does_not_overflow
// LTLProperty: [](!finished(ERC20.transfer(to, val), old(M_Ref_int__balances0[_balances_ERC20[this]][to]) > M_Ref_int__balances0[_balances_ERC20[this]][to]))

// receiver_does_not_underflow
// LTLProperty: [](!finished(ERC20.transfer, old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) < M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]))

// sender_has_enough_funds
// LTLProperty: [](!finished(ERC20.transfer(to, val), old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) < val))

// sum_of_balances_equals_total_supply
// LTLProperty: [](!finished(*, sum__balances0[_balances_ERC20[this]] != _totalSupply_ERC20[this]))

// transfer
// LTLProperty: [](!finished(ERC20.transfer(to, value), to != msg.sender && (M_Ref_int__balances0[_balances_ERC20[this]][msg.sender] != (old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value))))

// transferFrom
// LTLProperty: [](!finished(ERC20.transferFrom(from, to, value), from != to && (M_Ref_int__balances0[_balances_ERC20[this]][from] != (old(M_Ref_int__balances0[_balances_ERC20[this]][from]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value) || old(M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from]][msg.sender]) < value)))
