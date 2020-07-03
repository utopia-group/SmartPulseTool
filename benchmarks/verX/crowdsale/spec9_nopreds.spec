// The escrow of the crowdsale does not change
    property spec9 {
        always(SampleCrowdsale._escrow == RefundEscrow);
    }
