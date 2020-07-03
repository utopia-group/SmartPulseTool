pragma solidity >=0.5.0;

import "./ERC20.sol";
import "openZeppelin/lifecycle/Pausable.sol";

/**
 * @title Pausable token
 * @dev ERC20 with pausable transfers and allowances.
 *
 * Useful if you want to stop trades until the end of a crowdsale, or have
 * an emergency switch for freezing all token transfers in the event of a large
 * bug.
 */
contract ERC20Pausable is ERC20, Pausable {
    function transfer(address to, uint256 value) public whenNotPaused returns (bool) {
        //return super.transfer(to, value);
        return transfer_ERC20(to, value);
    }

    function transferFrom(address from, address to, uint256 value) public whenNotPaused returns (bool) {
        //return super.transferFrom(from, to, value);
        return transferFrom_ERC20(from, to, value);
    }

    function approve(address spender, uint256 value) public whenNotPaused returns (bool) {
        //return super.approve(spender, value);
        return approve_ERC20(spender, value);
    }

    function increaseAllowance(address spender, uint256 addedValue) public whenNotPaused returns (bool) {
        //return super.increaseAllowance(spender, addedValue);
        return increaseAllowance_ERC20(spender, addedValue);
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public whenNotPaused returns (bool) {
        //return super.decreaseAllowance(spender, subtractedValue);
        return decreaseAllowance_ERC20(spender, subtractedValue);
    }
}

