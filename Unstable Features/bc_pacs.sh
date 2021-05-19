#!/bin/sh

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#we're not gonna touch the bin or se file, not even sure what they do but don't want to randomize stuf when i have no idea the contents of the archive
cd model/pack
mkdir temp
mv *.bin /temp
mv *.se /temp

#moving the em pacs into their own folder so that i can separate bc and em pacs and hopefully bring rate of crashes down
mkdir em
mv em*.pac /em

#randomize pack and em
randomize
cd em
randomize

#bring files back into pack folder
mv *.pac ..
cd ..
cd temp
mv *.bin ..
mv *.se ..
cd ..

#clean up temp folders
rm -r /temp
rm -r /em
