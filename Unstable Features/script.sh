#!/bin/sh

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#im gonna separate the files based on their names so that i can prevent crashes
cd commu/script
mkdir chara
mkdir dungeon
mkdir random
mkdir nc
mkdir fc
mkdir bin
mkdir bmd
mkdir comu
mkdir comumsg
mkdir sys

mv aegis.bf amada.bf aragaki.bf fuka.bf junpei.bf kanji.bf kitsune.bf koromaru.bf kuma.bf mituru.bf naoto.bf rise.bf sanada.bf tae.bf yousuke.bf yukari.bf yukiko.bf chara/
