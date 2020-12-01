#!/bin/bash

function post-proccess {
    sed -i.bu 's/const unique/var/' $1
    sed -i.bu 's/ div / \/ /' $1
    sed -i.bu 's/ mod / % /' $1

    rm $1.bu
}

rm -rf attacker-models

mkdir -p attacker-models/no-callback/
mkdir -p attacker-models/single-callback/
mkdir -p attacker-models/inf-callback

echo "Translating Validator Auction"

VeriSol `realpath  ./ValidatorAuction.sol` ValidatorAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:ValidatorAuction-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess ValidatorAuction-tmp.bpl

mv ValidatorAuction-tmp.bpl attacker-models/no-callback/ValidatorAuction.bpl

VeriSol `realpath  ./ValidatorAuction.sol` ValidatorAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:ValidatorAuction-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess ValidatorAuction-tmp.bpl

mv ValidatorAuction-tmp.bpl attacker-models/single-callback/ValidatorAuction.bpl

VeriSol `realpath  ./ValidatorAuction.sol` ValidatorAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:ValidatorAuction-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess ValidatorAuction-tmp.bpl

mv ValidatorAuction-tmp.bpl attacker-models/inf-callback/ValidatorAuction.bpl

echo "Translating Simple Auction"

VeriSol `realpath  ./SimpleAuction.sol` SimpleAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useNumericOperators

mv __SolToBoogieTest_out.bpl SimpleAuction-tmp.bpl

mv SimpleAuction-tmp.bpl attacker-models/no-callback/SimpleAuction.bpl

VeriSol `realpath  ./SimpleAuction.sol` SimpleAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback /useNumericOperators
mv __SolToBoogieTest_out.bpl SimpleAuction-tmp.bpl

mv SimpleAuction-tmp.bpl attacker-models/single-callback/SimpleAuction.bpl

VeriSol `realpath  ./SimpleAuction.sol` SimpleAuction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks /useNumericOperators

mv __SolToBoogieTest_out.bpl SimpleAuction-tmp.bpl

mv SimpleAuction-tmp.bpl attacker-models/inf-callback/SimpleAuction.bpl

echo "Translating RefundableCrowdsale"

VeriSol `realpath  ./RefundableCrowdsale.sol` RefundableCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

# The below command takes forever, so no pretty print
#boogie /print:RefundableCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

#mv RefundableCrowdsale-tmp.bpl attacker-models/no-callback/RefundableCrowdsale.bpl

post-proccess __SolToBoogieTest_out.bpl

mv __SolToBoogieTest_out.bpl attacker-models/no-callback/RefundableCrowdsale.bpl

VeriSol `realpath  ./RefundableCrowdsale.sol` RefundableCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

# The below command takes forever, so no pretty print
#boogie /print:RefundableCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

#mv RefundableCrowdsale-tmp.bpl attacker-models/single-callback/RefundableCrowdsale.bpl

post-proccess __SolToBoogieTest_out.bpl

mv __SolToBoogieTest_out.bpl attacker-models/single-callback/RefundableCrowdsale.bpl

VeriSol `realpath  ./RefundableCrowdsale.sol` RefundableCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

# The below command takes forever, so no pretty print
#boogie /print:RefundableCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

#mv RefundableCrowdsale-tmp.bpl attacker-models/single-callback/RefundableCrowdsale.bpl

post-proccess __SolToBoogieTest_out.bpl

mv __SolToBoogieTest_out.bpl attacker-models/inf-callback/RefundableCrowdsale.bpl

echo "Translating EPXCrowdsale"

VeriSol `realpath  ./EPXCrowdsale.sol` EPXCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:EPXCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EPXCrowdsale-tmp.bpl

mv EPXCrowdsale-tmp.bpl attacker-models/no-callback/EPXCrowdsale.bpl

VeriSol `realpath  ./EPXCrowdsale.sol` EPXCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:EPXCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EPXCrowdsale-tmp.bpl

mv EPXCrowdsale-tmp.bpl attacker-models/single-callback/EPXCrowdsale.bpl

VeriSol `realpath  ./EPXCrowdsale.sol` EPXCrowdsale /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:EPXCrowdsale-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EPXCrowdsale-tmp.bpl

mv EPXCrowdsale-tmp.bpl attacker-models/inf-callback/EPXCrowdsale.bpl

echo "Translating RefundEscrow"

VeriSol `realpath  ./RefundEscrow.sol` RefundEscrow /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:RefundEscrow-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RefundEscrow-tmp.bpl

mv RefundEscrow-tmp.bpl attacker-models/no-callback/RefundEscrow.bpl

VeriSol `realpath  ./RefundEscrow.sol` RefundEscrow /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:RefundEscrow-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RefundEscrow-tmp.bpl

mv RefundEscrow-tmp.bpl attacker-models/single-callback/RefundEscrow.bpl

VeriSol `realpath  ./RefundEscrow.sol` RefundEscrow /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:RefundEscrow-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RefundEscrow-tmp.bpl

mv RefundEscrow-tmp.bpl attacker-models/inf-callback/RefundEscrow.bpl

echo "Translating EscrowVault"

VeriSol `realpath  ./EscrowVault.sol` EscrowVault /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:EscrowVault-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EscrowVault-tmp.bpl

mv EscrowVault-tmp.bpl attacker-models/no-callback/EscrowVault.bpl

VeriSol `realpath  ./EscrowVault.sol` EscrowVault /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:EscrowVault-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EscrowVault-tmp.bpl

mv EscrowVault-tmp.bpl attacker-models/single-callback/EscrowVault.bpl

VeriSol `realpath  ./EscrowVault.sol` EscrowVault /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:EscrowVault-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess EscrowVault-tmp.bpl

mv EscrowVault-tmp.bpl attacker-models/inf-callback/EscrowVault.bpl

echo "Translating Crowdfunding"

VeriSol `realpath  ./Crowdfunding.sol` Crowdfunding /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:Crowdfunding-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess Crowdfunding-tmp.bpl

mv Crowdfunding-tmp.bpl attacker-models/no-callback/Crowdfunding.bpl

VeriSol `realpath  ./Crowdfunding.sol` Crowdfunding /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:Crowdfunding-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess Crowdfunding-tmp.bpl

mv Crowdfunding-tmp.bpl attacker-models/single-callback/Crowdfunding.bpl

VeriSol `realpath  ./Crowdfunding.sol` Crowdfunding /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:Crowdfunding-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess Crowdfunding-tmp.bpl

mv Crowdfunding-tmp.bpl attacker-models/inf-callback/Crowdfunding.bpl

echo "Translating Auction"

VeriSol `realpath  ./Auction.sol` Auction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useNumericOperators

mv __SolToBoogieTest_out.bpl Auction-tmp.bpl

mv Auction-tmp.bpl attacker-models/no-callback/Auction.bpl

VeriSol `realpath  ./Auction.sol` Auction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback /useNumericOperators

mv __SolToBoogieTest_out.bpl Auction-tmp.bpl

mv Auction-tmp.bpl attacker-models/single-callback/Auction.bpl

VeriSol `realpath  ./Auction.sol` Auction /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks /useNumericOperators

mv __SolToBoogieTest_out.bpl Auction-tmp.bpl

mv Auction-tmp.bpl attacker-models/inf-callback/Auction.bpl

echo "Translating RockPaperScissors"

VeriSol `realpath  ./RockPaperScissors.sol` RockPaperScissors /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith

boogie /print:RockPaperScissors-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RockPaperScissors-tmp.bpl

mv RockPaperScissors-tmp.bpl attacker-models/no-callback/RockPaperScissors.bpl

VeriSol `realpath  ./RockPaperScissors.sol` RockPaperScissors /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:callback

boogie /print:RockPaperScissors-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RockPaperScissors-tmp.bpl

mv RockPaperScissors-tmp.bpl attacker-models/single-callback/RockPaperScissors.bpl

VeriSol `realpath  ./RockPaperScissors.sol` RockPaperScissors /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /stubModel:multipleCallbacks

boogie /print:RockPaperScissors-tmp.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

post-proccess RockPaperScissors-tmp.bpl

mv RockPaperScissors-tmp.bpl attacker-models/inf-callback/RockPaperScissors.bpl

