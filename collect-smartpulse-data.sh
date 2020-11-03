#!/bin/bash

# where CSV data will be outputted
DATA_FILENAME="smartpulse-data.csv"

if [ ! $# -eq 2 ]; then
  printf "Invalid syntax:\n./collect-smartpulse-data.sh -[n|a] PATH/TO/CONTRACTS\n-n: create new CSV\n-a: (default) append to existing CSV\n";
fi

# handle -n option
NEW_CSV=false
while getopts ":na" opt; do
  case $opt in
    n)
      NEW_CSV=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
if [ "$NEW_CSV" = false ]; 
then 
  # default behavior: fail if CSV doesn't exist, appends if it exists
  if [ ! -f "$DATA_FILENAME" ]; then
    printf "${DATA_FILENAME} not found and -n option not specified\nRerun with -n to create the data file\n";
    exit 1; 
  fi
else
  # -n: create a new CSV
  rm -f $DATA_FILENAME
  printf "Benchmark,Spec,Result,Runtime\n" > $DATA_FILENAME
fi

# TODO: validate directory
CONTRACT_DIR=$2

for contract in ${CONTRACT_DIR}/*.sol; do
  contract_short_name=$(echo "${contract}" | awk -F '_' '{print $1}' ) # ABC_0x234234324 --> ABC
  # !! the following line assumes the relevant contract in the file is $contract_short_name
  ./test-all-props.sh $contract $contract_short_name | tee _smartpulse_script_log.tmp
  grep -E "^Property [A-Za-z-]+ [a-z-]+ -- [0-9]+ s$" _smartpulse_script_log.tmp > _smartpulse_filtered_log.tmp
  contract_name="$(basename $contract .sol)"
  sed -Ei 's/^Property ([A-Za-z-]+) ([a-z-]+) -- ([0-9]+) s$/'"$contract_name"',\1,\2,\3/' _smartpulse_filtered_log.tmp
  cat _smartpulse_filtered_log.tmp >> $DATA_FILENAME
done
