// #LTLFairness: <>(finished(SimpleDAO.donate) ; finished(SimpleDAO.donate)) && <>([](!started(SimpleDAO.withdraw)))
// #LTLProperty: [](willSucceed(SimpleDAO.withdraw(amt)) ==> <>(finished(SimpleDAO.withdraw, (Balance[msg.sender] - old(Balance[msg.sender])) <= old(this.credit[msg.sender]))))
