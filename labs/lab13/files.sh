#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <create|delete> <N>"
    echo "  create N - create N files (1.tmp, 2.tmp, ... N.tmp)"
    echo "  delete N - delete files 1.tmp to N.tmp"
    exit 1
fi

ACTION=$1
N=$2

if [ "$ACTION" = "create" ]; then
    for i in $(seq 1 $N); do
        touch "$i.tmp"
        echo "Created $i.tmp"
    done
elif [ "$ACTION" = "delete" ]; then
    for i in $(seq 1 $N); do
        if [ -f "$i.tmp" ]; then
            rm "$i.tmp"
            echo "Deleted $i.tmp"
        fi
    done
else
    echo "Invalid action. Use 'create' or 'delete'"
    exit 1
fi
