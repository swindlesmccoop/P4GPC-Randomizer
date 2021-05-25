#!/bin/sh
#i have no idea if any of these files are used, but we're just gonna roll with it

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd sound/adx2/comse/snd04_comse
randomize
