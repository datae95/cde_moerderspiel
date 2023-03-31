#!/bin/bash

# Check if the input file exists
if [ ! -f "$1" ]; then
  echo "Input file not found!"
  exit 1
fi

# Read in the data from the input file
data=$(cat "$1")

# Remove the last row
last_row=$(echo "$data" | tail -n 1)
data=$(echo "$data" | sed '$d')

# Insert the last row in the second row
data=$(echo "$data" | sed "2i $last_row")

# Write the modified data to a new file
echo "$data" > victims.csv