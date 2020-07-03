ERC20 Specifications

============
Bogus Specifications
============

------------------------------------
// NAME: b1
// #LTLProperty: [](call(ERC20.transfer) {} ==> <>(success(ERC20.transfer) {}))
------------------------------------
// NAME: b2
// #LTLFairness: <>(call(ERC20.transfer) {}) && !([](call(ERC20.transferFrom) {}))
// #LTLProperty: [](call(ERC20.transferFrom) {} ==> <>(success(ERC20.transfer) {}))
------------------------------------

============
Safety Specifications
============

------------------------------------
// NAME: s1
// #LTLProperty: [](call(ERC20.transfer(recipient, amount)) {amount <= ERC20.balanceOf(msg.sender) && ERC20.balanceOf(msg.sender) > 0 && recipient != null} ==> <>(success(ERC20.transfer) {}))
------------------------------------
// NAME: s2
// #LTLProperty: [](call(ERC20.transfer(recipient, amount)) {amount <= ERC20.balanceOf(msg.sender) && ERC20.balanceOf(msg.sender) > 0 && recipient == null} ==> <>(fail(ERC20.transfer) {}))
------------------------------------
// NAME: s3
// #LTLProperty: [](call(ERC20.transferFrom(sender, recipient, amount)) {sender != null && amount <= ERC20.allowance(sender, msg.sender) && ERC20.allowance(sender, msg.sender) > 0 && amount <= ERC20.balanceOf(sender) && ERC20.balanceOf(sender) > 0 && recipient != null} ==> <>(success(ERC20.transferFrom) {}))
------------------------------------
// NAME: s4
// #LTLProperty: [](call(ERC20.transferFrom(sender, recipient, amount)) {amount <= ERC20.allowance(sender, msg.sender) && ERC20.allowance(sender, msg.sender) > 0 && recipient == null} ==> <>(fail(ERC20.transferFrom) {}))
------------------------------------
// NAME: s5
// #LTLVariables: b1:int,b2:int
// #LTLProperty: []((callSuccess(ERC20.transfer(recipient, amount)) {b1 == ERC20.balanceOf(msg.sender) && b2 == ERC20.balanceOf(recipient)}) ==> <>(success(ERC20.transfer(recipient, amount)) {(b1 - amount) == ERC20.balanceOf(msg.sender) && (b2 + amount) == ERC20.balanceOf(recipient)}))
------------------------------------
// NAME: s6
// #LTLProperty: []((callSuccess(ERC20.transfer) {}) ==> <>(call(Transfer) {}))
------------------------------------
// NAME: s7
// #LTLProperty: []((call(ERC20.transfer(recipient, amount)) {ERC20.balanceOf(msg.sender) < amount}) ==> <>(revert(ERC20.transfer) {})
------------------------------------
// NAME: s8
// #LTLVariables: b1:int,b2:int
// #LTLProperty: []((callSuccess(ERC20.transferFrom(sender, recipient, amount)) {b1 == ERC20.balanceOf(sender) && b2 == ERC20.balanceOf(recipient)}) ==> <>(success(ERC20.transfer(recipient, amount)) {(b1 - amount) == ERC20.balanceOf(sender) && (b2 + amount) == ERC20.balanceOf(recipient)}))
 ------------------------------------
// NAME: s9
// #LTLProperty: []((callSuccess(transferFrom)) ==> <>(call(Transfer)))
------------------------------------

============
Liveness Specifications
============

------------------------------------
// If you never call transfer, if you increase a users allowance by A, and then call
//   transferFrom (with legal args) with an amount less than A, that transferFrom will
//   be successful.
// NAME: l1
// #LTLVariables: s:Ref,a:int
// #LTLFairness: [](!(call(ERC20.transfer) {}))
// #LTLProperty: []((((success(ERC20.increaseAllowance(spender, amount)) {spender == s && amount == a});(call(ERC20.transferFrom(sender, recipient, amount)) {amount <= a && sender == msg.sender && recipient == s && amount <= ERC20.balanceOf(sender) && ERC20.balanceOf(sender) > 0}))) ==> <>(success(ERC20.transferFrom) {}))
------------------------------------
// If you attempt to transfer non-zero amounts of money an infinite number of times,
//   and never receive any new money, eventually your transfer will fail (run out of funds).
// NAME: l2
// #LTLVariables: sender:Ref
// #LTLFairness: [](<>(call(ERC20.transferFrom(s,r,a)) {s == sender && a > 0 && s != r}) && !(success(ERC20.transfer(s,a)) {s == sender}) && !(success(ERC20.transferFrom(s2, s, a)) {s == sender}))
// #LTLProperty: [](<>(fail(ERC20.transferFrom) {}))
------------------------------------
// If you attempt to transfer non-zero amounts of money an infinite number of times,
//   and never receive any new money, eventually your transfer will fail (run out of funds).
// NAME: l3
// #LTLVariables: s:Ref
// #LTLFairness: [](<>(call(ERC20.transfer(s1, a)) {msg.sender == s && a > 0 && s1 != s}) && !(success(ERC20.transferFrom(c, s1, d)) {s1 == s}) && !(success(ERC20.transfer(s1, e)) {s1 == s}))
// #LTLProperty: [](<>(fail(ERC20.transfer) {}))
------------------------------------
// If a users allowance is decreased an infinite number of times, and their allowance is
//   never increased, eventually all attempted transfers will fail.
// NAME: l4
// #LTLVariables: s:Ref,r:Ref
// #LTLFairness: [](<>(call(ERC20.decreaseAllowance(r1, a1)) {msg.sender == s && a1 > 0 && r1 == r}) && !(call(ERC20.increaseAllowance(r2, a2)) {msg.sender == s && a2 > 0 && r2 == r}) && <>(call(ERC20.transferFrom(s3, r3, a3)) {s3 == s && r3 == r}) && !(call(ERC20.approve(r4, a4)) {msg.sender == s && a4 > 0 && r4 == r}))
// #LTLProperty: [](<>(fail(ERC20.transferFrom) {}))
------------------------------------
// If a users allowance is decreased an infinite number of times, and their allowance is
//   never increased, eventually all attempted transfers will fail.
// NAME: l5
// #LTLVariables: s:Ref,r:Ref
// #LTLFairness: [](!(call(ERC20.increaseAllowance(r2, a2)) {msg.sender == s && a2 > 0 && r2 == r}) && <>(call(ERC20.transferFrom(s3, r3, a3)) {s3 == s && r3 == r && a3 > 0}) && !(call(ERC20.approve(r4, a4)) {msg.sender == s && a4 > 0 && r4 == r}))
// #LTLProperty: [](<>(fail(ERC20.transferFrom) {}))
------------------------------------
// If there is a point after which a user receives no money, if they attempt an
//   infinite number of transfers, they will eventually reach a point where they cannot
//   successfully transfer money (run out of funds).
// NAME: l6
// #LTLVariables: p:Ref
// #LTLFairness: <>([](!(call(ERC20.transfer(r, amt)) {r == p}) && !(call(ERC20.transferFrom(s, r, a)) {r == p}))) && [](<>(call(ERC20.transfer(r, amt)) {msg.sender == p && amt > 0}))
// #LTLProperty: <>([](!success(ERC20.transfer(r, amt)) {msg.sender == p && amt > 0}))
------------------------------------
