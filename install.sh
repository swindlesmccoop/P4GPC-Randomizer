#!/bin/sh
set -e

#make username variable by assigning "whoami" output to it
username=$(whoami)
echo Please drag and drop your data_e directory here and press enter:
read dir
cd "$dir"

#makes sure that it's actually data_e and not some other folder
echo Checking validity of dump...
if [[ -d battle ]]
then
    echo Getting ready for randomization...
else
    echo No valid data_e dump found! Exiting... && sleep 5 && exit
fi

#tells the system to install/update git with no prompt or output to user
yes | pacman -S git > /dev/null
git clone https://github.com/swindlesmccoop/P4GPC-Randomizer.git

#clean up unneeded files
cd P4GPC-Randomizer
rm install.sh
cd 'Unstable Features'
mv *.sh ..
cd ..
mv *.sh ..
cd ..
rm -rf P4GPC-Randomizer

#execute all scripts
cd ..
find data_e/ -maxdepth 1 -type f -executable -name '*.sh' -exec {} \;
