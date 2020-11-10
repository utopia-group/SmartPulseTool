#!/bin/bash

# where CSV data will be outputted

if [ ! $# -eq 2 ]; then
  printf "Invalid syntax:\n./collect-kevm-data.sh -[n|a] PATH/TO/CONTRACTS\n-n: create new CSV\n-a: (default) append to existing CSV\n";
fi

# TODO: validate directory
CONTRACT_DIR=$2
DATA_FILENAME="$CONTRACT_DIR/kevm-data.csv"

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


for contract in ${CONTRACT_DIR}/*.sol; do
  ./kevm/run-kevm-specs.sh $contract | tee _kevm_script_log.tmp
  grep -E "^(Proved|Failed): [A-Za-z0-9-]+ -- [0-9]*\.*[0-9]*$" _kevm_script_log.tmp > _kevm_filtered_log.tmp
  contract_name="$(basename $contract .sol)"
  sed -Ei 's/^(Proved|Failed): ([A-Za-z0-9-]+) -- ([0-9]*\.*[0-9]*)$/'"$contract_name"',\2,\1,\3/' _kevm_filtered_log.tmp
  cat _kevm_filtered_log.tmp >> $DATA_FILENAME
done
