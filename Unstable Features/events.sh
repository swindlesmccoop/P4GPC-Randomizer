#!/bin/sh
set -e

#this will randomize all .pm1 files. i have no idea if it will work, so it's going into unstable features for now.
#might break saves.

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd commu/event

for d in */; do
    cd $d
    mkdir pm1/ pm2/ pm3/
    mv *.pm1 pm1/
    mv *.pm2 pm2/
#    mv *.pm3 pm3/
    for d in */; do
        cd $d
        randomize
        cd ..
    done
    randomize
    cd ..
done
mv */* .
cd ..