// spec1
// LTLProperty: [](!finished(*, owner_Ownable[this] != old(owner_Ownable[this]) && msg.sender != old(owner_Ownable[this])))

// spec2
// LTLProperty: [](!INV {sum(balances_BasicToken[this]) != totalSupply_ERC20Basic[this]})
// LTLProperty: [](!finished(*, sum_balances0[balances_BasicToken[this]] != totalSupply_ERC20Basic[this]))

// spec3
// LTLProperty: [](!finished(*, admin_Pausable[this] != old(admin_Pausable[this]) && msg.sender != old(owner_Ownable[this])))

// spec4
// LTLProperty: [](!finished(ZilliqaToken.transfer(to, val), to == null))

// spec5
// #LTLProperty: [](!finished(ZilliqaToken.transfer(to, val), this == to))
