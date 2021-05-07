#!/bin/sh

#PLEASE READ THE README FIRST!!!!!!!!!!!!!

#Run this script at your own risk. I am not responsible for an unplayable experience.
#If you paid for the game on Steam, simply verify file integrity. If you didn't, make a backup first.
#If you don't know how to do this, Google is your friend.

#Begin randomization

function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#Sound randomization

#BGM
cd SND/BGM
randomize

#BGM_E
cd ..
cd BGM_E
randomize

#COMSE can't be replaced yet, right? I'll comment out the code until I'm informed it can be.
#cd ..
#cd COMSE
#randomize

#cd ..
#cd COMSE_E
#randomize

#ROOT
cd ..
cd ROOT
randomize

#ROOT_E
cd ..
cd ROOT_E
randomize

cd ..

#File time

cd mods
cd data00000/battle

mv battle_pack.bin battle_pack.bin.bak
mv battle_pack2.bin battle_pack.bin
mv battle_pack.bin.bak battle_pack2.bin

cd 