Fund Specifications

============
Contract notes
============

Seems like essentially a crowdsale. The idea behind a crowdsale is you open it,
with the hope of reaaching some amount. If you reach that amount, the crowdsale
closes, and people are rewarded with a stake. If it doesnt reach that amount,
people are refunded their amount.

There are lots of different wallets, but only one payable, which I guess means
that funds can only be sent to the _teamWallet?

Why does canWithdraw() have no body?

CrowdsaleAddress can only be set once by an owner.
Same with token[address] and lockedTokenAddress.

CrowdsaleAddress is the only one able to processContributions, run the crowdsale
finalization if they meet the soft cap, or anable a refund.

A contributor can make contributions as long as the state is Crowdsale. A contributor
can make as many contributions as they want.

Any contributor can get a refund, as long as the fund has been changed to the refund
state by the CrowdsaleAddress.

The refund manager (set in constructor), who is also an owner, can trigger an automatic
refund for a particular contributor.

onCrowdsaleEnd is initialized if a softcap is reached. It doesnt seem this is automatic,
meaning it ocupld be called before 

What is the tap? It is initialized to some large value. When fetching current tap amount,
it calculates the tap as a multiple of this tap value (which can only be decreased) and
the time since last withdrawal.

For some reason, you can only withdrawal this tap amount? Not sure exactly what it is
supposed to represent, but ok.

Not sure when withdrawal is actually enabled, given that canWithdraw has no implementation?

enableRefund can be called to change the state to refund after a successful crowdsale.
However, it is internal, and is not called by any public function. Not sure how it is
called. This doesnt need to be called by an owner even, but I guess only the current
contract can call it, which is sort of like the ultimate owner?

Once a refund is enabled, refund is sent by taking the token amount of sender, and
calculating the value as a ratio of the value of the address. Essentially you get the
ratio of the value fund that is equal to your ratio of the tokens.

============
Bogus Specifications
============

------------------------------------
// NAME: b1
// #LTLProperty: [](call(Fund.canWithdraw) {})
------------------------------------

============
Safety Specifications
============

------------------------------------
// If the crowdsale gets refunded, one can never successfully call withdraw
// NAME: s1
// #LTLFairness: <>(success(Fund.enableCrowdsaleRefund) {})
// #LTLProperty: [](!(success(Fund.withdraw) {}))
------------------------------------
// If the crowdsale gets refunded, one can never successfully call firstWithdraw
// NAME: s2
// #LTLFairness: <>(success(Fund.enableCrowdsaleRefund) {})
// #LTLProperty: [](!(success(Fund.firstWithdraw) {}))
------------------------------------
// If the crowdsale gets refunded, one can never successfully call refundTokenHolder
// NAME: s3
// #LTLFairness: <>(success(Fund.enableCrowdsaleRefund) {})
// #LTLProperty: [](!(success(Fund.refundTokenHolder) {}))
------------------------------------

============
Liveness Specifications
============

------------------------------------
// If the refunds are never enabled, then refundTokenHolder will never be
//   able to successfully run
// NAME: l1
// #LTLFairness: [](!(success(Fund.enableRefund) {}))
// #LTLProperty: [](!(success(Fund.refundTokenHolder) {}))
------------------------------------
// If the crowdsale never ends, the first withdraw can never happen.
// NAME: l2
// #LTLFairness: [](!(success(Fund.onCrowdsaleEnd) {}))
// #LTLProperty: [](!(success(Fund.firstWithdraw) {}))
------------------------------------
// If the crowdsale never ends, calling withdraw never succeeds.
// NAME: l3
// #LTLFairness: [](!(success(Fund.onCrowdsaleEnd) {}))
// #LTLProperty: [](!(success(Fund.withdraw) {}))
------------------------------------
// If the crowdsale never enables a refund, contributors will never be refunded.
// NAME: l4
// #LTLFairness: [](!(success(Fund.enableCrowdsaleRefund) {}))
// #LTLProperty: [](!(success(Fund.refundCrowdsaleContributor) {}))
------------------------------------
// If the crowdsale never enables a refund, contributors will never be refunded.
// NAME: l5
// #LTLFairness: [](!(success(Fund.enableCrowdsaleRefund) {}))
// #LTLProperty: [](!(success(Fund.autoRefundCrowdsaleContributor) {}))
------------------------------------
// If you never call firstWithdraw, no subsequent draws can occur
// NAME: l6
// #LTLFairness: [](!(success(Fund.firstWithdraw) {}))
// #LTLProperty: [](!(success(Fund.withdraw) {}))
------------------------------------
// firstWithdrawal can only ever succeed once
// NAME: l7
// #LTLFairness: <>(success(Fund.firstWithdraw) {})
// #LTLProperty: <>([](!(success(Fund.firstWithdraw) {})))
------------------------------------
// enableCrowdsaleRefund can only ever succeed once
// NAME: l8
// #LTLFairness: <>(success(Fund.enableCrowdsaleRefund) {})
// #LTLProperty: <>([](!(success(Fund.enableCrowdsaleRefund) {})))
------------------------------------
// enableRefund can only ever succeed once
// NAME: l9
// #LTLFairness: <>(success(Fund.enableRefund) {})
// #LTLProperty: <>([](!(success(Fund.enableRefund) {})))
------------------------------------
