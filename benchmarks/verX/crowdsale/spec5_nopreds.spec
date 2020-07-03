// The wallet of the crowdsale cannot be modified
property spec5 {
    always((SampleCrowdsale._wallet == RefundEscrow._beneficiary) 
            && (SampleCrowdsale._wallet == 0x5555555555555555555555555555555555555555));
}
