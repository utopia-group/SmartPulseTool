#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# this script takes 2 arguments
FILE_NAME=$1
CONTRACT_NAME=$2

# make sure FILE_NAME is a .sol file
if [[ ${FILE_NAME: -4} != ".sol" ]]; then
	echo "Syntax is ./test-all-props.sh FILE_NAME CONTRACT_NAME"
	echo "FILE_NAME was not a .sol file"
	exit 1
fi

# create the .config file if it doesn't already exist
if [ ! -f "${FILE_NAME%.sol}.config" ]; then
	VeriSol ${FILE_NAME} ${CONTRACT_NAME} /modelReverts /omitSourceLineInfo /LazyAllocNoMod /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useMultiDim /stubModel:callback /useNumericOperators /omitUnsignedSemantics /useModularArithmetic /prePostHarness /generateGetters /generateERC20Spec /modelAssemblyAsHavoc /SliceFunctions:totalSupply,balanceOf,allowance,approve,transfer,transferFrom
else
	VeriSol ${FILE_NAME} ${CONTRACT_NAME} /modelReverts /omitSourceLineInfo /LazyAllocNoMod /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useMultiDim /stubModel:callback /useNumericOperators /omitUnsignedSemantics /useModularArithmetic /prePostHarness /generateGetters /modelAssemblyAsHavoc /SliceFunctions:totalSupply,balanceOf,allowance,approve,transfer,transferFrom
fi

baseBpl=${FILE_NAME%.sol}.bpl
mv __SolToBoogieTest_out.bpl ${baseBpl}

source "${FILE_NAME%.sol}.config"

FILE_NAME="$(basename -- $FILE_NAME)"

property_names=(
	"totalsupply"
	"balanceof"
	"allowance"
	"approve"
	"transfer-normal"
	"transfer-self"
	"transfer-fail"
	"transfer-self-fail"
	"transferfrom-normal"
	"transferfrom-self"
	"transferfrom-fail"
	"transferfrom-self-fail"
)

ALL_ELSE_EQ=""
for var in "${EXTRA_VARS[@]}"; do
	ALL_ELSE_EQ+=" && ${var} == old(${var})"
done

properties=(
"// #LTLProperty: [](started(${TOT_SUP_CONTRACT}.totalSupply, ${TOTAL} >= 0 && ${TOTAL} < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TOT_SUP_CONTRACT}.totalSupply, return == ${TOTAL} && ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES} == old(${ALLOWANCES})${ALL_ELSE_EQ})))"

"// #LTLProperty: [](started(${BAL_OF_CONTRACT}.balanceOf(owner), ${BALANCES}[owner] >= 0 && ${BALANCES}[owner] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${BAL_OF_CONTRACT}.balanceOf(owner), return == ${BALANCES}[owner] && ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES} == old(${ALLOWANCES})${ALL_ELSE_EQ})))"
	
"// #LTLProperty: [](started(${ALLOWANCE_CONTRACT}.allowance(owner, spender), ${ALLOWANCES}[owner][spender] >= 0 && ${ALLOWANCES}[owner][spender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${ALLOWANCE_CONTRACT}.allowance(owner, spender), return == ${ALLOWANCES}[owner][spender] &&  ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES} == old(${ALLOWANCES})${ALL_ELSE_EQ})))"

"// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${APPROVE_CONTRACT}.approve(spender, value), p1 != msg.sender || p2 != spender) ==> <>(finished(${APPROVE_CONTRACT}.approve(spender, value), return == true && ${ALLOWANCES}[msg.sender][spender] == value &&  ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES}[p1][p2] == old(${ALLOWANCES}[p1][p2])${ALL_ELSE_EQ})))"

"// #LTLVariables: p1:Ref
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), to != null && p1 != msg.sender && p1 != to && msg.sender != to && value <= ${BALANCES}[msg.sender] && ${BALANCES}[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000 && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[msg.sender] >= 0 &&  ${BALANCES}[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), ${BALANCES}[msg.sender] == old(${BALANCES}[msg.sender]) - value && ${BALANCES}[to] == old(${BALANCES}[to]) + value && ${TOTAL} == old(${TOTAL}) && ${ALLOWANCES} == old(${ALLOWANCES}) && ${BALANCES}[p1] == old(${BALANCES}[p1])${ALL_ELSE_EQ})))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), to != null && msg.sender == to && value <= ${BALANCES}[msg.sender] && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[msg.sender] >= 0 &&  ${BALANCES}[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES} == old(${ALLOWANCES})${ALL_ELSE_EQ})))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), msg.sender != to && (value > ${BALANCES}[msg.sender] || ${BALANCES}[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000) && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[msg.sender] >= 0 &&  ${BALANCES}[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(reverted(${TRANSFER_CONTRACT}.transfer)))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), msg.sender == to && value > ${BALANCES}[msg.sender] && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[msg.sender] >= 0 &&  ${BALANCES}[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(reverted(${TRANSFER_CONTRACT}.transfer)))"

"// #LTLVariables: p1:Ref,p2:Ref,p3:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != null && to != null && p1 != from && p1 != to && (p2 != from || p3 != msg.sender) && from != to && value <= ${BALANCES}[from] && value <= ${ALLOWANCES}[from][msg.sender] && ${BALANCES}[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000 && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[from] >= 0 &&  ${BALANCES}[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${ALLOWANCES}[from][msg.sender] >= 0 && ${ALLOWANCES}[from][msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), ${BALANCES}[from] == old(${BALANCES}[from]) - value && ${BALANCES}[to] == old(${BALANCES}[to]) + value && ${ALLOWANCES}[from][msg.sender] == old(${ALLOWANCES}[from][msg.sender]) - value && ${TOTAL} == old(${TOTAL}) && ${BALANCES}[p1] == old(${BALANCES}[p1]) && ${ALLOWANCES}[p2][p3] == old(${ALLOWANCES}[p2][p3])${ALL_ELSE_EQ})))"

"// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != null && (p1 != from || p2 != msg.sender) && from == to && value <= ${BALANCES}[from] && value <= ${ALLOWANCES}[from][msg.sender] && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[from] >= 0 &&  ${BALANCES}[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${ALLOWANCES}[from][msg.sender] >= 0 && ${ALLOWANCES}[from][msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), ${ALLOWANCES}[from][msg.sender] == old(${ALLOWANCES}[from][msg.sender]) - value && ${TOTAL} == old(${TOTAL}) && ${BALANCES} == old(${BALANCES}) && ${ALLOWANCES}[p1][p2] == old(${ALLOWANCES}[p1][p2])${ALL_ELSE_EQ})))"

"// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != to && (value > ${BALANCES}[from] || value > ${ALLOWANCES}[from][msg.sender] || ${BALANCES}[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000) && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[from] >= 0 &&  ${BALANCES}[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${ALLOWANCES}[from][msg.sender] >= 0 && ${ALLOWANCES}[from][msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))"

"// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from == to && (value > ${BALANCES}[from] || value > ${ALLOWANCES}[from][msg.sender]) && value >= 0  && value < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[to] >= 0 && ${BALANCES}[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${BALANCES}[from] >= 0 &&  ${BALANCES}[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && ${ALLOWANCES}[from][msg.sender] >= 0 && ${ALLOWANCES}[from][msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))"
)

correct=0
counterexample=0
exception=0
timedout=0

# create /logs if it doesn't exist
mkdir -p logs


for i in ${!properties[@]}
do
	# set up the .bpl file with the correct property
    propBpl=${FILE_NAME%.sol}_${property_names[$i]}.bpl
    logName=./logs/${FILE_NAME%.sol}-${property_names[$i]}-log.txt
	echo -e "${properties[$i]}" > ${propBpl}
	cat  ${baseBpl} >> ${propBpl}

	# time the running, allow the user to Ctrl-C out
	TIME_OUT_LIMIT=300 # in seconds, 10m
	START_TIME=$SECONDS
	trap 'kill -INT -$PID' INT
	timeout $TIME_OUT_LIMIT ${DIR}/SmartPulse/SmartPulse.sh ${propBpl} >& ${logName} &
	PID=$! # pid of job most recently put in background
	wait $PID
	RETVAL=$?
	ELAPSED_TIME=$(($SECONDS - $START_TIME))
	TIME_MSG=$(echo "$(($ELAPSED_TIME/60))m $(($ELAPSED_TIME%60))s")

	if [[ $RETVAL == 124 ]]
	then
		echo "Property ${property_names[$i]} timed out -- ${TIME_OUT_LIMIT}s";
		((++timedout));
	else
		logtail=$(tail -n 20 ${logName})
		if [[ "$logtail" == *" correct"* ]]
		then
			echo "Property ${property_names[$i]} verified -- ${TIME_MSG}";
			((++correct));
		elif [[ "$logtail" == *"End of lasso representation"* ]]
		then
			echo "Property ${property_names[$i]} has counterexample -- ${TIME_MSG}";
			((++counterexample));
		else
			echo "Property ${property_names[$i]} had an exception -- ${TIME_MSG}";
			((++exception));
		fi
	fi
    rm -f ${propBpl}
done

echo "Verified ${correct} out of ${#properties[@]} properties";
echo "${counterexample} counterexamples";
echo "${exception} exceptions";
echo "${timedout} timed out";

# clean-up
# But leave FILE_NAME.bpl in case user would like to read the Boogie code
rm -f ${baseBpl}
