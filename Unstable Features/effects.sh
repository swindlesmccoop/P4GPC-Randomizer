#!/bin/sh

#this is playing with shaders - expect things to get crazy

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd shader
randomize
cd ..

cd battle/bike
randomize
cd ..

cd effect
randomize
cd ..

cd union
randomize
cd ..

cd system/tool/effect
randomize
cd ..
