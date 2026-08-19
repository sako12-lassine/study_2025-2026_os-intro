#!/bin/bash

INPUT_FILE=""
OUTPUT_FILE=""
PATTERN=""
CASE_SENSITIVE=""
SHOW_NUMBERS=""

while getopts "i:o:p:Cn" opt; do
    case $opt in
        i) INPUT_FILE="$OPTARG" ;;
        o) OUTPUT_FILE="$OPTARG" ;;
        p) PATTERN="$OPTARG" ;;
        C) CASE_SENSITIVE="-i" ;;
        n) SHOW_NUMBERS="-n" ;;
        *) echo "Usage: $0 -i <input> -o <output> -p <pattern> [-C] [-n]"; exit 1 ;;
    esac
done

if [ -z "$INPUT_FILE" ] || [ -z "$PATTERN" ]; then
    echo "Error: input file and pattern are required"
    exit 1
fi

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: input file $INPUT_FILE does not exist"
    exit 1
fi

if [ -n "$OUTPUT_FILE" ]; then
    grep $CASE_SENSITIVE $SHOW_NUMBERS "$PATTERN" "$INPUT_FILE" > "$OUTPUT_FILE"
    echo "Result saved to $OUTPUT_FILE"
else
    grep $CASE_SENSITIVE $SHOW_NUMBERS "$PATTERN" "$INPUT_FILE"
fi
