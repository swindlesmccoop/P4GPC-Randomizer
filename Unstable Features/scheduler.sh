#!/bin/sh
set -e

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#discrimination + randomization function
function poggers {
for f in `find . -type f`; do
    mkdir -p ${f##*.}
    mv $f ${f##*.}
done
for d in */; do
    cd $d
    randomize
    cd ..
done
mv */* .
}

cd scheduler
poggers
