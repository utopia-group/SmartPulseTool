TimedCrowdsale Specifications

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

------------------------------------
// If you call buyTokens and the crowdsale is not open, the call will fail.
// NAME: s1
// #LTLProperty: []((call(Crowdsale.buyTokens) {TimedCrowdsale.isOpen() == false}) ==> <>(fail(Crowdsale.buyTokens) {})
------------------------------------
// If you call buyTokens and the crowdsale has closed, the call will fail.
// NAME: s2
// #LTLProperty: []((call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == true}) ==> <>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// If the crowdsale closes, it will never open again.
// NAME: s3
// #LTLProperty: [](!(call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == true} ; call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == false}))
------------------------------------

============
Liveness Specifications
============

l1 and l3 are very similar.

------------------------------------
// Every buyTokens called after the crowdsale closes will fail
// NAME: l1
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {})) && <>(call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == true})
// #LTLProperty: [](<>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// NAME: l2
// No buyTokens will succeed after the crowdsale closes
// #LTLFairness: <>(call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == true})
// #LTLProperty: <>([](!success(Crowdsale.buyTokens) {}))
------------------------------------
// Every buyTokens called after the crowdsale closes will fail
// NAME: l3
// #LTLFairness: [](<>(call(Crowdsale.buyTokens) {})) && <>(call(Crowdsale.buyTokens) {TimedCrowdsale.isOpen() == false})
// #LTLProperty: [](<>(fail(Crowdsale.buyTokens) {}))
------------------------------------
