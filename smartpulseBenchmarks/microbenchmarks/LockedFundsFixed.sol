pragma solidity ^0.5.0;

contract Wallet {
    mapping(address => uint) balance;

    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }   

    function withdraw(uint amt) public {
        if(balance[msg.sender] >= amt) {
            balance[msg.sender] -= amt;
            msg.sender.transfer(amt);
        }   
    }

    function transfer(address to, uint amt) public {
        require(to != address(0) && to != address(this));

        if(balance[msg.sender] >= amt) {
            balance[msg.sender] -= amt;
            balance[to] += amt;
        }
    }

    function balanceOf(address user) view public returns (uint) {
        return balance[user];
    }
}
