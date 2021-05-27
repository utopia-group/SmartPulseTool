#!/usr/bin/python

import os
import sys
import subprocess

argTrans = {"-modArith": "/useModularArithmetic", 
            "-instrumentGas": "/instrumentGas",
            "-noReentrancy": "/stubModel:skip",
            "-singleCallback": "/stubModel:callback",
            "-powerfulAdversary": "/stubModel:multipleCallbacks",
            "-txnsOnFields": "/txnsOnFields",
            "-checkPrePost:": "/prePostHarness /SliceFunctions:"}

solFile = ""
contractName = ""
specification = ""
verisolFlags = "/modelReverts /omitSourceLineInfo /LazyAllocNoMod /omitAxioms /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias  /noNonlinearArith /useNumericOperators /omitUnsignedSemantics /generateGetters /modelAssemblyAsHavoc /useMultiDim"
smartpulseDir = os.path.dirname(os.path.realpath(__file__))

def printUsage():
    print("Usage: ./SmartPulse.py [args] contract.sol contractName spec.spec")
    print("args:")
    print(" Behavioral Models:")
    print("  -modArith                   | Model integers using modular arithmetic rather than as mathematical integers")
    print("  -instrumentGas              | Instrument gas usage using model (assumes model comes from solc)")
    print(" Adversary Models:")
    print("  -noReentrancy               | Assume attacker cannot make reentrant calls ")
    print("  -singleCallback             | Assume attacker will only make one reentrant call")
    print("  -powerfulAdversary          | Assume attacker can make arbitrary reentrant calls")
    print(" Harness Modifiers:")
    print("  -tnxsOnFields               | Allow transactions to be issued to contracts in fields of main contract")
    print("  -checkPrePost:<fn1,fn2,...> | Check pre/post conditions of the specified functions")


def processArgs(args):
    global solFile
    global contractName
    global specification
    global verisolFlags

    if len(args) < 4:
        return 
    for i in range(1,len(args)):
        if i == len(args) - 3:
            solFile = args[i]
        elif i == len(args) - 2:
            contractName = args[i]
        elif i == len(args) - 1:
            specification = args[i]
        else:
            for key, value in argTrans.iteritems():
                if key in args[i]:
                    verisolFlags += " " + args[i].replace(key, value)


def solToBoogie():
    verisolCall = ['VeriSol', solFile, contractName]
    verisolCall.append(verisolFlags)

    print(verisolCall)
    verisolLog = open("verisolOutput.log", "w")
    verisolLog.write(" ".join(verisolCall))
    verisolLog.write(os.linesep)
    verisolLog.flush()

    print("Translating contract to Boogie...")

    try:
        process = subprocess.Popen(" ".join(verisolCall), stdin=None, stdout=verisolLog, stderr=subprocess.STDOUT, shell=True)
    except:
        print("Cannot open subprocess")
        sys.exit(1)

    process.wait()
    verisolLog.close()

    if process.returncode != 0:
        print("Could not translate with VeriSol, see verisolOutput.log for details")
        sys.exit(1)

def check():
    boogieFile = open("__SolToBoogieTest_out.bpl", "a")
    specFile = open(specification, "r")
    for line in specFile.readlines():
        boogieFile.write(line + os.linesep)

    boogieFile.close()
    specFile.close()

    try:
        process = subprocess.Popen("{0}/SmartPulse.sh __SolToBoogieTest_out.bpl".format(smartpulseDir), shell=True)
    except:
        print("Cannot open subprocess")
        sys.exit(1)

    process.wait()



processArgs(sys.argv)

if solFile == "":
    printUsage()
    sys.exit(1)

solToBoogie()
check()







    
