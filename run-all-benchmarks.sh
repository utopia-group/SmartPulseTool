#!/bin/bash

for b in `find benchmarks/evalBenchmarks/benchmarks/ -name *.bpl`
do
    echo "Running ${b}"
    ./SmartPulse/SmartPulse.sh ${b} >& ${b}-log.txt
done
