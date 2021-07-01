#!/bin/sh
set -e

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd battle

#####################################################################################################################
#im gonna look at these files some time to see if they can be swapped without crashes
#cd battle
#mv bsv105.bvp bsv105.bvp.bak
#mv bsv108.bvp bsv105.bvp
#mv bsv105.bvp.bak bsv108.bvp
#####################################################################################################################

FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    mv battle_pack.bin battle_pack.bin.bak
    mv battle_pack2.bin battle_pack.bin
    mv battle_pack.bin.bak battle_pack2.bin
else
    sleep 0.0000000001 #sleep a very short amount of time
fi

cd assist
randomize
cd ..

echo Assistance stuff randomized!

cd boss
randomize
cd ..

echo Boss stuff randomized!

#cutins
cd cutin/boko/koma2
randomize
cd ..

cd koma3
randomize
cd ..

cd koma4
randomize
cd ..
cd ..

cd syoudaku
randomize
cd ..

cd syoukan
randomize
cd ..

cd tokusyu
randomize
cd ..
cd ..

echo Cutins randomized!

cd result
mv simple_s.arc simple_s.arc.bak
mv simple_w.arc simple_s.arc
mv simple_s.arc.bak simple_w.arc

echo Result textures randomized!

cd ..
cd union
randomize
cd ..

echo Other random stuff randomized!