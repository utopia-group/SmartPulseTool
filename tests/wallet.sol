pragma solidity ^0.4.24;


contract SimpleTest {
    mapping(address => uint) balance;

    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }

    function withdraw(uint amt) public {
        if(balance[msg.sender] >= amt) {
            balance[msg.sender] -= amt;
            msg.sender.send(amt);
        }
    }
}

