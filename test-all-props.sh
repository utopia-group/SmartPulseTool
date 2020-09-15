#!/bin/bash

# The config file should be the argument to this script
source "$1"

VeriSol ${FILE_NAME} ${CONTRACT_NAME} /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useMultiDim /stubModel:callback /useNumericOperators /omitUnsignedSemantics /useModularArithmetic

properties=("// #LTLProperty: [](started(${BAL_OF_CONTRACT}.balanceOf(owner)) ==> <>(finished(${BAL_OF_CONTRACT}.balanceOf(owner), __ret_0_ == this.${BALANCES}[owner] && this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}))))")

for i in ${!properties[@]}
do
	echo ${properties[$i]} > ${CONTRACT_NAME}.bpl
	cat  __SolToBoogieTest_out.bpl >> ${CONTRACT_NAME}.bpl
	./SmartPulse/SmartPulse.sh ${CONTRACT_NAME}.bpl >& ${CONTRACT_NAME}-${i}log.txt
done

