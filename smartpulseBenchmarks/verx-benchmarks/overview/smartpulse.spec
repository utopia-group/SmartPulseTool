// Spec r0
// LTLProperty: [](!finished(Escrow.claimRefund(addr), Balance[this] != (old(Balance[this]) - old(M_Ref_int_deposits0[deposits_Escrow[this]][addr]))))

// Spec r1
// LTLProperty: [](!finished(*, state_Escrow[escrow_Crowdsale[this]] != 1 && Balance[escrow_Crowdsale[this]] < sum_deposits0[deposits_Escrow[escrow_Crowdsale[this]]]))

// Spec r2
// LTLProperty: !(<>(finished(Escrow.claimRefund)) && <>(finished(Escrow.withdraw)))

// Spec r3
// LTLProperty: [](willSucceed(Escrow.claimRefund) ==> [](!finished(*, sum_deposits0[deposits_Escrow[escrow_Crowdsale[this]]] >= goal_Crowdsale[this])))
