# Location
* https://github.com/OpenZeppelin/openzeppelin-contracts
# Properties
## Escrow
### Escrow.sol
* Primary may always eventually withdraw
### RefundEscrow.sol
* If state isn't active, can either refund or send money to beneficiary (Can use refundsClosed/refundsEnabled events to make this two properties)
## Crowdsale
* Always eventually buyTokens succeeds
### Refundable Crowdsale
* If goal succeeds, beneficiary recieves all of the money
* If goal doesn't succeed, people may always eventually get refunded
## ERC20
* A user may always eventually transfer their tokens if the balance is sufficient
* An authorized user may always eventually transfer tokens on behalf of another a long as that user's balance is sufficient.
## ERC721
* The owner of a token may do whatever they want with it (transfer it, approve it for someone else)
* Someone approved to use a token may always eventually transfer it
* A user owns a token until transfered
## ERC777
* Similar to ERC20?
