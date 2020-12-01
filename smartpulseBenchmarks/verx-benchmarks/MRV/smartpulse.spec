// spec_01
// LTLProperty: [](!finished(*, crowdsaleStarted_MRVToken[this] == true && maxCrowdsaleSupplyInWholeTokens_MRVToken[this] != old(maxCrowdsaleSupplyInWholeTokens_MRVToken[this])))

// spec_02
// LTLProperty: [](!finished(*, crowdsaleEnded_MRVToken[this] == true && _totalSupply_ERC20[this] != old(_totalSupply_ERC20[this])))

// spec_03
// LTLProperty: [](!finished(*, _totalSupply_ERC20[this] != sum__balances0[_balances_ERC20[this]]))

// spec_04
// LTLProperty: [](!finished(*, old(crowdsaleStarted_MRVToken[this]) == true && crowdsaleStarted_MRVToken[this] == false))

// spec_05
// #LTLProperty: [](!finished(*, old(crowdsaleEnded_MRVToken[this]) == true && crowdsaleEnded_MRVToken[this] == false))
