#!/bin/bash

./shuffle_input.sh input.csv
./make_victim_list.sh murderers.csv
latexmk -pdf murderers.tex
latexmk -pdf victims.tex
./merge_lists.sh

mv murder_notes.pdf output/murder_notes.pdf