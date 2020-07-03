ERC20 Specifications

============
Bogus Specifications
============

------------------------------------
// If you call buyTokens infinitely, it will eventually succeed.
// NAME: b1
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {}))
// #LTLProperty: [](<>(success(Crowdsale.buyTokens) {}))
------------------------------------
// Every call to buyTokens is successful.
// NAME: b2
// #LTLProperty: [](call(Crowdsale.buyTokens) ==> <>success(Crowdsale.buyTokens) {})
------------------------------------

============
Safety Specifications
============

============
Liveness Specifications
============

------------------------------------
// If you pause and never unpause, you will never successfully buyTokens
// NAME: l1
// #LTLFairness: <>(success(Pausable.pause) {}) && [](!(success(Pausable.unpause) {}))
// #LTLProperty: <>([](!(success(Crowdsale.buyTokens) {})))
------------------------------------
// If you always eventually successfully buy tokens, it means that every pause
//    must eventually be unpaused.
// NAME: l2
// #LTLFairness: [](<>(success(Crowdsale.buyTokens) {}))
// #LTLProperty: []((success(Pausable.pause) {}) ==> <>(success(Pausable.unpause) {}))
------------------------------------
// pause disallows buyTokens
// NAME: l3
// #LTLProperty: []((success(Pausable.pause) && (!success(Pausable.unpause) U call(Crowdsale.buyTokens) {})) ==> <>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// unpause never fails
// NAME: l4
// #LTLProperty: []((success(Pausable.unpause) {} && (!success(Pausable.pause) {} U call(Crowdsale.buyTokens(beneficiary)) {beneficiary != null && msg.value > 0})) ==> <>(success(Crowdsale.buyTokens) {}))
------------------------------------




