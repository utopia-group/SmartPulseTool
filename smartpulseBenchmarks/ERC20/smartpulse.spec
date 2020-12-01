// totalSupply
// #LTLProperty: [](started(${TOT_SUP_CONTRACT}.totalSupply, 
    this.${TOTAL} >= 0 && 
    this.${TOTAL} < 2^256) ==> 
   <>(finished(${TOT_SUP_CONTRACT}.totalSupply, 
    return == this.${TOTAL} && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES} == old(this.${ALLOWANCES})
    ${ALL_ELSE_EQ})))

// balanceOf
// #LTLProperty: [](started(${BAL_OF_CONTRACT}.balanceOf(owner), 
    this.${BALANCES}[owner] >= 0 && 
    this.${BALANCES}[owner] < 2^256) ==> 
   <>(finished(${BAL_OF_CONTRACT}.balanceOf(owner), 
    return == this.${BALANCES}[owner] && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES} == old(this.${ALLOWANCES})
    ${ALL_ELSE_EQ})))

// allowance
// #LTLProperty: [](started(${ALLOWANCE_CONTRACT}.allowance(owner, spender), 
    this.${ALLOWANCES}[owner][spender] >= 0 && 
    this.${ALLOWANCES}[owner][spender] < 2^256) ==> 
   <>(finished(${ALLOWANCE_CONTRACT}.allowance(owner, spender), 
    return == this.${ALLOWANCES}[owner][spender] &&  
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES} == old(this.${ALLOWANCES})
    ${ALL_ELSE_EQ})))

// approve
// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${APPROVE_CONTRACT}.approve(spender, value), 
    p1 != msg.sender || 
    p2 != spender) ==> 
   <>(finished(${APPROVE_CONTRACT}.approve(spender, value), 
    return == true && 
    this.${ALLOWANCES}[msg.sender][spender] == value &&  
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES}[p1][p2] == old(this.${ALLOWANCES}[p1][p2])
    ${ALL_ELSE_EQ})))

// transfer-normal
// #LTLVariables: p1:Ref
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), 
    p1 != msg.sender && 
    p1 != to && msg.sender != to && 
    value <= this.${BALANCES}[msg.sender] && 
    this.${BALANCES}[to] + value < 2^256 && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[msg.sender] >= 0 &&  
    this.${BALANCES}[msg.sender] < 2^256) ==> 
   <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), 
    return == true && 
    this.${BALANCES}[msg.sender] == old(this.${BALANCES}[msg.sender]) - value && 
    this.${BALANCES}[to] == old(this.${BALANCES}[to]) + value && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${ALLOWANCES} == old(this.${ALLOWANCES}) && 
    this.${BALANCES}[p1] == old(this.${BALANCES}[p1])
    ${ALL_ELSE_EQ})))

// transfer-self
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), 
    msg.sender == to && 
    value <= this.${BALANCES}[msg.sender] && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[msg.sender] >= 0 &&  
    this.${BALANCES}[msg.sender] < 2^256) ==> 
   <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), 
    return == true && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES} == old(this.${ALLOWANCES})
    ${ALL_ELSE_EQ})))

// transfer-fail
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), 
    msg.sender != to && 
    (value > this.${BALANCES}[msg.sender] || 
    this.${BALANCES}[to] + value >= 2^256) && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[msg.sender] >= 0 &&  
    this.${BALANCES}[msg.sender] < 2^256) ==> 
   <>(reverted(${TRANSFER_CONTRACT}.transfer)))

// transfer-self-fail
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), 
    msg.sender == to && 
    value > this.${BALANCES}[msg.sender] && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[msg.sender] >= 0 &&  
    this.${BALANCES}[msg.sender] < 2^256) ==> 
   <>(reverted(${TRANSFER_CONTRACT}.transfer)))

// transferFrom-normal
// #LTLVariables: p1:Ref,p2:Ref,p3:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    p1 != from && 
    p1 != to && 
    (p2 != from || p3 != msg.sender) && 
    from != to && 
    value <= this.${BALANCES}[from] && 
    value <= this.${ALLOWANCES}[from][msg.sender] && 
    this.${BALANCES}[to] + value < 2^256 && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[from] >= 0 &&  
    this.${BALANCES}[from] < 2^256 && 
    this.${ALLOWANCES}[from][msg.sender] >= 0 && 
    this.${ALLOWANCES}[from][msg.sender] < 2^256) ==> 
   <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    return == true && 
    this.${BALANCES}[from] == old(this.${BALANCES}[from]) - value && 
    this.${BALANCES}[to] == old(this.${BALANCES}[to]) + value && 
    this.${ALLOWANCES}[from][msg.sender] == old(this.${ALLOWANCES}[from][msg.sender]) - value && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES}[p1] == old(this.${BALANCES}[p1]) && 
    this.${ALLOWANCES}[p2][p3] == old(this.${ALLOWANCES}[p2][p3])
    ${ALL_ELSE_EQ})))

// transferFrom-self
// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    (p1 != from || p2 != msg.sender) && 
    from == to && 
    value <= this.${BALANCES}[from] && 
    value <= this.${ALLOWANCES}[from][msg.sender] && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[from] >= 0 &&  
    this.${BALANCES}[from] < 2^256 && 
    this.${ALLOWANCES}[from][msg.sender] >= 0 && 
    this.${ALLOWANCES}[from][msg.sender] < 2^256) ==> 
   <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    return == true && 
    this.${ALLOWANCES}[from][msg.sender] == old(this.${ALLOWANCES}[from][msg.sender]) - value && 
    this.${TOTAL} == old(this.${TOTAL}) && 
    this.${BALANCES} == old(this.${BALANCES}) && 
    this.${ALLOWANCES}[p1][p2] == old(this.${ALLOWANCES}[p1][p2])
    ${ALL_ELSE_EQ})))

// transferFrom-fail
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    from != to && 
    (value > this.${BALANCES}[from] || 
    value > this.${ALLOWANCES}[from][msg.sender] || 
    this.${BALANCES}[to] + value >= 2^256) && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[from] >= 0 &&  
    this.${BALANCES}[from] < 2^256 && 
    this.${ALLOWANCES}[from][msg.sender] >= 0 && 
    this.${ALLOWANCES}[from][msg.sender] < 2^256) ==> 
   <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))

// transferFrom-self-fail
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), 
    from == to && 
    (value > this.${BALANCES}[from] || 
    value > this.${ALLOWANCES}[from][msg.sender]) && 
    value >= 0  && 
    value < 2^256 && 
    this.${BALANCES}[to] >= 0 && 
    this.${BALANCES}[to] < 2^256 && 
    this.${BALANCES}[from] >= 0 &&  
    this.${BALANCES}[from] < 2^256 && 
    this.${ALLOWANCES}[from][msg.sender] >= 0 && 
    this.${ALLOWANCES}[from][msg.sender] < 2^256) ==> 
   <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))
