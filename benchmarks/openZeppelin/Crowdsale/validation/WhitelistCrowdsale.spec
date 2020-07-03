WhitelistCrowdsale Specifications

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
// If you call buyTokens and the beneficiary is not whitelisted, the call will fail.
// NAME: s1
// #LTLProperty: [](call(Crowdsale.buyTokens(beneficiary)) {WhitelistedRole.isWhitelisted(beneficiary) == false} ==> <>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// Only admins can remove other people from the whitelist
// NAME: s2
// #LTLProperty: [](call(WhitelistedRole.removeWhitelisted) {WhitelistAdminRole.isWhitelistAdmin(msg.sender) == false} ==> <>(fail(WhitelistedRole.removeWhitelisted) {}))
------------------------------------
// Only admins can add other admins
// NAME: s2
// #LTLProperty: [](call(WhitelistAdminRole.addWhitelistAdmin) {WhitelistAdminRole.isWhitelistAdmin(msg.sender) == false} ==> <>(fail(WhitelistAdminRole.addWhitelistAdmin) {}))
------------------------------------


============
Liveness Specifications
============

------------------------------------
// If you never whitelist an account, it can never successfully buy tokens.
// NAME: l1
// #LTLVariables: a:Ref
// #LTLFairness: [](!(call(WhitelistedRole.addWhitelisted(account)) {account == a}))
// #LTLProperty: [](!(success(Crowdsale.buyTokens(beneficiary)) {beneficiary == a}))
------------------------------------
// The only way to successfully buy tokens is for the beneficiary to be added to
//    the whitelist.
// NAME: l2
// #LTLVariables: person:Ref
// #LTLProperty: []((!(success(WhitelistedRole.addWhitelisted(account)) {account == person}) U call(Crowdsale.buyTokens(beneficiary)) {beneficiary == person}) ==> <>(fail(Crowdsale.buyTokens) {}))
------------------------------------
// If someone is never added as an admin, they will never be able to add an admin.
// NAME: l3
// #LTLVariables: a:Ref
// #LTLFairness: [](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))
// #LTLProperty: [](!(success(WhitelistAdminRole.addWhitelistAdmin) {msg.sender == a}))
------------------------------------
// If someone is never added as an admin, they will never be able to remove someone
//   from the whitelist
// NAME: l4
// #LTLVariables: a:Ref
// #LTLFairness: [](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))
// #LTLProperty: [](!(success(WhitelistedRole.removeWhitelisted) {msg.sender == a}))
------------------------------------
// If someone is never added as an admin, they will never be able to add someone to
//   the whitelist
// NAME: l5
// #LTLVariables: a:Ref
// #LTLFairness: [](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))
// #LTLProperty: [](!(success(WhitelistedRole.addWhitelisted) {msg.sender == a}))
------------------------------------
// If someone is removed as an admin and not reinstated, they will never be able to
//   add an admin after being removed.
// NAME: l6
// #LTLVariables: a:Ref
// #LTLFairness: <>(success(WhitelistAdminRole.renounceWhitelistAdmin) {msg.sender == a} && X([](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))))
// #LTLProperty: <>([](!(success(WhitelistAdminRole.addWhitelistAdmin) {msg.sender == a})))
------------------------------------
// If someone is removed as an admin and not reinstated, they will never be able to
//   remove someone from the whitelist after being removed.
// NAME: l7
// #LTLVariables: a:Ref
// #LTLFairness: <>(success(WhitelistAdminRole.renounceWhitelistAdmin) {msg.sender == a} && X([](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))))
// #LTLProperty: <>[](!(success(WhitelistedRole.removeWhitelisted) {msg.sender == a}))
------------------------------------
// If someone is removed as an admin and not reinstated, they will never be able to
//   add someone to the whitelist after being removed.
// NAME: l8
// #LTLVariables: a:Ref
// #LTLFairness: <>(success(WhitelistAdminRole.renounceWhitelistAdmin) {msg.sender == a} && X([](!(success(WhitelistAdminRole.addWhitelistAdmin(account)) {account == a}))))
// #LTLProperty: <>[](!(success(WhitelistedRole.addWhitelisted) {msg.sender == a}))
------------------------------------
// If someone is removed from the whitelist and never added back, they will never
//   be able to buy tokens after being removed
// NAME: l9
// #LTLVariables: a:Ref
// #LTLFairness: <>(success(WhitelistedRole.removeWhitelisted(account)) {account == a} && X([](!(success(WhitelistedRole.addWhitelisted(account)) {account == a}))))
// #LTLProperty: <>[](!(success(Crowdsale.buyTokens(beneficiary)) {beneficiary == a}))
------------------------------------
// If someone is renounces the whitelist and never added back, they will never
//   be able to buy tokens after being removed
// NAME: l10
// #LTLVariables: a:Ref
// #LTLFairness: <>(success(WhitelistedRole.renounceWhitelisted) {msg.sender == a} && X([](!(success(WhitelistedRole.addWhitelisted(account)) {account == a}))))
// #LTLProperty: <>[](!(success(Crowdsale.buyTokens(beneficiary)) {beneficiary == a}))
------------------------------------


