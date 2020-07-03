// The balance of the escrow contract increases with the amount
// of ether sent by users to buy tokens
    property spec6 {
        always(
            (FUNCTION == SampleCrowdsale.buyTokens(address)) ==>
            (BALANCE(RefundEscrow) >= (prev(BALANCE(RefundEscrow)) + msg.value))
        );
    }
