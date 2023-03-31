#!/bin/bash

# Check if input file is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 input.csv"
  exit 1
fi

# Extract the first line of the CSV file
head -n 1 "$1" > murderers.csv

# Shuffle the remaining rows of the CSV file
tail -n +2 "$1" | shuf >> murderers.csv
