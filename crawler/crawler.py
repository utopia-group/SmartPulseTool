#!/usr/local/bin/python3

import sys
import requests
import re
import json
import os.path
from os import path

apiUrl = 'https://api.etherscan.io/api'
apikey = 'G384U2ZJEIERH95X8AWGUREHXM9Q9J23N4'

#PARAMS = {'module' : 'contract', 'action' : 'getsourcecode', 'address' : '0xBB9bc244D798123fDe783fCc1C72d3Bb8C189413', 'apikey' : apikey}

#r = requests.get(url=URL, params=PARAMS)

#data = r.json()

#print(data)


def findContracts(nameFilter):
    contractsFile = open("export-verified-contractaddress-opensource-license.csv", "r")
    outputFile = open("{fname}.csv".format(fname = nameFilter), "w")
    outputFile.write("Name,Address,Compiler Version,Current Balance,Total Deposited Eth,Total Withdrawn Eth,# Transactions" + os.linesep)
    
    if(not path.isdir('contracts')):
        os.mkdir('contracts')

    for contractEntry in contractsFile:
        contractFields = contractEntry.rstrip('\n').split(",")

        if(len(contractFields) != 3):
            continue

        contractAddr = contractFields[1].replace('"', "")
        contractName = contractFields[2].replace('"', "")

        if(not contractAddr.startswith('0x')):
            continue

        if(nameFilter not in contractName):
            continue

        contractParams = {'module' : 'contract', 'action' : 'getsourcecode', 'address' : contractAddr, 'apikey' : apikey}

        req = requests.get(url=apiUrl, params=contractParams)

        response = req.json()
        contractCode = response['result'][0]['SourceCode']
        compilerVersion = response['result'][0]['CompilerVersion']

        solFile = "contracts/{name}_{addr}.sol".format(name = contractName, addr = contractAddr)

        if(not path.exists(solFile)):
            solFile = open(solFile, "w")
            solFile.write(contractCode)
            solFile.close()

        balanceParams = {'module' : 'account', 'action' : 'balance', 'address' : contractAddr, 'tag' : 'latest', 'apikey' : apikey}

        req = requests.get(url=apiUrl, params=balanceParams)

        response = req.json()

        contractBal = float(response['result']) / 1000000000000000000.0

        txnParams = {'module' : 'account', 'action' : 'txlist', 'address' : contractAddr, 'sort' : 'asc', 'apikey' : apikey}

        req = requests.get(url=apiUrl, params=txnParams)

        response = req.json()

        txns = response['result']

        totalTxnValue = 0.0
        for txn in txns:
            if(int(txn['isError']) == 0):
                totalTxnValue += float(txn['value'])

        internalTxnParams = {'module' : 'account', 'action' : 'txlistinternal', 'address' : contractAddr, 'sort' : 'asc', 'apikey' : apikey}

        req = requests.get(url=apiUrl, params=internalTxnParams)

        response = req.json()

        internalTxns = response['result']

        totalWithdraws = 0.0
        for txn in internalTxns:
            if(int(txn['isError']) == 0):
                if(contractAddr.lower() in txn['to'].lower() or (contractAddr.lower() in txn['contractAddress'].lower() and txn['type'] == 'create')):
                    totalTxnValue += float(txn['value'])
                else:
                    totalWithdraws += float(txn['value'])
        

        totalTxnValue = totalTxnValue / 1000000000000000000.0
        totalWithdraws = totalWithdraws / 1000000000000000000.0
        
        outputFile.write("{name},{addr},{version},{bal},{txnBal},{withdraws},{numTxns}".format(name = contractName, addr = contractAddr, version = compilerVersion, bal = contractBal, txnBal = totalTxnValue, withdraws = totalWithdraws, numTxns = len(txns)))
        outputFile.write(os.linesep)

    contractsFile.close()
    outputFile.close()
    

if(len(sys.argv) != 2):
    print("Usage: ./crawler.py contractSubname")
    sys.exit(1)

findContracts(sys.argv[1])
