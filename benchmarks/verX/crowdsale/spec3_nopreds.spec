// The closed state of the escrow is forever and cannot be changed
    property spec3 {
        always((prev(RefundEscrow._state) == 2) ==> (RefundEscrow._state == 2));
    }
