pragma solidity >=0.5.0;

import "./IERC20.sol";
import "openZeppelin/math/SafeMath.sol";

/**
 * @title SafeERC20
 * VeriSol does not support low-level calls, but we know the destination of each call in this case. As a result,
 * we can get rid of each low-level call and replace it with the explicit call. This will not change the exception
 * behavior because the require(success) will cause any exception to bubble up as with a normal function call. 
 * Additionally we got rid of address since it requires the use of inline assembly.
 */
library SafeERC20 {
    using SafeMath for uint256;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        //callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
        require(token.transfer(to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        //callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
        require(token.transferFrom(from, to, value));
    }

    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        //callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
        require(token.approve(spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        //callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        require(token.approve(spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value);
        //callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        require(token.approve(spender, newAllowance)); 
    }
}

