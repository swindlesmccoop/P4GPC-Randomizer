#!/bin/sh

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#im gonna separate the files based on their names so that i can prevent crashes
cd field/script

#make directories for randomization
mkdir bmd
mkdir chara
mkdir comu
mkdir comumsg
mkdir dungeon
mkdir f0
mkdir fc
mkdir n0
mkdir nm
mkdir ns
mkdir nsbmd
mkdir random
mkdir sys

#random
mv costume.bf random/
mv npccomu.bf random/
mv village.bf random/
mv lmap.bf random/

#chara
mv aegis.bf amada.bf aragaki.bf fuka.bf junpei.bf kanji.bf kitsune.bf koromaru.bf kuma.bf mituru.bf naoto.bf rise.bf sanada.bf tae.bf yousuke.bf yukari.bf yukiko.bf chara/

#comu
mv comu*.bf comu/

#comumsg
mv comumsg*.bin comumsg/

#dungeon
mv dungeon.bf dungeon/
mv dungeon*.bf dungeon/

#f0xx
mv f0*.bf f0/

#fc
mv fc*.bf fc/

#n0
mv n0*_0*.bf n0/

#nm
mv nm0*_0*.bmd nm/

#ns bf and bmds
mv ns0*_*.bf ns/
mv ns0*_*.bmd nsbmd/

#new randomize function?
for d in */; do
    cd $d
    randomize
    cd ..
done
mv */* .
