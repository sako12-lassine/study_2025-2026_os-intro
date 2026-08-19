#!/bin/bash
LEN=${1:-10}
for i in $(seq 1 $LEN); do
    R=$((RANDOM % 26))
    printf "\\x$(printf "%x" $((97 + R)))"
done
echo ""
