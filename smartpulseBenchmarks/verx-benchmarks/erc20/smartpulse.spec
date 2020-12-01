// spec1
// LTLProperty: [](!finished(*, _totalSupply_ERC20[this] > old(_totalSupply_ERC20[this]) && old(M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][msg.sender]) == false))

// spec2
// LTLProperty: [](!finished(ERC20.transfer, old(M_Ref_int__balances0[_balances_ERC20[this]][123]) > M_Ref_int__balances0[_balances_ERC20[this]][123] && msg.sender != 123))

// spec3
// LTLProperty: [](!finished(*, sum__balances0[_balances_ERC20[this]] != _totalSupply_ERC20[this]))

// spec4
// LTLProperty: [](!finished(*, M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][123] == false && old(M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][123]) == true && msg.sender != 123))

// spec5
// #LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.transfer) || finished(ERC20.allowance) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(MinterRole.isMinter) || finished(MinterRole.addMinter) || finished(MinterRole.renounceMinter)) ==> <>(finished(*, _totalSupply_ERC20[this] == old(_totalSupply_ERC20[this]))))

// spec6
// LTLProperty: [](!finished(ERC20.transferFrom(from, to, value), from != to && (M_Ref_int__balances0[_balances_ERC20[this]][from] != (old(M_Ref_int__balances0[_balances_ERC20[this]][from]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value) || old(M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender]) < value || M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender] != (old(M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender]) - value))))

// spec7
// LTLProperty: [](!finished(*, _name_ERC20Detailed[this] != old(_name_ERC20Detailed[this])))

// spec8
// LTLProperty: [](!finished(*, _symbol_ERC20Detailed[this] != old(_symbol_ERC20Detailed[this])))

// spec9
// LTLProperty: [](!finished(*, _decimals_ERC20Detailed[this] != old(_decimals_ERC20Detailed[this])))
