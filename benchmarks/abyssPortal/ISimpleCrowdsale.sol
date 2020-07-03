pragma solidity >=0.5.0;


interface ISimpleCrowdsale {
    function getSoftCap() external view returns(uint256);
    function isContributorInLists(address contributorAddress) external view returns(bool);
    function processReservationFundContribution(
        address contributor,
        uint256 tokenAmount,
        uint256 tokenBonusAmount
    ) external payable;
}
