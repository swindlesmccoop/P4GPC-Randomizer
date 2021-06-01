#!/bin/sh
set -e

#randomize function
function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#####################################################################################################################

#im gonna look at these files some time to see if they can be swapped without crashes
#cd battle
#mv battle_pack.bin battle_pack.bin.bak
#mv battle_pack2.bin battle_pack.bin
#mv battle_pack.bin.bak battle_pack2.bin

#mv bsv105.bvp bsv105.bvp.bak
#mv bsv108.bvp bsv105.bvp
#mv bsv105.bvp.bak bsv108.bvp

#####################################################################################################################

cd battle/assist
randomize
cd ..

echo Assistance stuff randomized!

cd boss

#####################################################################################################################
#ignore all of this. this is a fallback in case i test the function and it turns out that it doesn't work like i wanted it to.
#mkdir bin
#mkdir flow
#mkdir bf
#mkdir bed
#mv *.bin bin/
#mv *.bf.flow flow/
#mv *.bf bf/
#mv *.bed bed/
#cd bin
#randomize
#cd ..
#cd flow
#randomize
#cd ..
#cd bf
#randomize
#cd ..
#cd bed
#randomize
#mv *.bed ..
#cd ..
#cd bin
#mv *.bin ..
#cd ..
#cd flow
#mv *.bf.flow ..
#cd ..
#cd bf
#mv *.bf ..
#cd ..
#rm -r bin flow bf bed
#####################################################################################################################

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

echo Cutins randomized!

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

echo Random battle textures randomized!

cd result
mv simple_s.arc simple_s.arc.bak
mv simple_w.arc simple_s.arc
mv simple_s.arc.bak simple_w.arc

cd ..

cd union
randomize
cd ..

echo Other random stuff randomized!