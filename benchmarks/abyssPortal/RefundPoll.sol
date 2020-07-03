pragma solidity >=0.5.0;

import './poll/BasePoll.sol';
import './fund/IPollManagedFund.sol';

/**
 * @title RefundPoll
 * @dev Enables fund refund mode
 */
contract RefundPoll is BasePoll {
    uint256 public holdEndTime = 0;

    /**
     * RefundPoll constructor
     * @param _tokenAddress ERC20 compatible token contract address
     * @param _fundAddress Fund contract address
     * @param _startTime Poll start time
     * @param _endTime Poll end time
     */
    constructor(
        address _tokenAddress,
        address _fundAddress,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _holdEndTime,
        bool _checkTransfersAfterEnd
    ) public
        BasePoll(_tokenAddress, _fundAddress, _startTime, _endTime, _checkTransfersAfterEnd)
    {
        holdEndTime = _holdEndTime;
    }

    function tryToFinalize() public returns(bool) {
        if(holdEndTime > 0 && holdEndTime > endTime) {
            require(now >= holdEndTime);
        } else {
            require(now >= endTime);
        }

        finalized = true;
        onPollFinish(isSubjectApproved());
        return true;
    }

    function isSubjectApproved() internal view returns(bool) {
        // CHANGE BELOW
        /* return yesCounter > noCounter && yesCounter >= safeDiv(token.totalSupply(), uint256(3)); */
        return yesCounter > noCounter && yesCounter >= token.totalSupply() / 3;
	// CHANGE ABOVE	
    }

    function onPollFinish(bool agree) internal {
        IPollManagedFund fund = IPollManagedFund(fundAddress);
        fund.onRefundPollFinish(agree);
    }

}

