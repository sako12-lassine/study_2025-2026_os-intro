#!/bin/bash
./number
case $? in
    0) echo "The number is zero" ;;
    1) echo "The number is positive" ;;
    2) echo "The number is negative" ;;
    *) echo "Unknown exit code" ;;
esac
