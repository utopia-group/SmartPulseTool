// Deposits are possible only if the escrow is in active state
    property spec4 {
        always((FUNCTION == RefundEscrow.deposit(address)) ==> (RefundEscrow._state == 0));
    }
