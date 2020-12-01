// spec1
// LTLProperty: [](!finished(*, _weiRaised_Crowdsale[crowdsale_Deployer[this]] > _cap_CappedCrowdsale[crowdsale_Deployer[this]]))

// spec2
// LTLProperty: [](!finished(*, old(_state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]]) == 1 && _state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] != 1))

// spec3
// LTLProperty: [](!finished(*, old(_state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]]) == 2 && _state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] != 2))

// spec4
// LTLProperty: [](!finished(RefundEscrow.deposit, _state_RefundEscrow[this] != 0))

// spec5
// LTLProperty: [](!finished(*, _wallet_Crowdsale[crowdsale_Deployer[this]] != _beneficiary_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] || _wallet_Crowdsale[crowdsale_Deployer[this]] != 0x5555555555555555555555555555555555555555))

// spec6
// LTLProperty: [](!finished(Crowdsale.buyTokens, Balance[_escrow_RefundableCrowdsale[this]] >= (old(Balance[_escrow_RefundableCrowdsale[this]]) + msg.value)))

// spec7
// LTLProperty: [](!finished(RefundEscrow.deposit, msg.sender != _primary_Secondary[this]) && !finished(ConditionalEscrow.withdraw, msg.sender != _primary_Secondary[this]) && !finished(RefundEscrow.close, msg.sender != _primary_Secondary[this]) && !finished(RefundEscrow.enableRefunds, msg.sender != _primary_Secondary[this]))

// spec8
// LTLProperty: [](!finished(*, _token_Crowdsale[crowdsale_Deployer[this]] != token_Deployer[this]))

// spec9
// #LTLProperty: [](!finished(*, _escrow_RefundableCrowdsale[crowdsale_Deployer[this]] != escrow_Deployer[this]))
