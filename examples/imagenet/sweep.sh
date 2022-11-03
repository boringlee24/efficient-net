#!/bin/bash

CASES="b7" #"b3 b4 b5 b6 b7"
BATCH=32

for CASE in $CASES
do
    echo "running efficientnet-${CASE}"
    python main.py data -e -a efficientnet-${CASE} --pretrained --gpu 0 --batch-size $BATCH &&
    sleep 30
done
