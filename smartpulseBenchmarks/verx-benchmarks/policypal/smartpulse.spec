// sum_token_balances
// LTLProperty: [](!finished(*, sum_balances0[balances_BasicToken[token_PolicyPalNetworkCrowdsale[this]]] != totalSupply__BasicToken[token_PolicyPalNetworkCrowdsale[this]]))

// crowdsale_admin
// LTLFairness: [](!finished(Ownable.transferOwnership))
// LTLProperty: [](!finished(*, admin_CrowdsaleAuthorizer[this] != owner_Ownable[token_PolicyPalNetworkCrowdsale[this]]))

// same_wei
// LTLProperty: [](!finished(*, now > saleEndTime_CrowdsaleAuthorizer[this] && old(raisedWei_PolicyPalNetworkCrowdsale[this]) != raisedWei_PolicyPalNetworkCrowdsale[this]))

// no_transfer
// #LTLProperty: [](!finished(PolicyPalNetworkCrowdsale.buy, msg.sender == this))
