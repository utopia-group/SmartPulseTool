//constant_gold
// LTLProperty: [](!finished(*, old(GOLD_Alchemist[a_Deployer[this]]) != GOLD_Alchemist[a_Deployer[this]]))

//constant_lead
// LTLProperty: [](!finished(*, old(LEAD_Alchemist[a_Deployer[this]]) != LEAD_Alchemist[a_Deployer[this]]))

//transmute
// #LTLProperty: [](!finished(Alchemist.transmute(mass), M_Ref_int__balances0[_balances_ERC20[LEAD_Alchemist[this]]][msg.sender] != old(M_Ref_int__balances0[_balances_ERC20[LEAD_Alchemist[this]]][msg.sender]) - mass || M_Ref_int__balances0[_balances_ERC20[GOLD_Alchemist[this]]][msg.sender] != old(M_Ref_int__balances0[_balances_ERC20[GOLD_Alchemist[this]]][msg.sender]) + mass))
