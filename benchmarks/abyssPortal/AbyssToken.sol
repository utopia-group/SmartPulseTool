pragma solidity >=0.5.0;

import './token/TransferLimitedToken.sol';


contract ABYSS is TransferLimitedToken {
    uint256 public constant SALE_END_TIME = 1526479200; // 16.05.2018 14:00:00 UTC

    constructor(address _listener, address[] memory _owners, address manager) public
        TransferLimitedToken(SALE_END_TIME, _listener, _owners, manager)
    {
        name = "ABYSS";
        symbol = "ABYSS";
        decimals = 18;
    }
}
