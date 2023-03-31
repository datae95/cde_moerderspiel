#!/bin/bash

./shuffle_input.sh input.csv
./make_victim_list.sh murderers.csv
latexmk -pdf murderers.tex
latexmk -pdf victims.tex
./merge_lists.sh

mv murder_notes.pdf output/murder_notes.pdf

rm *.aux
rm *.fls
rm *.log
rm *.fdb_latexmk
rm *.pdf
rm victims.csv
rm murderers.csv