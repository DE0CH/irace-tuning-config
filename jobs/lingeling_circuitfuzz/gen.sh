#!/bin/sh -e

export IRACE_TUNING_PATH="${IRACE_TUNING_PATH:-../irace-tuning3}"

"$IRACE_TUNING_PATH/tools/make_job_sh.py" \
    --irace-tuning-run-dir '${IRACE_TUNING_RUN_DIR:-runs/lingeling_circuitfuzz}' \
    --train-instances-file jobs/lingeling_circuitfuzz/instances.txt \
    --test-instances-dir Instances-test \
    --test-instances-file jobs/lingeling_circuitfuzz/instances-test.txt \
    --target-runner '${IRACE_TUNING_PATH}/target-runner.py' \
    --log-file '${IRACE_TUNING_RUN_DIR}/train/irace.Rdata' \
    --parameter-file jobs/parameters.txt \
    --max-experiments 3000 --seed 123 \
    --parallel '${IRACE_TUNING_NCPU:-1}' \
