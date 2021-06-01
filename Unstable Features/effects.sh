#!/bin/sh
set -e

#the shaders are unused but who cares

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd shader
randomize
cd ..
echo Unused vita shaders randomized!

cd battle/bike
randomize
cd ..
echo Bike(?) randomized!

cd effect
randomize
cd ..
echo Battle effects randomized!

cd union
randomize
cd ..
echo Union(?) randomized!

cd system/tool/effect
randomize
echo System tool effects randomized!

cd sample
randomize
echo All effects randomized!