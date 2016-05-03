#!/bin/bash

SIZES=("10000000" "100000000" "1000000000")
PROCS=("2" "4" "8" "16" "32")
for SIZE in "${SIZES[@]}"; do
    for THCT in "${PROCS[@]}"; do
        echo "###############################################################"
        ./bin/streamOMP $THCT $SIZE
        echo "###############################################################"
        ./bin/streamTP $THCT $SIZE
        echo "###############################################################"
        ./bin/streamTPx8 $THCT $SIZE
        echo "###############################################################"
        ./bin/streamLFTP $THCT $SIZE
        echo "###############################################################"
        ./bin/streamLFTPx8 $THCT $SIZE
        echo "###############################################################"
        ./bin/streamTP11 $THCT $SIZE
        echo "###############################################################"
        ./bin/streamTP11x2 $THCT $SIZE
    done
done
