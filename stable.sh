#!/bin/sh

#PLEASE READ THE README FIRST!!!!!!!!!!!!!

#Run this script at your own risk. I am not responsible for an unplayable experience.

function randomize {
paste <(printf "%s\n" *) <(printf "%s\n" * | shuf) |
  while IFS=$'\t' read -r from to; do mv -- "$from" "$to.new"; done
for f in *.new; do mv -- "$f" "${f%.new}"; done 
}

#Start randomization
