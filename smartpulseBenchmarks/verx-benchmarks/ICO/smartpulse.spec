// spec_01
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 0 && icoState_ICO[this] != 0 && icoState_ICO[this] != 1))

// spec_02
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 1 && icoState_ICO[this] != 1 && icoState_ICO[this] != 2))

// spec_03
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 2 && icoState_ICO[this] != 2 && icoState_ICO[this] != 3))

// spec_04
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 3 && icoState_ICO[this] != 3 && icoState_ICO[this] != 4))

// spec_05
// LTLProperty: [](!finished(*, old(icoState_ICO[this]) == 4 && icoState_ICO[this] != 4))

// spec_06
// LTLProperty: [](!finished(GVToken.mint, isPaused_ICO[ico_GVToken[this]] == true))

// spec_07 (the spec cannot be violated because msg.sender is never ICO
// #LTLProperty: [](!finished(GVToken.transfer, icoState_ICO[ico_GVToken[this]] != 4) && !finished(GVToken.transferFrom, icoState_ICO[ico_GVToken[this]] != 4))

// spec_08
// LTLProperty: [](!finished(*, migrationAgent_GVToken[gvToken_ICO[this]] == null && old(totalSupply_ERC20Basic[gvToken_ICO[this]]) > totalSupply_ERC20Basic[gvToken_ICO[this]] && icoState_ICO[this] != 2 && icoState_ICO[this] != 3))
