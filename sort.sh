#!/bin/bash

# Check if a file name was passed as an argument
if [ $# -ne 2 ]; then
    echo "Usage: $0 input.csv output.csv"
    exit 1
fi

# Check if the file exists
if [ ! -f $1 ]; then
    echo "File not found"
    exit 1
fi

# Sort the file (skipping the first line)
{ head -n 1 $1; tail -n +2 $1 | sort -t ',' -k1,1 -k2n --field-separator=',' --key=2; } > "$2"

echo "File sorted successfully"
