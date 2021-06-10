@echo off

::download and install msys
cd C:/Users/%username%/Downloads
curl https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20210419.exe --output msys.exe

echo.

echo Accepting prompt will open installer. Hit next on every prompt given.
pause
msys.exe

echo Only continue when you are DONE installing the program!
pause
cd ..

::run shell script
curl https://raw.githubusercontent.com/swindlesmccoop/P4GPC-Randomizer/main/install.sh --output C:/Users/%username%/Downloads/install.sh
C:/msys64/msys2.exe chmod +x install.sh

::timeout here so that it can actually chmod and not conflict with command below
timeout /t 30
C:/msys64/msys2.exe sh install.sh

