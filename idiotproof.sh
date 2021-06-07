#!/bin/sh
set -e
cd data_e

#makes sure that it's actually data_e and not some other folder
if [[ -d battle ]]
then
    echo "Getting ready for randomization..."
else
    echo No valid data_e dump found! Exiting... && sleep 5 && exit
fi

#tells the system to install/update wget with no prompt to user
yes | pacman -S wget
#wget https://github.com/swindlesmccoop/P4GPC-Randomizer/releases/download/0.9/Release.zip