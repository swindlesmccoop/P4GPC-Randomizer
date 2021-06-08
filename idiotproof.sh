#!/bin/sh
set -e
cd /c/data_e

#makes sure that it's actually data_e and not some other folder
if [[ -d battle ]]
then
    echo "Getting ready for randomization..."
else
    echo No valid data_e dump found! Exiting... && sleep 5 && exit
fi

#tells the system to install/update git with no prompt or output to user
yes | pacman -S git > temp.txt
rm temp.txt
git clone https://github.com/swindlesmccoop/P4GPC-Randomizer.git

cd P4GPC-Randomizer
rm idiotproof.sh
cd 'Unstable Features'
mv *.sh ..
cd ..
mv *.sh ..
cd ..
rm -rf P4GPC-Randomizer

chmod +x *.sh
sh *.sh
