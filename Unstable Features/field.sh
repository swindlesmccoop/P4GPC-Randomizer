#!/bin/sh

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#discrimination and randomization function
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

cd field
poggers

cd grmd
randomize
cd ..

cd lmap_spr
randomize
cd ..

cd map
randomize
cd ..

cd pack
mkdir rmd
mkdir arc
mv *_rmd.arc rmd/
mv *.arc arc/
cd rmd
randomize
cd ..
cd arc
randomize
cd ..
cd ..

#go into the field model directory
#not touching kasa_toumei.amd until i know what it is
cd model/field
mv kasa_toumei.amd ..
randomize
cd ..
mv kasa_toumei.amd /field

#npc models
#not sure if the gmo and mds files are relevant so im gonna move them into their own folder
mkdir temp
mv *.gmo /temp
mv *.mds /temp
randomize
cd temp
mv *.gmo ..
mv *.mds ..
