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

cd event

for d in */; do
    cd $d
    echo Making temp directories...
    mkdir pm1/ pm2/ pm3/
    echo Moving files...
    mv *.pm1 pm1/
    mv *.pm2 pm2/
    mv *.pm3 pm3/
    for d in */; do
        cd $d
        cwd=$(pwd)
        randomize
        echo Randomizing $cwd...
        cd ..
    done
    mv */* .
    echo Cleaning up temp directories...
    rm -rf pm1/ pm2/ pm3/
    cd ..
done