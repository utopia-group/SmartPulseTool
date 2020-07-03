// Part of https://etherscan.io/address/0x30b149e87fc634faaca4e46a807a04357b0816d7#code

pragma solidity >=0.5.11;

// Spec: L1
// LTLVariables: user:Ref
// LTLFairness: (<>(finished(EscrowVault.deposit(payee), (payee == user)))) && (<>(finished(EscrowVault.refund(payee), (payee == user))))
// LTLProperty: []((finished(EscrowVault.enableRefunds)) ==> (<>(finished(send(from, to, amt), (to == user && amt == fsum(EscrowVault.deposit(payee), 2, payee == user))))))

// Spec: L2 (Original) CEX
// LTLVariables: ben:Ref
// LTLFairness: <>(finished(EscrowVault.deposit)) && <>(finished(EscrowVault.close, (ben == this.beneficiary)))
// LTLProperty: (<>(finished(send(from, to, amt), (to == ben && amt == fsum(EscrowVault.deposit, 2)))))

// Spec: L2 (Modified) Verifies
// #LTLVariables: ben:Ref,val:int
// #LTLFairness: <>(finished(EscrowVault.close, (ben == this.beneficiary)))

// This property proves stability. I.e., once the two sums bemoces equal they would stay equal forever.
// Kostas: Takes more than an hour in my laptop 
// #LTLProperty: (<>(finished(*, (fsum(send(from, to, amt), 2, (to == ben)) == fsum(EscrowVault.deposit, 2))) && X([](!finished(send(from, to, amt), (to == ben))))))

// This property states that just eventually the two sums will be the same (no stability).
// Kostas: Terminates in a reasonalbe time
// LTLProperty: <>(finished(*,  (fsum(send(from, to, amt), 2, (to == ben)) == fsum(EscrowVault.deposit, 2))))

// This is a stronger version of stability (haven't managed to make it terminate).
// Kostas: Stopped it after an hour and a half on my laptop.
// LTLProperty: <>([](!finished(*, (fsum(send(from, to, amt), 2, (to == ben)) != fsum(EscrowVault.deposit, 2)))))

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    require(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);
    return c;
  }
}

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}

/**
 * The EscrowVault contract collects crowdsale ethers and allows to refund
 * if softcap soft cap is not reached.
 */
contract EscrowVault is Ownable {
  using SafeMath for uint256;

  enum State { Active, Refunding, GoalReached, Closed }

  mapping (address => uint256) public deposited;
  address payable public beneficiary;
  address public superOwner;
  State public state;

  event GoalReached();
  event RefundsEnabled();
  event Refunded(address indexed beneficiary, uint256 weiAmount);
  event Withdrawal(uint256 weiAmount);
  event Close();

  constructor(address _superOwner, address payable _beneficiary) public {
    require(_beneficiary != address(0));
    require(_superOwner != address(0));
    beneficiary = _beneficiary;
    superOwner = _superOwner;
    state = State.Active;
  }

  function deposit(address investor) onlyOwner public payable {
    require(state == State.Active || state == State.GoalReached);
    deposited[investor] = deposited[investor].add(msg.value);
  }

  function setGoalReached() onlyOwner public {
    require (state == State.Active);
    state = State.GoalReached;
    emit GoalReached();
  }

  function withdraw(uint256 _amount) public {
    require(msg.sender == superOwner);
    require(state == State.GoalReached);
    require (_amount <= address(this).balance &&  _amount > 0);
    beneficiary.transfer(_amount);
    emit Withdrawal(_amount);
  }

  function withdrawAll() onlyOwner public {
    require(state == State.GoalReached);
    uint256 balance = address(this).balance;
    emit Withdrawal(balance);
    beneficiary.transfer(balance);
  }

  function close() onlyOwner public {
    require (state == State.GoalReached);
    withdrawAll();
    state = State.Closed;
    emit Close();
  }

  function enableRefunds() onlyOwner public {
    require(state == State.Active);
    state = State.Refunding;
    emit RefundsEnabled();
  }

  function refund(address payable investor) public {
    require(state == State.Refunding);
    uint256 depositedValue = deposited[investor];
    deposited[investor] = 0;
    investor.transfer(depositedValue);
    emit Refunded(investor, depositedValue);
  }
}
