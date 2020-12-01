pragma solidity ^0.5.0;

contract Overflow {
    mapping(address => uint8) balances;

    function deposit() public payable {
        require(msg.value < 256);
        balances[msg.sender] = add(balances[msg.sender], uint8(msg.value));
    }   

    function withdraw() public {
        msg.sender.transfer(balances[msg.sender]);
        balances[msg.sender] = 0;
    }   

    function balanceOf(address user) public view returns (uint8) {
        return balances[user];
    }   

    //from SafeMath
    function add(uint8 a, uint8 b) internal pure returns (uint8) {
      uint8 c = a + b;
      require(c >= a); 

      return c;
    }  
}
