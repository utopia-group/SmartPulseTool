pragma solidity ^0.5.0;

/**
 * @title ERC20Basic
 * @dev Simpler version of ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/179
 */
contract ERC20Basic {
  uint256 public totalSupply;
  function balanceOf(address who) public view returns (uint256);
  function transfer(address to, uint256 value) public returns (bool);
  event Transfer(address indexed from, address indexed to, uint256 value);
}


/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
  /*function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }*/

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}


/**
 * @title Basic token
 * @dev Basic version of StandardToken, with no allowances. 
 */
contract BasicToken is ERC20Basic {
  using SafeMath for uint256;

  mapping(address => uint256) balances;

  /**
  * @dev transfer token for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) public returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param _owner The address to query the the balance of. 
  * @return An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address _owner) view public returns (uint256 balance) {
    return balances[_owner];
  }

}




/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
contract ERC20 is ERC20Basic {
  function allowance(address owner, address spender) view public returns (uint256);
  function transferFrom(address from, address to, uint256 value) public returns (bool);
  function approve(address spender, uint256 value) public returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}


/**
 * @title Standard ERC20 token
 *
 * @dev Implementation of the basic standard token.
 * @dev https://github.com/ethereum/EIPs/issues/20
 * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
 */
contract StandardToken is ERC20, BasicToken {

  mapping (address => mapping (address => uint256)) allowed;

  /**
   * @dev Transfer tokens from one address to another
   * @param _from address The address which you want to send tokens from
   * @param _to address The address which you want to transfer to
   * @param _value uint256 the amout of tokens to be transfered
   */
  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    uint256 _allowance = allowed[_from][msg.sender];

    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    // require (_value <= _allowance);

    balances[_to] = balances[_to].add(_value);
    balances[_from] = balances[_from].sub(_value);
    allowed[_from][msg.sender] = _allowance.sub(_value);
    emit Transfer(_from, _to, _value);
    return true;
  }

  /**
   * @dev Aprove the passed address to spend the specified amount of tokens on behalf of msg.sender.
   * @param _spender The address which will spend the funds.
   * @param _value The amount of tokens to be spent.
   */
  function approve(address _spender, uint256 _value) public returns (bool) {
    // To change the approve amount you first have to reduce the addresses`
    //  allowance to zero by calling `approve(_spender, 0)` if it is not
    //  already 0 to mitigate the race condition described here:
    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    require((_value == 0) || (allowed[msg.sender][_spender] == 0));

    allowed[msg.sender][_spender] = _value;
    emit Approval(msg.sender, _spender, _value);
    return true;
  }

  /**
   * @dev Function to check the amount of tokens that an owner allowed to a spender.
   * @param _owner address The address which owns the funds.
   * @param _spender address The address which will spend the funds.
   * @return A uint256 specifing the amount of tokens still avaible for the spender.
   */
  function allowance(address _owner, address _spender) view public returns (uint256 remaining) {
    return allowed[_owner][_spender];
  }

}

// Migration Agent interface
contract MigrationAgent {
    function migrateFrom(address _from, uint _value) public;
}

contract GVToken is StandardToken {
    
    // Constants
    string public constant name = "Genesis Vision Token";
    string public constant symbol = "GVT";
    uint   public constant decimals = 18;
    uint   constant TOKEN_LIMIT = 44000000000000000000000000; 
    
    address public ico;

    // GVT transfers are blocked until ICO is finished.
    bool public isFrozen = true;

    // Token migration variables
    address public migrationMaster;
    address public migrationAgent;
    uint public totalMigrated;

    event Migrate(address indexed _from, address indexed _to, uint _value);

    // Constructor
    constructor(address _ico, address _migrationMaster) public {
        require(_ico != address(0));
        require(_migrationMaster != address(0));
        ico = _ico;
        migrationMaster = _migrationMaster;
    }

    // Create tokens
    function mint(address holder, uint value) public {
        require(msg.sender == ico);
        require(value > 0);
        require(totalSupply + value <= TOKEN_LIMIT);

        balances[holder] += value;
        totalSupply += value;
        emit Transfer(address(0x0), holder, value);
    }

    // Allow token transfer.
    function unfreeze() public {
        require(msg.sender == ico);
        isFrozen = false;
    }

    // ERC20 functions
    // =========================

    function transfer(address _to, uint _value) public returns (bool) {
        require(_to != address(0));
        require(!isFrozen);
        return super.transfer(_to, _value);
    }

    function transferFrom(address _from, address _to, uint _value) public returns (bool) {
        require(!isFrozen);
        return super.transferFrom(_from, _to, _value);
    }

    function approve(address _spender, uint _value) public returns (bool) {
        require(!isFrozen);
        return super.approve(_spender, _value);
    }

    // Token migration
    function migrate(uint value) external {
        require(migrationAgent != address(0));
        require(value > 0);
        require(value <= balances[msg.sender]);

        balances[msg.sender] -= value;
        totalSupply -= value;
        totalMigrated += value;
        address agent = migrationAgent;
        MigrationAgent(agent).migrateFrom(msg.sender, value);
        emit Migrate(msg.sender, agent, value);
    }

    // Set address of migration contract
    function setMigrationAgent(address _agent) external {
        require(migrationAgent == address(0));
        require(msg.sender == migrationMaster);
        migrationAgent = _agent;
    }

    function setMigrationMaster(address _master) external {
        require(msg.sender == migrationMaster);
        require(_master != address(0));
        migrationMaster = _master;
    }
}


contract GVOptionToken is StandardToken {
    
    address public optionProgram;

    string public name;
    string public symbol;
    uint   public constant decimals = 18;

    uint TOKEN_LIMIT;

    // Modifiers
    modifier optionProgramOnly { require(msg.sender == optionProgram); _; }

    // Constructor
    constructor(
        address _optionProgram,
        string memory _name,
        string memory _symbol,
        uint _TOKEN_LIMIT
    ) public {
        require(_optionProgram != address(0));
        optionProgram = _optionProgram;
        name = _name;
        symbol = _symbol;
        TOKEN_LIMIT = _TOKEN_LIMIT;
    }

    // Create tokens
    function buyOptions(address buyer, uint value) optionProgramOnly public {
        require(value > 0);
        require(totalSupply + value <= TOKEN_LIMIT);

        balances[buyer] += value;
        totalSupply += value;
        emit Transfer(address(0x0), buyer, value);
    }
    
    function remainingTokensCount() view public returns(uint) {
        return TOKEN_LIMIT - totalSupply;
    }
    
    // Burn option tokens after execution during ICO
    function executeOption(address addr, uint optionsCount) 
        optionProgramOnly
        public returns (uint) {
        uint cnt = optionsCount;
        if (balances[addr] < cnt) {
            cnt = balances[addr];
        }   
        if (cnt == 0) {
            return 0;
        }   

        balances[addr] -= cnt;
        totalSupply -= cnt;

        return cnt;
    } 
}

// Aliasing the contract name due to name limitation
contract GVOptionToken0 is GVOptionToken{
    constructor(
        address _optionProgram,
        string memory _name,
        string memory _symbol,
        uint _TOKEN_LIMIT) 
        GVOptionToken( _optionProgram, _name, _symbol, _TOKEN_LIMIT) public {
        }
}

contract GVOptionToken1 is GVOptionToken{
    constructor(
        address _optionProgram,
        string memory _name,
        string memory _symbol,
        uint _TOKEN_LIMIT) 
        GVOptionToken( _optionProgram, _name, _symbol, _TOKEN_LIMIT) public {
        }
}
contract GVOptionToken2 is GVOptionToken{
    constructor(
        address _optionProgram,
        string memory _name,
        string memory _symbol,
        uint _TOKEN_LIMIT) 
        GVOptionToken( _optionProgram, _name, _symbol, _TOKEN_LIMIT) public {
        }
}

contract GVOptionProgram {

    // Constants
    uint constant option30perCent = 260000000000000000; // GVOT30 tokens per usd cent during option purchase 
    uint constant option20perCent = 240000000000000000; // GVOT20 tokens per usd cent during option purchase
    uint constant option10perCent = 220000000000000000; // GVOT10 tokens per usd cent during option purchase
    uint constant token30perCent  = 13684210526315800;  // GVT tokens per usd cent during execution of GVOT30
    uint constant token20perCent  = 12631578947368500;  // GVT tokens per usd cent during execution of GVOT20
    uint constant token10perCent  = 11578947368421100;  // GVT tokens per usd cent during execution of GVOT10

    string public constant option30name = "30% GVOT";
    string public constant option20name = "20% GVOT";
    string public constant option10name = "10% GVOT";

    string public constant option30symbol = "GVOT30";
    string public constant option20symbol = "GVOT20";
    string public constant option10symbol = "GVOT10";

    uint constant option30_TOKEN_LIMIT = 2600000000000000000000000;
    uint constant option20_TOKEN_LIMIT = 3600000000000000000000000;
    uint constant option10_TOKEN_LIMIT = 5500000000000000000000000;

    // Events
    event BuyOptions(address buyer, uint amount, string tx, uint8 optionType);
    event ExecuteOptions(address buyer, uint amount, string tx, uint8 optionType);

    // State variables
    address public gvAgent; // payments bot account
    address public team;    // team account
    address public ico;     

    GVOptionToken0 public gvOptionToken30;
    GVOptionToken1 public gvOptionToken20;
    GVOptionToken2 public gvOptionToken10;

    // Modifiers
    modifier icoOnly { require(msg.sender == ico); _; }
    
    // Constructor
    constructor(address _ico, address _gvAgent, address _team) public {
        gvOptionToken30 = new GVOptionToken0(address(this), option30name, option30symbol, option30_TOKEN_LIMIT);
        gvOptionToken20 = new GVOptionToken1(address(this), option20name, option20symbol, option20_TOKEN_LIMIT);
        gvOptionToken10 = new GVOptionToken2(address(this), option10name, option10symbol, option10_TOKEN_LIMIT);
        gvAgent = _gvAgent;
        team = _team;
        ico = _ico;
    }

    // Get remaining tokens for all types of option tokens
    function getBalance() view public returns (uint, uint, uint) {
        return (gvOptionToken30.remainingTokensCount(), gvOptionToken20.remainingTokensCount(), gvOptionToken10.remainingTokensCount());
    }

    // Execute options during the ICO token purchase. Priority: GVOT30 -> GVOT20 -> GVOT10
    function executeOptions(address buyer, uint usdCents, string memory txHash) icoOnly
        public returns (uint executedTokens, uint remainingCents) {
        require(usdCents > 0);

        (executedTokens, remainingCents) = executeIfAvailable0(buyer, usdCents, txHash, GVOptionToken(gvOptionToken30), uint8(0), token30perCent);
        if (remainingCents == 0) {
            return (executedTokens, 0);
        }

        uint executed20;
        (executed20, remainingCents) = executeIfAvailable1(buyer, remainingCents, txHash, GVOptionToken(gvOptionToken20), uint8(1), token20perCent);
        if (remainingCents == 0) {
            return (executedTokens + executed20, 0);
        }

        uint executed10;
        (executed10, remainingCents) = executeIfAvailable2(buyer, remainingCents, txHash, GVOptionToken(gvOptionToken10), uint8(2), token10perCent);
        
        return (executedTokens + executed20 + executed10, remainingCents);
    }

    // Buy option tokens. Priority: GVOT30 -> GVOT20 -> GVOT10
    function buyOptions(address buyer, uint usdCents, string memory txHash) icoOnly public {
        require(usdCents > 0);

        uint256 remainUsdCents = buyIfAvailable0(buyer, usdCents, txHash, GVOptionToken(gvOptionToken30), uint8(0), option30perCent);
        if (remainUsdCents == 0) {
            return;
        }

        remainUsdCents = buyIfAvailable1(buyer, remainUsdCents, txHash, GVOptionToken(gvOptionToken20), uint8(1), option20perCent);
        if (remainUsdCents == 0) {
            return;
        }

        remainUsdCents = buyIfAvailable2(buyer, remainUsdCents, txHash, GVOptionToken(gvOptionToken10), uint8(2), option10perCent);
    }   

    // Private functions
    
    function executeIfAvailable0(address buyer, uint256 usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint256 optionPerCent)
        private returns (uint executedTokens, uint remainingCents) {
        
        uint256 optionsAmount = usdCents * 260000000000000000;
        executedTokens = optionToken.executeOption(buyer, optionsAmount);
        remainingCents = usdCents - (executedTokens / 260000000000000000);
        if (executedTokens > 0) {
            emit ExecuteOptions(buyer, executedTokens, txHash, optionType);
        }
        return (executedTokens, remainingCents);
    }

    function executeIfAvailable1(address buyer, uint256 usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint256 optionPerCent)
        private returns (uint executedTokens, uint remainingCents) {
        
        uint256 optionsAmount = usdCents * 240000000000000000;
        executedTokens = optionToken.executeOption(buyer, optionsAmount);
        remainingCents = usdCents - (executedTokens / 240000000000000000);
        if (executedTokens > 0) {
            emit ExecuteOptions(buyer, executedTokens, txHash, optionType);
        }
        return (executedTokens, remainingCents);
    }

    function executeIfAvailable2(address buyer, uint256 usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint256 optionPerCent)
        private returns (uint executedTokens, uint remainingCents) {
        
        uint256 optionsAmount = usdCents * 220000000000000000;
        executedTokens = optionToken.executeOption(buyer, optionsAmount);
        remainingCents = usdCents - (executedTokens / 220000000000000000);
        if (executedTokens > 0) {
            emit ExecuteOptions(buyer, executedTokens, txHash, optionType);
        }
        return (executedTokens, remainingCents);
    }

    function buyIfAvailable0(address buyer, uint usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint optionsPerCent)
        private returns (uint) {
        
        uint256 availableTokens = optionToken.remainingTokensCount(); 
        if (availableTokens > 0) {
            uint256 tokens = usdCents * 260000000000000000;
            if(availableTokens >= tokens) {
                optionToken.buyOptions(buyer, tokens);
                emit BuyOptions(buyer, tokens, txHash, optionType);
                return 0;
            }
            else {
                optionToken.buyOptions(buyer, availableTokens);
                emit BuyOptions(buyer, availableTokens, txHash, optionType);
                return usdCents - availableTokens / 260000000000000000;
            }
        }
        return usdCents;
    }

    function buyIfAvailable1(address buyer, uint usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint optionsPerCent)
        private returns (uint) {
        
        uint256 availableTokens = optionToken.remainingTokensCount(); 
        if (availableTokens > 0) {
            uint256 tokens = usdCents * 240000000000000000;
            if(availableTokens >= tokens) {
                optionToken.buyOptions(buyer, tokens);
                emit BuyOptions(buyer, tokens, txHash, optionType);
                return 0;
            }
            else {
                optionToken.buyOptions(buyer, availableTokens);
                emit BuyOptions(buyer, availableTokens, txHash, optionType);
                return usdCents - availableTokens / 240000000000000000;
            }
        }
        return usdCents;
    }

    function buyIfAvailable2(address buyer, uint usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint optionsPerCent)
        private returns (uint) {
        
        uint256 availableTokens = optionToken.remainingTokensCount(); 
        if (availableTokens > 0) {
            uint256 tokens = usdCents * 220000000000000000;
            if(availableTokens >= tokens) {
                optionToken.buyOptions(buyer, tokens);
                emit BuyOptions(buyer, tokens, txHash, optionType);
                return 0;
            }
            else {
                optionToken.buyOptions(buyer, availableTokens);
                emit BuyOptions(buyer, availableTokens, txHash, optionType);
                return usdCents - availableTokens / 220000000000000000;
            }
        }
        return usdCents;
    }

    /*function executeIfAvailable(address buyer, uint256 usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint256 optionPerCent)
        private returns (uint executedTokens, uint remainingCents) {
        
        uint256 optionsAmount = usdCents * optionPerCent;
        executedTokens = optionToken.executeOption(buyer, optionsAmount);
        remainingCents = usdCents - (executedTokens / optionPerCent);
        if (executedTokens > 0) {
            emit ExecuteOptions(buyer, executedTokens, txHash, optionType);
        }
        return (executedTokens, remainingCents);
    }

    function buyIfAvailable(address buyer, uint usdCents, string memory txHash,
        GVOptionToken optionToken, uint8 optionType, uint optionsPerCent)
        private returns (uint) {
        
        uint256 availableTokens = optionToken.remainingTokensCount(); 
        if (availableTokens > 0) {
            uint256 tokens = usdCents * optionsPerCent;
            if(availableTokens >= tokens) {
                optionToken.buyOptions(buyer, tokens);
                emit BuyOptions(buyer, tokens, txHash, optionType);
                return 0;
            }
            else {
                optionToken.buyOptions(buyer, availableTokens);
                emit BuyOptions(buyer, availableTokens, txHash, optionType);
                return usdCents - availableTokens / optionsPerCent;
            }
        }
        return usdCents;
    }*/
}
contract Initable {
    function init(address token) public;
}
// Crowdfunding code for Genesis Vision Project
contract ICO {

    // Constants
    uint public constant TOKENS_FOR_SALE = 33000000000000000000000000;

    // Events
    event StartOptionsSelling();
    event StartICOForOptionsHolders();
    event RunIco();
    event PauseIco();
    event ResumeIco();
    event FinishIco();

    event BuyTokens(address buyer, uint amount, string txHash);

    address public gvAgent; // payments bot account
    address public team;    // team account

    GVToken public gvToken;
    GVOptionProgram public optionProgram;
    Initable public teamAllocator;
    address public migrationMaster;

    // Modifiers
    modifier teamOnly { require(msg.sender == team); _; }
    modifier gvAgentOnly { require(msg.sender == gvAgent); _; }

    // Current total token supply
    uint tokensSold = 0;

    bool public isPaused = false;
    enum IcoState { Created, RunningOptionsSelling, RunningForOptionsHolders, Running, Finished }
    IcoState public icoState = IcoState.Created;

    // Constructor
    constructor(address _team, address _gvAgent, address _migrationMaster, address _teamAllocator) public {
        gvAgent = _gvAgent;
        team = _team;
        teamAllocator = Initable(_teamAllocator);
        migrationMaster = _migrationMaster;
        gvToken = new GVToken(address(this), migrationMaster);
    }

    // Initialize Option Program contract
    function initOptionProgram() external teamOnly {
        if (address(optionProgram) == address(0)) {
            optionProgram = new GVOptionProgram(address(this), gvAgent, team);
        }
    }

    // ICO and Option Program state management
    function startOptionsSelling() external teamOnly {
        require(icoState == IcoState.Created);
        // Check if Option Program is initialized
        require(address(optionProgram) != address(0));    
        icoState = IcoState.RunningOptionsSelling;
        emit StartOptionsSelling();
    }

    // Finish options selling and start ICO for the option holders
    function startIcoForOptionsHolders() external teamOnly {
        require(icoState == IcoState.RunningOptionsSelling);       
        icoState = IcoState.RunningForOptionsHolders;
        emit StartICOForOptionsHolders();
    }

    function startIco() external teamOnly {
        require(icoState == IcoState.RunningForOptionsHolders);
        icoState = IcoState.Running;
        emit RunIco();
    }

    function pauseIco() external teamOnly {
        require(!isPaused);
        require(icoState == IcoState.Running || icoState == IcoState.RunningForOptionsHolders || icoState == IcoState.RunningOptionsSelling);
        isPaused = true;
        emit PauseIco();
    }

    function resumeIco() external teamOnly {
        require(isPaused);
        require(icoState == IcoState.Running || icoState == IcoState.RunningForOptionsHolders || icoState == IcoState.RunningOptionsSelling);
        isPaused = false;
        emit ResumeIco();
    }

    function finishIco(address _fund, address _bounty) external teamOnly {
        require(icoState == IcoState.Running);
        icoState = IcoState.Finished;

        uint mintedTokens = gvToken.totalSupply();
        if (mintedTokens > 0) {
            uint totalAmount = mintedTokens * 4 / 3;              // 75% of total tokens are for sale, get 100%
            gvToken.mint(address(teamAllocator), 11 * totalAmount / 100);  // 11% for team to the time-locked wallet
            gvToken.mint(_fund, totalAmount / 20);                // 5% for Genesis Vision fund
            gvToken.mint(_bounty, 9 * totalAmount / 100);         // 9% for Advisers, Marketing, Bounty
            gvToken.unfreeze();
        }
        
        emit FinishIco();
    }    

    // Buy GVT without options
    function buyTokens(address buyer, uint usdCents, string calldata txHash)
        external gvAgentOnly returns (uint) {
        require(icoState == IcoState.Running);
        require(!isPaused);
        return buyTokensInternal(buyer, usdCents, txHash);
    }

    // Buy GVT for option holders. At first buy GVT with option execution, then buy GVT in regular way if ICO is running
    function buyTokensByOptions(address buyer, uint usdCents, string calldata txHash)
        external gvAgentOnly returns (uint) {
        require(!isPaused);
        require(icoState == IcoState.Running || icoState == IcoState.RunningForOptionsHolders);
        require(usdCents > 0);

        uint executedTokens; 
        uint remainingCents;
        // Execute options
        (executedTokens, remainingCents) = optionProgram.executeOptions(buyer, usdCents, txHash);

        if (executedTokens > 0) {
            require(tokensSold + executedTokens <= TOKENS_FOR_SALE);
            tokensSold += executedTokens;
            
            gvToken.mint(buyer, executedTokens);
            emit BuyTokens(buyer, executedTokens, txHash);
        }

        //Buy GVT for remaining cents without options
        if (icoState == IcoState.Running) {
            return buyTokensInternal(buyer, remainingCents, txHash);
        } else {
            return remainingCents;
        }
    }

    // Buy GVOT during the Option Program
    function buyOptions(address buyer, uint usdCents, string calldata txHash)
        external gvAgentOnly {
        require(!isPaused);
        require(icoState == IcoState.RunningOptionsSelling);
        optionProgram.buyOptions(buyer, usdCents, txHash);
    }

    // Internal buy GVT without options
    function buyTokensInternal(address buyer, uint usdCents, string memory txHash)
    private returns (uint) {
        //ICO state is checked in external functions, which call this function        
        require(usdCents > 0);
        uint tokens = usdCents * 10000000000000000;
        require(tokensSold + tokens <= TOKENS_FOR_SALE);
        tokensSold += tokens;
            
        gvToken.mint(buyer, tokens);
        emit BuyTokens(buyer, tokens, txHash);

        return 0;
    }
}


