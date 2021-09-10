#!/bin/sh
set -e

#PLEASE READ THE README FIRST!!!!!!!!!!!!!

#Run this script at your own risk. I am not responsible for an unplayable experience (or accidentally screwing up part of your OS. Sorry, Tekka.)

function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#bustups and stuff

cd bustup
randomize
cd ..

cd camp/bustup
randomize
cd ..

cd persona
randomize
cd ../..

cd card/arcana
randomize
cd ..

cd misc
randomize
cd ..

cd persona
randomize
cd ..

cd sarcana
randomize
cd ../..

cd commu/bustup
randomize
cd ..

echo Bustups randomized!

cd card
randomize
cd ..
cd ..

echo Card images randomized!

#we should be back inside data_e now

cd field/lmap_spr
randomize
cd ..
cd ..

echo Small map sprites randomized!
