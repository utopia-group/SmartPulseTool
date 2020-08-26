#!/usr/local/bin/python3

import sys
import requests
import re
import json
import os.path
import hashlib
import functools
import time
from os import path

from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util.retry import Retry

apiUrl = 'https://api.etherscan.io/api'
apikey = 'G384U2ZJEIERH95X8AWGUREHXM9Q9J23N4'
apis = ['name', 'symbol', 'decimals', 'totalSupply', 'balanceOf', 'transfer', 'transferFrom', 'approve', 'allowance', 'Transfer', 'Approval']

#PARAMS = {'module' : 'contract', 'action' : 'getsourcecode', 'address' : '0xBB9bc244D798123fDe783fCc1C72d3Bb8C189413', 'apikey' : apikey}

#r = requests.get(url=URL, params=PARAMS)

#data = r.json()

#print(data)


def findContracts(continueFrom):
    contractsFile = open("export-verified-contractaddress-opensource-license.csv", "r")
    outputFile = open("ERC20.csv", "a+")
    outputFile.write("Name,Address,Compiler Version,Current Balance,Total Deposited Eth,Total Withdrawn Eth,# Transactions" + os.linesep)

    foundStart = not continueFrom
    s = requests.Session()
    retries = Retry(total=5, backoff_factor=1, status_forcelist=[501, 502, 503])
    s.mount(apiUrl, HTTPAdapter(max_retries=retries))

    contractHashes = set()
    
    if(not path.isdir('contracts')):
        os.mkdir('contracts')

    row = 0

    for contractEntry in contractsFile:
        row += 1
        contractFields = contractEntry.rstrip('\n').split(",")

        if(len(contractFields) != 3):
            continue

        contractAddr = contractFields[1].replace('"', "")
        contractName = contractFields[2].replace('"', "")

        if(not foundStart and contractAddr != continueFrom):
            continue
        if(not foundStart):
            print("Found start at row " + str(row))
        foundStart = True

        if(not contractAddr.startswith('0x')):
            continue

        tokenSupply = {'module' : 'stats', 'action' : 'tokensupply', 'contractaddress' : contractAddr, 'apikey' : apikey}
        req = s.get(url=apiUrl, params=tokenSupply, timeout=20)
        time.sleep(0.2)

        response = req.json()
        supplyAmt = int(response['result'][0])
        if(supplyAmt == 0):
            continue

        contractParams = {'module' : 'contract', 'action' : 'getsourcecode', 'address' : contractAddr, 'apikey' : apikey}

        req = s.get(url=apiUrl, params=contractParams, timeout=20)
        time.sleep(0.2)

        response = req.json()

        contractCode = response['result'][0]['SourceCode']
        compilerVersion = response['result'][0]['CompilerVersion']
        m = re.match('v(\d+)\.(\d+)\.(\d+)', compilerVersion)

        if not m:
            continue

        majorVersion = int(m.group(2))
        minorVersion = int(m.group(3))

        if(not ((majorVersion == 4 and minorVersion >= 24) or majorVersion == 5)):
            continue

        containsAllAPIs = functools.reduce(lambda x,y: x and y, map(lambda x: x in contractCode, apis))
        if(not containsAllAPIs):
            continue
    
        codeHash = hashlib.sha256(contractCode.encode('utf-8')).hexdigest()
        if(codeHash in contractHashes):
            continue
        contractHashes.add(codeHash)

        solFile = "contracts/{name}_{addr}.sol".format(name = contractName, addr = contractAddr)

        if(not path.exists(solFile)):
            solFile = open(solFile, "w")
            solFile.write(contractCode)
            solFile.close()

        balanceParams = {'module' : 'account', 'action' : 'balance', 'address' : contractAddr, 'tag' : 'latest', 'apikey' : apikey}

        req = s.get(url=apiUrl, params=balanceParams, timeout=20)
        time.sleep(0.2)

        response = req.json()

        contractBal = float(response['result']) / 1000000000000000000.0

        txnParams = {'module' : 'account', 'action' : 'txlist', 'address' : contractAddr, 'sort' : 'asc', 'apikey' : apikey}

        req = s.get(url=apiUrl, params=txnParams, timeout=20)
        time.sleep(0.2)

        response = req.json()

        txns = response['result']

        totalTxnValue = 0.0
        for txn in txns:
            if(int(txn['isError']) == 0):
                totalTxnValue += float(txn['value'])

        internalTxnParams = {'module' : 'account', 'action' : 'txlistinternal', 'address' : contractAddr, 'sort' : 'asc', 'apikey' : apikey}

        req = s.get(url=apiUrl, params=internalTxnParams, timeout=20)
        time.sleep(0.2)

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
    

if(len(sys.argv) > 2):
    print("Usage: ./ERC20rawler.py")
    sys.exit(1)

if(len(sys.argv) == 2):
    findContracts(sys.argv[1])
else:
    findContracts("")

