@echo off

::mkdir setup
::cd setup
::curl https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20210419.exe --output msys.exe

set /p answer=This will open an installer window. Hit next on every single prompt at the bottom right. Press "Y" if you understand. (Y/N)
   if /i "%answer:~,1%" EQU "Y" goto MSYS
   if /i "%answer:~,1%" EQU "N" exit

:MSYS
::msys.exe

echo Only continue when you are done installing the program!
pause

cd C:/msys64/
msys.exe