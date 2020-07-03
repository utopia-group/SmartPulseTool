ERC20 Specifications

============
Bogus Specifications
============

------------------------------------
// NAME: b1
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {}))
// #LTLProperty: [](<>(success(Crowdsale.buyTokens) {}))
------------------------------------
// NAME: b2
// #LTLFairness: [](<>(call(Crowdsale.buyTokens(b, a)) {b != null && a > 0}))
// #LTLProperty: [](<>(success(Crowdsale.buyTokens) {}))
------------------------------------

============
Safety Specifications
============

============
Liveness Specifications
============
