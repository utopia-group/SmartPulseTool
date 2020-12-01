// #LTLFairness: <>(finished(SimpleDAO.donate) ; finished(SimpleDAO.donate))
// #LTLProperty: [](willSucceed(SimpleDao.withdraw(amt)) ==> <>(finished(SimpleDAO.withdraw, (Balance[msg.sender] - old(Balance[msg.sender])) <= old(this.credit[msg.sender]))))
