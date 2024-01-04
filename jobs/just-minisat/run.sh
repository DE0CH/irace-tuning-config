#!/bin/sh

# Run this script with cwd in the project root folder

IRACE_TUNING_RUN_DIR=runs/just-minisat $(Rscript -e "cat(system.file(package='irace', 'bin', mustWork=TRUE))")/irace \
    --train-instances-file jobs/just-minisat/instances.txt \
    --test-instances-dir Instances-test \
    --test-instances-file jobs/just-minisat/instances-test.txt \
    --instance-file jobs/just-minisat/instances.txt \
    --target-runner ${IRACE_TUNING_TARGET_RUNNER:-../irace-tuning3/target-runner.py} \
    --parameter-file jobs/parameters.txt \
    --max-experiments 3000 --seed 123
