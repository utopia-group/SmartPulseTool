ERC20 Specifications

============
Bogus Specifications
============

------------------------------------
// NAME: b1
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {}))
// #LTLProperty: [](<>(success(Crowdsale.buyTokens) {}))
------------------------------------

============
Safety Specifications
============

------------------------------------
// NAME: s1
// #LTLProperty: []((call(Crowdsale.buyTokens) {CappedCrowdsale.capReached() == true}) ==> <>(fail(Crowdsale.buyTokens) {}))
------------------------------------

============
Liveness Specifications
============

All 3 of these are pretty much the same...

------------------------------------
// NAME: l1
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {msg.value > 0})) && <>(call(Crowdsale.buyTokens) {CappedCrowdsale.capReached() == true})
// #LTLProperty: [](<>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// NAME: l2
// #LTLFairness: <>(call(Crowdsale.buyTokens) {CappedCrowdsale.capReached() == true})
// #LTLProperty: <>([](!success(Crowdsale.buyTokens) {}))
------------------------------------
// NAME: l3
// #LTLFairness: <>(fail(Crowdsale.buyTokens) {CappedCrowdsale.capReached() == true})
// #LTLProperty: <>([](!success(Crowdsale.buyTokens)))
------------------------------------
