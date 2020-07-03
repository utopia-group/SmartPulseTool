#!/bin/bash

rm -rf benchmarks
mkdir -p benchmarks

for bench in `ls -d properties/*`
do
    bench_name=`basename ${bench}`
    
    mkdir -p benchmarks/${bench_name}/no-callback
    mkdir -p benchmarks/${bench_name}/single-callback
    mkdir -p benchmarks/${bench_name}/inf-callback
    
    for f in `ls ${bench}`
    do
        cp ${bench}/${f} benchmarks/${bench_name}/no-callback/${f}-${bench_name}.bpl
        cat attacker-models/no-callback/${bench_name}.bpl >> benchmarks/${bench_name}/no-callback/${f}-${bench_name}.bpl

        cp ${bench}/${f} benchmarks/${bench_name}/single-callback/${f}-${bench_name}.bpl
        cat attacker-models/single-callback/${bench_name}.bpl >> benchmarks/${bench_name}/single-callback/${f}-${bench_name}.bpl

        cp ${bench}/${f} benchmarks/${bench_name}/inf-callback/${f}-${bench_name}.bpl
        cat attacker-models/inf-callback/${bench_name}.bpl >> benchmarks/${bench_name}/inf-callback/${f}-${bench_name}.bpl
    done
done
