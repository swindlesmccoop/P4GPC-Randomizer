@echo off

::download and install msys
cd C:/Users/%username%/Downloads
curl https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20210419.exe --output msys.exe

set /p answer=This will open an installer window. Hit next on every single prompt at the bottom right. Press "Y" if you understand. (Y/N)
   if /i "%answer:~,1%" EQU "Y" goto MSYS
   if /i "%answer:~,1%" EQU "N" exit

:MSYS
msys.exe

echo Only continue when you are DONE installing the program!
pause
cd ..

cd C:/msys64/
curl https://raw.githubusercontent.com/swindlesmccoop/P4GPC-Randomizer/main/idiotproof.sh --output idiotproof.sh
msys2.exe chmod +x idiotproof.sh
msys2.exe sh idiotproof.sh