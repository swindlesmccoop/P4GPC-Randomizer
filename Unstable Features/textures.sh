#!/bin/sh

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#fonts and stuff
cd font
mkdir jm
mkdir spr
mv jm_k*.spr jm/
cd jm
randomize
cd ..
mv *.spr spr/
cd spr
randomize
mv *.spr ..
cd ..
cd jm
mv *.spr ..
cd ..
rm -r jm spr

#pictures, though i dont know what they are
cd picture
randomize
cd ..
cd ..

cd model/npc/textures
randomize
cd ..
cd ..
cd ..
