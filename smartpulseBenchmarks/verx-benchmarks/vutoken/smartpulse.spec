// spec 01
// #LTLProperty: [](!finished(*, tokensSold_BaseCrowdsale[i_PresaleDeployer[this]] > limit_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[i_PresaleDeployer[this]]][2]]))


// spec 02
// #LTLProperty: [](!finished(*, tokensSold_BaseCrowdsale[i_ICODeployer[this]] > 450000000000000000000000000))

// spec 03
// LTLProperty: [](!finished(*, old(sum_balances0[balances_PostDeliveryCrowdsale[i_ICODeployer[this]]]) > sum_balances0[balances_PostDeliveryCrowdsale[i_ICODeployer[this]]] && now <= deliveryTime_BaseCrowdsale[i_ICODeployer[this]] && now <= closingTime_TimedCrowdsale[i_ICODeployer[this]]))

// spec 04
// LTLFairness: [](!finished(BurnableToken.burn))
// LTLProperty: [](!finished(*, totalSupply__BasicToken[v_ICODeployer[this]] < 1000000000000000000000000000))

// spec 05
// LTLProperty: [](!finished(BaseCrowdsale.withdrawTokens, now <= closingTime_TimedCrowdsale[this] && now < deliveryTime_BaseCrowdsale[this]))
