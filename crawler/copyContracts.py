#!/usr/local/bin/python3

import sys
import shutil


def copyContracts(contractsFilename, fromDir, toDir, num):
    contractsFile = open(contractsFilename)
    contracts = []

    row = -1
    for contractEntry in contractsFile:
        row += 1
        if row == 0:
            continue

        fields = contractEntry.rstrip('\n').split(",")
        contracts.append(fields)

    sortedContracts = sorted(contracts, key=lambda c: int(c[-1]), reverse=True)

    for i in range(num):
        print(sortedContracts[i])
        contract = sortedContracts[i]
        fromFile = "{fromDir}/{name}_{addr}.sol".format(fromDir = fromDir, name = contract[0], addr = contract[1])
        shutil.copy(fromFile, toDir)


if(len(sys.argv) != 5):
    print("Usage: copyContracts.py <contractsFile> <fromDir> <toDir> <num>")
    sys.exit(1)

copyContracts(sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4]))
