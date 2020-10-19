#!/bin/bash

VERIFIED_DIR=/mnt/extra/verified-smart-contracts

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# extract filename if absolute path
CONTRACT_NAME="${1##*/}"
# default: assumes 3 vars are declared in this order
BALANCES_LOC="${2:-0}"
ALLOWANCES_LOC="${3:-1}"
TOTALSUPPLY_LOC="${4:-2}"

CONTRACT_DIR=${VERIFIED_DIR}/erc20/${CONTRACT_NAME%.sol}/
CONTRACT_SHORT_NAME=$(echo "${CONTRACT_NAME}" | awk -F '_' '{print $1}' )

# make sure CONTRACT_NAME is a .sol file
if [[ ${CONTRACT_NAME: -4} != ".sol" ]]; then
	echo "Syntax is ./run-kevm-specs.sh CONTRACT_NAME balance-loc allowance-loc totalsupply-loc"
	echo "CONTRACT_NAME was not a .sol file"
	exit 1
fi

mkdir -p ${CONTRACT_DIR}

# copy .sol file over
cp ${1} ${CONTRACT_DIR}/

# copy Makefile and .ini from defaults
cp ${THIS_DIR}/template1.mak ${CONTRACT_DIR}/Makefile
echo "${CONTRACT_NAME%.sol}" >> ${CONTRACT_DIR}/Makefile
cat ${THIS_DIR}/template2.mak >> ${CONTRACT_DIR}/Makefile
cp ${THIS_DIR}/template.ini ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

# fill in variable locations
echo -e "_balances: ${BALANCES_LOC}\n_allowances: ${ALLOWANCES_LOC}\n_totalSupply: ${TOTALSUPPLY_LOC}" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

# compile .sol to bytecode and insert in for "code:" in .ini
mkdir -p ${CONTRACT_DIR}/solc_out/
solc --bin-runtime --overwrite -o ${CONTRACT_DIR}/solc_out/ ${CONTRACT_DIR}/${CONTRACT_NAME} > /dev/null
printf "code: \"0x" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini
cat ${CONTRACT_DIR}/solc_out/${CONTRACT_SHORT_NAME}.bin-runtime >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini
echo "\"" >> ${CONTRACT_DIR}/${CONTRACT_NAME%.sol}-erc20-spec.ini

(cd ${VERIFIED_DIR};
make -C erc20/${CONTRACT_NAME%.sol}/ clean;
make -C erc20/${CONTRACT_NAME%.sol}/;
make -C erc20/${CONTRACT_NAME%.sol}/ test &> erc20/${CONTRACT_NAME%.sol}/${CONTRACT_NAME%.sol}.log)
