#!/bin/bash

./scripts/shuffle.sh input.csv murderers.csv
./scripts/sort.sh input.csv graveyard.csv
./scripts/make_victim_list.sh murderers.csv

latexmk -pdf templates/murderers.tex > /dev/null
latexmk -pdf templates/victims.tex > /dev/null
latexmk -pdf templates/graveyard.tex > /dev/null
./scripts/merge_lists.sh

mv graveyard.pdf output/graveyard.pdf

rm *.aux
rm *.fls
rm *.log
rm *.fdb_latexmk
rm *.pdf
rm victims.csv
rm murderers.csv
rm graveyard.csv