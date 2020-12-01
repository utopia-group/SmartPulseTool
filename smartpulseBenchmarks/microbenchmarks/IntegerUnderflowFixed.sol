pragma solidity ^0.5.0;

contract Underflow {
    mapping(address => uint) balances;

    function deposit() public payable {
        balances[msg.sender] = add(balances[msg.sender], msg.value);
    }   

    function transfer(address to, uint amt) public {
        balances[msg.sender] = sub(balances[msg.sender], amt);
        balances[to] = add(balances[to], amt);
    }   

    function withdraw() public {
        msg.sender.transfer(balances[msg.sender]);
        balances[msg.sender] = 0;
    }   

    function balanceOf(address user) public view returns (uint) {
        return balances[user];
    }

    //from SafeMath
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    } 

    //from SafeMath
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
      uint256 c = a + b;
      require(c >= a); 

      return c;
    }   
}

