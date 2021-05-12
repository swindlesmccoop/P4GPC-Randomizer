#!/bin/sh

#this will randomize all .pm1 files. i have no idea if it will work, so it's going into unstable features for now.
#i'm also too lazy to verify that all of the folder names here exist.

function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

cd commu/event/e010
randomize
cd ..

cd e050
randomize
cd ..

cd e070
randomize
cd ..

cd e080
randomize
cd ..

cd e090
randomize
cd ..

cd e100
randomize
cd ..

cd e110
randomize
cd ..

cd e120
randomize
cd ..

cd e130
randomize
cd ..

cd e140
randomize
cd ..

cd e150
randomize
cd ..

cd e160
randomize
cd ..

cd e170
randomize
cd ..

cd e180
randomize
cd ..

cd e190
randomize
cd ..

cd e200
randomize
cd ..

cd e210
randomize
cd ..

cd e220
randomize
cd ..

cd e230
randomize
cd ..

cd e240
randomize
cd ..

cd e250
randomize
cd ..

cd e260
randomize
cd ..

cd e270
randomize
cd ..

cd e280
randomize
cd ..

cd e290
randomize
cd ..

cd e300
randomize
cd ..

cd e310
randomize
cd ..

cd e320
randomize
cd ..

cd e330
randomize
cd ..

cd e340
randomize
cd ..

cd e350
randomize
cd ..

cd e360
randomize
cd ..

cd e370
randomize
cd ..

cd e380
randomize
cd ..

cd e390
randomize
cd ..

cd e400
randomize
cd ..

cd e410
randomize
cd ..

cd e420
randomize
cd ..

cd e430
randomize
cd ..

cd e440
randomize
cd ..

cd e450
randomize
cd ..

cd e460
randomize
cd ..

cd e470
randomize
cd ..

cd e480
randomize
cd ..

cd e490
randomize
cd ..

cd e500
randomize
cd ..

cd e510
randomize
cd ..

cd e520
randomize
cd ..

cd e530
randomize
cd ..

cd e540
randomize
cd ..

cd e550
randomize
cd ..

cd e560
randomize
cd ..

cd e570
randomize
cd ..

cd e580
randomize
cd ..

cd e590
randomize
cd ..

cd e600
randomize
cd ..

cd e610
randomize
cd ..

cd e620
randomize
cd ..

cd e630
randomize
cd ..

cd e640
randomize
cd ..

cd e650
randomize
cd ..

cd e660
randomize
cd ..

cd e670
randomize
cd ..

cd e680
randomize
cd ..

cd e690
randomize
cd ..

cd e700
randomize
cd ..

cd e710
randomize
cd ..

cd e720
randomize
cd ..

cd e730
randomize
cd ..

cd e740
randomize
cd ..

cd e750
randomize
cd ..

cd e760
randomize
cd ..

cd e770
randomize
cd ..

cd e780
randomize
cd ..

cd e790
randomize
cd ..

cd e800
randomize
cd ..

cd e810
randomize
cd ..

cd e820
randomize
cd ..

cd e830
randomize
cd ..

cd e840
randomize
cd ..

cd e850
randomize
cd ..

cd e860
randomize
cd ..

cd e870
randomize
cd ..

cd e880
randomize
cd ..

cd e890
randomize
cd ..

cd e900
randomize
cd ..
