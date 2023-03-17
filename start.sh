#!/bin/sh

SECONDS=${SECONDS_TO_RUN:-10}
CODE=${EXIT_CODE:-0}

if [[ $CODE -lt 0 || $CODE -gt 255 ]]; then
    echo 'Please set a number between 0 and 255 for the exit code (EXIT_CODE)'
    exit 1
fi

if [[ $SECONDS -le 0 ]]; then
    echo 'Please set a number over 0 for seconds to run (SECONDS_TO_RUN)'
    exit 1
fi

for i in `seq 1 $SECONDS`
do
  echo "$(date -u): Log item $i"
  sleep 1
done 

exit "$CODE"