// spec_01
// LTLProperty: [](!finished(*, bucketAmount_ContinuousSale[continuousSale_MANACrowdsale[this]] > issuance_ContinuousSale[continuousSale_MANACrowdsale[this]]))

// spec_02
// LTLProperty: [](!finished(*, isFinalized_FinalizableCrowdsale[this] == true && weiRaised_Crowdsale[this] < cap_CappedCrowdsale[this] && now <= endBlock_Crowdsale[this]))

// spec_03
// LTLProperty: [](!finished(*, started_MANAContinuousSale[continuousSale_MANACrowdsale[this]] != true && owner_Ownable[token_Crowdsale[this]] != this))

// spec_04
// #LTLProperty: [](!finished(*, started_MANAContinuousSale[continuousSale_MANACrowdsale[this]] == true && owner_Ownable[token_Crowdsale[this]] != continuousSale_MANACrowdsale[this]))
