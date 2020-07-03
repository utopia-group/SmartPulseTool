// Origingal contract: https://etherscan.io/address/0x3ad14db4e5a658d8d20f8836deabe9d5286f79e1#contracts

pragma solidity ^0.5.10;

contract BlockKing {
  
  address payable public owner;
  address payable public king;
  address payable public warrior;
  address public contractAddress;
  uint public rewardPercent;
  uint public kingBlock;
  uint public warriorBlock;
  uint public randomNumber;
  uint public singleDigitBlock;
  uint public warriorGold;
  
  // Auxiliary variables
  address private cbAddress;
  uint private playerIn;

  // this function is executed at initialization
  constructor() public {
    owner = msg.sender;
    king = msg.sender;
    warrior = msg.sender;
    contractAddress = address(this);
    rewardPercent = 50;
    kingBlock = block.number;
    warriorBlock = block.number;
    randomNumber = 0;
    singleDigitBlock = 0;
    warriorGold = 0;
    
    cbAddress = __VERIFIER_nondet_address();
    __VERIFIER_assume(cbAddress != address(0));
    playerIn = 0;
  }

  // fallback function - simple transactions trigger this
  function() external {
    enter();
  }
  
  function enter() public payable {
    // 100 finney = .05 ether minimum payment otherwise refund payment and stop contract
    if (msg.value < 50 finney) {
      msg.sender.send(msg.value);
      return;
    }
    warrior = msg.sender;
    warriorGold = msg.value;
    warriorBlock = block.number;
    playerIn++;
  }

  function __callback() public {
    require (playerIn > 0 && msg.sender == cbAddress);
    randomNumber = __VERIFIER_nondet_uint();
    process_payment();
    cbAddress = address(0);
    playerIn--;
  }
  
  function process_payment() public {
    // Check if there is a new Block King
    // by comparing the last digit of the block number
    // against the Oraclize.it random number.
    uint singleDigit = warriorBlock;
  while (singleDigit > 1000000) {
    singleDigit -= 1000000;
  } 
  while (singleDigit > 100000) {
    singleDigit -= 100000;
  } 
  while (singleDigit > 10000) {
    singleDigit -= 10000;
  } 
  while (singleDigit > 1000) {
    singleDigit -= 1000;
  } 
  while (singleDigit > 100) {
    singleDigit -= 100;
  } 
  while (singleDigit > 10) {
    singleDigit -= 10;
  } 
    // Free round for the king
  if (singleDigit == 10) {
    singleDigit = 0;
  } 
  singleDigitBlock = singleDigit;
  if (singleDigitBlock == randomNumber) {
      rewardPercent = 50;
      // If the payment was more than .999 ether then increase reward percentage
      if (warriorGold > 999 finney) {
      rewardPercent = 75;
    }  
      king = warrior;
      kingBlock = warriorBlock;
    }

  uint calculatedBlockDifference = kingBlock - warriorBlock;
  uint payoutPercentage = rewardPercent;
  // If the Block King has held the position for more
  // than 2000 blocks then increase the payout percentage.
  if (calculatedBlockDifference > 2000) {
      payoutPercentage = 90;    
  }

    // pay reward to BlockKing
    uint reward = (contractAddress.balance * payoutPercentage)/100;  
    king.send(reward);
      
    // collect fee
    owner.send(contractAddress.balance);
  }
  function kill() public { if (msg.sender == owner) selfdestruct(owner); }
  
  function __VERIFIER_nondet_uint() private returns (uint);
  function __VERIFIER_nondet_address() private returns (address);
  function __VERIFIER_assume(bool) private;
}
