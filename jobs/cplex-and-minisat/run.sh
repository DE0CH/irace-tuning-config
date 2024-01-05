#!/bin/sh

# Run this script with cwd in the project root folder

IRACE_TUNING_RUN_DIR=runs/cplex-and-minisat $(Rscript -e "cat(system.file(package='irace', 'bin', mustWork=TRUE))")/irace \
    --train-instances-file jobs/cplex-and-minsat/instances.txt \
    --test-instances-dir Instances-test \
    --test-instances-file jobs/cplex-and-minisat/instances-test.txt \
    --target-runner ${IRACE_TUNING_TARGET_RUNNER:-../irace-tuning3/target-runner.py} \
    --parameter-file jobs/parameters.txt \
    --max-experiments 5000 --seed 123 \
    --parallel ${IRACE_TUNING_NCPU:-1}
