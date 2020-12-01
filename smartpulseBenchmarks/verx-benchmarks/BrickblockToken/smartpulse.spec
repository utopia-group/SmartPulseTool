// 01_no_ether_transfer
// LTLProperty: [](!finished(*, dead_BrickblockToken[this] == true && paused_Pausable[this] == false))

// 02_no_transfer_after_end_sale
// LTLProperty: [](finished(BrickblockToken.finalizeTokenSale) ==> [](!finished(BrickblockToken.distributeTokens)))

// 03_transfer_not_after_upgrade
// LTLFairness: [](!finished(BrickblockToken.unpause))
// LTLProperty: [](!finished(PausableToken.transfer))

// 04_evacuate_after_upgrade
// LTLFairness: [](!finished(BrickblockToken.upgrade))
// LTLProperty: [](!finished(BrickblockToken.evacuate))

// 05_balance_reduced
// LTLProperty: [](!finished(BrickblockToken.distributeTokens, old(M_Ref_int_balances0[balances_BasicToken[this]][this]) < M_Ref_int_balances0[balances_BasicToken[this]][this]))

// 06_initial_supply
// #LTLProperty: <>(started(*, (predecessorAddress_BrickblockToken[this] == null) ==> (totalSupply_ERC20Basic[this] == 500000000000000000000000000)))
