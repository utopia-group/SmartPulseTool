; ERC20-EVM Specification Template Parameters
; For more details, refer to README.md.

[root]
k: #execute => #halt
schedule: CONSTANTINOPLE
gas: #gas(INITGAS, 0, 0) => _

[totalSupply]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32,TOTAL)
callData: #abiCallData("totalSupply", .TypedArgs)
log: _
refund: _
storage: M
origStorage: _
requires:
    andBool select(M, #hashedLocation({COMPILER}, {_TOTALSUPPLY}, .IntList)) ==Int TOTAL
    andBool 0 <=Int TOTAL     andBool TOTAL     <Int (2 ^Int 256)
ensures:

[balanceOf]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32, BAL)
callData: #abiCallData("balanceOf", #address(OWNER))
log: _
refund: _
storage: M
origStorage: _
requires:
    andBool select(M, #hashedLocation({COMPILER}, {_BALANCES}, OWNER)) ==Int BAL
    andBool 0 <=Int OWNER     andBool OWNER     <Int (2 ^Int 160)
    andBool 0 <=Int BAL       andBool BAL       <Int (2 ^Int 256)
ensures:

[allowance]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32, ALLOWANCE)
callData: #abiCallData("allowance", #address(OWNER), #address(SPENDER))
log: _
refund: _
storage: M
origStorage: _
requires:
    andBool select(M,  #hashedLocation({COMPILER}, {_ALLOWANCES}, OWNER SPENDER)) ==Int ALLOWANCE
    andBool 0 <=Int OWNER     andBool OWNER     <Int (2 ^Int 160)
    andBool 0 <=Int SPENDER   andBool SPENDER   <Int (2 ^Int 160)
    andBool 0 <=Int ALLOWANCE andBool ALLOWANCE <Int (2 ^Int 256)
ensures:

[approve]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32, 1)
callData: #abiCallData("approve", #address(SPENDER), #uint256(VALUE))
log: _
refund: _ => _
storage: M1 => M2
origStorage: M1
requires:
    andBool 0 <=Int SPENDER   andBool SPENDER   <Int (2 ^Int 160)
    andBool 0 <=Int VALUE     andBool VALUE     <Int (2 ^Int 256)
ensures:
    ensures select(M2, #hashedLocation({COMPILER}, {_ALLOWANCES}, CALLER_ID SPENDER)) ==Int VALUE
    andBool M1 ==IMap M2 except
        (SetItem(#hashedLocation({COMPILER}, {_ALLOWANCES}, CALLER_ID SPENDER)) .Set)

[transfer]
callData: #abiCallData("transfer", #address(TO_ID), #uint256(VALUE))
refund: _ => _
requires:
    andBool 0 <=Int TO_ID     andBool TO_ID     <Int (2 ^Int 160)
    andBool 0 <=Int VALUE     andBool VALUE     <Int (2 ^Int 256)
    andBool 0 <=Int BAL_FROM  andBool BAL_FROM  <Int (2 ^Int 256)
    andBool 0 <=Int BAL_TO    andBool BAL_TO    <Int (2 ^Int 256)
    andBool CALLER_ID =/=Int 0

[transfer-success]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32, 1)
log: _

[transfer-success-1]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID)) ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES}, TO_ID))     ==Int BAL_TO
    andBool CALLER_ID =/=Int TO_ID
    andBool VALUE <=Int BAL_FROM
    andBool BAL_TO +Int VALUE <Int (2 ^Int 256)
ensures:
    ensures select(M2, #hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID)) ==Int BAL_FROM -Int VALUE
    andBool select(M2, #hashedLocation({COMPILER}, {_BALANCES}, TO_ID))     ==Int BAL_TO   +Int VALUE
    andBool M1 ==IMap M2 except
      (SetItem(#hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID))
       SetItem(#hashedLocation({COMPILER}, {_BALANCES}, TO_ID)) .Set)

[transfer-success-2]
storage: M
origStorage: M
+requires:
    andBool select(M, #hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID)) ==Int BAL_FROM
    andBool CALLER_ID ==Int TO_ID
    andBool VALUE <=Int BAL_FROM
ensures:

[transfer-failure]
statusCode: _ => EVMC_REVERT
output: _ => _
log: _

[transfer-failure-1]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID)) ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES}, TO_ID))     ==Int BAL_TO
    andBool CALLER_ID =/=Int TO_ID
    andBool ( VALUE >Int BAL_FROM
     orBool   BAL_TO +Int VALUE >=Int (2 ^Int 256) )
ensures:

[transfer-failure-2]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES}, CALLER_ID)) ==Int BAL_FROM
    andBool CALLER_ID ==Int TO_ID
    andBool VALUE >Int BAL_FROM
ensures:

[transferFrom]
callData: #abiCallData("transferFrom", #address(FROM_ID), #address(TO_ID), #uint256(VALUE))
refund: _ => _
requires:
    andBool 0 <=Int FROM_ID   andBool FROM_ID   <Int (2 ^Int 160)
    andBool 0 <=Int TO_ID     andBool TO_ID     <Int (2 ^Int 160)
    andBool 0 <=Int VALUE     andBool VALUE     <Int (2 ^Int 256)
    andBool 0 <=Int BAL_FROM  andBool BAL_FROM  <Int (2 ^Int 256)
    andBool 0 <=Int BAL_TO    andBool BAL_TO    <Int (2 ^Int 256)
    andBool 0 <=Int ALLOW     andBool ALLOW     <Int (2 ^Int 256)
    andBool CALLER_ID =/=Int 0

[transferFrom-success]
statusCode: _ => EVMC_SUCCESS
output: _ => #buf(32, 1)
log: _

[transferFrom-success-1]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))           ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   TO_ID))             ==Int BAL_TO
    andBool select(M1, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW
    andBool FROM_ID =/=Int TO_ID
    andBool VALUE <=Int BAL_FROM
    andBool BAL_TO +Int VALUE <Int (2 ^Int 256)
    andBool VALUE <=Int ALLOW
    andBool #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID) =/=Int #hashedLocation({COMPILER}, {_BALANCES}, FROM_ID)
    andBool #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID) =/=Int #hashedLocation({COMPILER}, {_BALANCES}, TO_ID)
ensures:
    ensures select(M2, #hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))           ==Int BAL_FROM -Int VALUE
    andBool select(M2, #hashedLocation({COMPILER}, {_BALANCES},   TO_ID))             ==Int BAL_TO   +Int VALUE
    andBool select(M2, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW    -Int VALUE
    andBool M1 ==IMap M2 except
      (SetItem(#hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))
       SetItem(#hashedLocation({COMPILER}, {_BALANCES},   TO_ID))
       SetItem(#hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) .Set)

[transferFrom-success-2]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))           ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW
    andBool FROM_ID ==Int TO_ID
    andBool VALUE <=Int BAL_FROM
    andBool VALUE <=Int ALLOW
ensures:
    ensures select(M2, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW -Int VALUE
    andBool M1 ==IMap M2 except
      (SetItem(#hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) .Set)

[transferFrom-failure]
statusCode: _ => EVMC_REVERT
output: _ => _
log: _

[transferFrom-failure-1]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))           ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   TO_ID))             ==Int BAL_TO
    andBool select(M1, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW
    andBool FROM_ID =/=Int TO_ID
    andBool ( VALUE >Int BAL_FROM
     orBool   BAL_TO +Int VALUE >=Int (2 ^Int 256)
     orBool   VALUE >Int ALLOW )
ensures:

[transferFrom-failure-2]
storage: M1 => M2
origStorage: M1
+requires:
    andBool select(M1, #hashedLocation({COMPILER}, {_BALANCES},   FROM_ID))           ==Int BAL_FROM
    andBool select(M1, #hashedLocation({COMPILER}, {_ALLOWANCES}, FROM_ID CALLER_ID)) ==Int ALLOW
    andBool FROM_ID ==Int TO_ID
    andBool ( VALUE >Int BAL_FROM
     orBool   VALUE >Int ALLOW )
ensures:

[pgm]
compiler: "Solidity"
