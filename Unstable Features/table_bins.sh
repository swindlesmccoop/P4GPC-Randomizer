#!/bin/sh
set -e

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#make directories
cd field/table
mkdir hbin
mkdir nbin
mkdir etc

#move files to respective directoriesmv h*.bin hbin/
mv n*.bin nbin/
mv *.bin etc/

#randomize all folders
for d in */; do
    cd $d
    randomize
    cd ..
done
mv */*
