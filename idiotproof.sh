#!/bin/sh
set -e

echo "Please drag and drop your data_e dump onto here":
read dump

cd "$dump"

if [[ -d battle ]]
then
    echo "Getting ready for randomization..."
fi

pacman -S wget
wget https://github.com/swindlesmccoop/P4GPC-Randomizer/releases/download/0.9/Release.zip