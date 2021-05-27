# SmartPulse
This is the main repository for SmartPulse, a tool for verifying temporal properties of Smart Contracts. SmartPulse is comprised of two tools. The first, a modified version of VeriSol, translates the Smart Contract from Solidity to Boogie. The second, a modified version of Ultimate Automizer, consumes the translated contract and verifies the given property. This repository contains SmartPulse's version of Ultimate Automizer and the modified version of VeriSol can be found [here](https://github.com/utopia-group/verisol).

## Usage
```
./SmartPulse.py [args] contract.sol contractName spec.spec 

Behavioral Models: 
  -modArith                   | Model integers using modular arithmetic rather than as mathematical integers 
  -instrumentGas              | Instrument gas usage using model (assumes model comes from solc) 
Adversary Models: 
  -noReentrancy               | Assume attacker cannot make reentrant calls 
  -singleCallback             | Assume attacker will only make one reentrant call 
  -powerfulAdversary          | Assume attacker can make arbitrary reentrant calls 
Harness Modifiers: \
  -tnxsOnFields               | Allow transactions to be issued to contracts in fields of main contract 
  -checkPrePost:<fn1,fn2,...> | Check pre/post conditions of the specified functions 
```
#### Example
```
./SmartPulse.py LockedFunds.sol Wallet LockedFunds.spec
```

## SmartLTL Specification Language
SmartLTL is an ltl-like language specific to Smart Contracts. We classify it as LTL-like because SmartLTL is the same as LTL with the exception of its atoms. Here, we will provide information about the SmartLTL specification language, but some knowledge of LTL is assumed.
### Specification Structure
A SmartLTL specification has 3 parts: (1) the fresh variable declaration, (2) the fairness property and (3) the property to verify. Here, we will briefly discuss each part of the specification.
#### Fresh Variable Declaration
#### Fairness Property
#### Verification Property
### Atoms
#### started(f, &#968;)
#### finished(f, &#968;)
#### reverted(f, &#968;)
#### sent(&#968;)
This is syntactic sugar for started(send, &#968;) or started(transfer, &#968;).

### Constraints on Atoms
### Examples

## Building
SmartPulse requires the modified version of Ultimate Automizer and VeriSol be built. To build VeriSol, follow the instructions in [this repository](https://github.com/utopia-group/verisol). As the build process for Ultimate automizer is complex, we provide pre-built binaries. We recommend using these binaries rather than building Ultimate Automizer from scratch.

### Building from Pre-build Binaries

#### Requirements
 * Z3
 * Java JDK (1.8)
 * [VeriSol](https://github.com/utopia-group/verisol)

#### Instructions
1. Build and install [VeriSol](https://github.com/utopia-group/verisol).
2. Download a pre-built binary from [here](https://github.com/utopia-group/SmartPulseTool/releases).

### Building from Scratch

#### Requirements
 * Z3
 * Java JDK (1.8)
 * [VeriSol](https://github.com/utopia-group/verisol)
 * Maven 3.0
 * Eclipse IDE for RCP and RAP Developers 2019-09 or older

#### Instructions
1. Build and install [VeriSol](https://github.com/utopia-group/verisol).
2. Follow [these](https://github.com/ultimate-pa/ultimate/wiki/Installation/2979de9af052431d7923beeb8a77dacc23d5e528) instructions to build Ultimate Automizer.
3. Run createSmartPulse.sh

## Troubleshooting
#### Cannot run program "ltl2ba"
This occurs when ltl2ba cannot be found or executed. To ensure ltl2ba can be executed, run the ltl2ba executable in the base SmartPulse directory. If it does not execute, build a fresh version of ltl2ba from [here](http://www.lsv.fr/~gastin/ltl2ba/download.php). If ltl2ba can be executed, it is likely that you are executing SmartPulse from outside the base directory. If this is the case, edit line 11 of the settings.epf file like so:
```
/instance/de.uni_freiburg.informatik.ultimate.ltl2aut/Path\ to\ LTL*BA\ executable\ (LTL2BA,\ LTL3BA)=/path/to/executable/ltl2ba
```
