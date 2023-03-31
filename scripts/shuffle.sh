#!/bin/bash

# Check if input file is provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 input.csv output.csv"
  exit 1
fi

# Extract the first line of the CSV file
head -n 1 "$1" > "$2"

# Shuffle the remaining rows of the CSV file
tail -n +2 "$1" | shuf >> "$2"
