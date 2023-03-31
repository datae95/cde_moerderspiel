#!/bin/bash

./shuffle.sh input.csv murderers.csv
./sort.sh input.csv graveyard.csv
./make_victim_list.sh murderers.csv

latexmk -pdf templates/murderers.tex > /dev/null
latexmk -pdf templates/victims.tex > /dev/null
latexmk -pdf templates/graveyard.tex > /dev/null
./merge_lists.sh

mv murder_notes.pdf output/murder_notes.pdf
mv graveyard.pdf output/graveyard.pdf

rm *.aux
rm *.fls
rm *.log
rm *.fdb_latexmk
rm *.pdf
rm victims.csv
rm murderers.csv
rm graveyard.csv