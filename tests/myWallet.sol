pragma solidity ^0.4.24;


contract SimpleTest {
    uint bal;
    address owner;

    constructor() public {
        owner = msg.sender;
        bal = 0;
    }

    function deposit() public payable {
        bal += msg.value;
    }

    function withdraw(uint amt) public {
        if(msg.sender == owner && bal >= amt) {
            bal -= amt;
            msg.sender.send(amt);
        }
    }
}

