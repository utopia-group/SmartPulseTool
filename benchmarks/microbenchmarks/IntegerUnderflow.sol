pragma solidity ^0.5.0;

contract Underflow {
    mapping(address => uint) balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function transfer(address to, uint amt) public {
        balances[msg.sender] -= amt;
        balances[to] += amt;
    }

    function withdraw() public {
        msg.sender.transfer(balances[msg.sender]);
        balances[msg.sender] = 0;
    }

    function balanceOf(address user) public view returns (uint) {
        return balances[user];
    }
}

