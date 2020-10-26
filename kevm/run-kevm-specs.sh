#!/bin/bash

VERIFIED_DIR=/home/jon/Documents/Research/verified-smart-contracts

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# extract filename if absolute path
CONTRACT_NAME="${1##*/}" # ABC_0x123456.sol
CONTRACT_SHORT_NAME=$(echo "${CONTRACT_NAME}" | awk -F '_' '{print $1}' ) # ABC
# make sure CONTRACT_NAME is a .sol file
if [[ ${CONTRACT_NAME: -4} != ".sol" ]]; then
	echo "Syntax is ./run-kevm-specs.sh CONTRACT_NAME"
	echo "CONTRACT_NAME was not a .sol file"
	exit 1
fi

# create the .config file if it doesn't already -- in same dir as contract
# !!!! Assumes the relevant contract name is the CONTRACT_SHORT_NAME
if [ ! -f "${1%.sol}.config" ]; then
	VeriSol ${1} ${CONTRACT_SHORT_NAME} /modelReverts /omitSourceLineInfo /LazyAllocNoMod /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useMultiDim /stubModel:callback /useNumericOperators /omitUnsignedSemantics /useModularArithmetic /prePostHarness /generateGetters /generateERC20Spec /modelAssemblyAsHavoc /SliceFunctions:totalSupply,balanceOf,allowance,approve,transfer,transferFrom
fi
source "${1%.sol}.config"

# re-assign CONTRACT_NAME which was over-written
# CONTRACT_SHORT_NAME is what CONTRACT_NAME in .config is
CONTRACT_NAME="${1##*/}"

# check if verisol identified all 3 vars
DISASTER=false
if [ -z ${BALANCES+x} ]; then echo "BALANCES is unset in .config -- abort"; DISASTER=true; fi
if [ -z ${ALLOWANCES+x} ]; then echo "ALLOWANCES is unset in .config -- abort"; DISASTER=true; fi
if [ -z ${TOTAL+x} ]; then echo "TOTAL is unset in .config -- abort"; DISASTER=true; fi
if [ "$DISASTER" = true ]; then exit 1; fi

# get locations of the 3 vars: balances, allowances, totalSupply
# .config should have position indices for all variables
BALANCES_LOC="${!BALANCES}"
ALLOWANCES_LOC="${!ALLOWANCES}"
TOTALSUPPLY_LOC="${!TOTAL}"

### set up verified-smart-contract side of things
CONTRACT_DIR="${VERIFIED_DIR}/erc20/${CONTRACT_NAME%.sol}"
echo "${CONTRACT_NAME}"
echo "${CONTRACT_DIR}"

mkdir -p ${CONTRACT_DIR}

# copy .sol file over
cp ${1} ${CONTRACT_DIR}
sed -i 's/assert(/require(/g' ${CONTRACT_DIR}/${CONTRACT_NAME}
sed -i -r 's/^([[:space:]]*)emit /\1\/\/emit /g' ${CONTRACT_DIR}/${CONTRACT_NAME}

# copy Makefile and .ini from defaults
#cp ${THIS_DIR}/template1.mak ${CONTRACT_DIR}/Makefile
#echo "${CONTRACT_NAME%.sol}" >> ${CONTRACT_DIR}/Makefile
#cat ${THIS_DIR}/template2.mak >> ${CONTRACT_DIR}/Makefile
cp ${THIS_DIR}/template.mak ${CONTRACT_DIR}/Makefile
sed -i "s/CONTRACT_NAME/${CONTRACT_NAME%.sol}/g" ${CONTRACT_DIR}/Makefile
cp ${THIS_DIR}/template.ini ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

# fill in variable locations
echo -e "_balances: ${BALANCES_LOC}\n_allowances: ${ALLOWANCES_LOC}\n_totalSupply: ${TOTALSUPPLY_LOC}" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

# compile .sol to bytecode and insert in for "code:" in .ini
mkdir -p ${CONTRACT_DIR}/solc_out
solc --bin-runtime --overwrite -o ${CONTRACT_DIR}/solc_out ${CONTRACT_DIR}/${CONTRACT_NAME} > /dev/null
printf "code: \"0x" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini
cat ${CONTRACT_DIR}/solc_out/${CONTRACT_SHORT_NAME}.bin-runtime >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini
echo "\"" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

(cd ${VERIFIED_DIR};
make -C erc20/${CONTRACT_NAME%.sol}/ clean;
make -C erc20/${CONTRACT_NAME%.sol}/;

# refresh .log file
rm -f erc20/${CONTRACT_NAME%.sol}/${CONTRACT_NAME%.sol}.log
touch erc20/${CONTRACT_NAME%.sol}/${CONTRACT_NAME%.sol}.log

# run each of 14 specs
specs=(
	"totalSupply"
	"balanceOf"
	"allowance"
	"approve"
	"transfer-success-1"
	"transfer-success-2"
	"transfer-failure-1"
	"transfer-failure-2"
	"transferFrom-success-1"
	"transferFrom-success-2"
	"transferFrom-failure-1"
	"transferFrom-failure-2"
)
correct=0
for i in ${!specs[@]}
do
	# run the spec
	make -C erc20/${CONTRACT_NAME%.sol}/ test SPEC_NAMES="${specs[$i]}" &> _kevm_script_tmp.log

	# grep _kevm_script_tmp.log for success/failure
	if grep -q "SPEC PROVED:" _kevm_script_tmp.log; then 
		echo "Proved: ${specs[$i]}";
		((++correct));
	else
		echo "Failed: ${specs[$i]}";
	fi

	# append SPECific log to overall log
	cat _kevm_script_tmp.log >> erc20/${CONTRACT_NAME%.sol}/${CONTRACT_NAME%.sol}.log
done

echo "Proved ${correct} out of ${#specs[@]} specs";
rm -f _kevm_script_tmp.log)
