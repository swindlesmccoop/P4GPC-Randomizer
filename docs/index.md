# Persona 4 Golden PC Edition Randomizer

### Why this exists
Randomizers are fun, and there's not really one for P4G on Windows that really randomizes everything, just encounters.

### Credits
- [ShrineFox](https://github.com/shrinefox) for the original randomizer that gave me the inspiration to make my own
- [Pioziomgames](https://github.com/Pioziomgames) for a tree listing of data_e
- [Furkan](https://github.com/FMudanyali) for helping with my stupid questions
- [Natano](https://github.com/natano) for giving me the "poggers" function, seriously - look at the scripts for yourself, you'll find it (I named it, though)
- [TGE](https://github.com/TGEnigma) for the mod loader and Preapp File
- [Tekka](https://github.com/TekkaGB) for testing the stable script and making me change something major
- The collective of the P4G Modding Discord (at least, that's what it still is in my heart)

## Instructions

### Prerequisites
- A Windows machine (if you use Linux, you're probably smart enough how to use this for yourself)
- Basic knowledge of using a bash shell
- [MSYS](https://www.msys2.org/)
- A version of Persona 4 Golden [set up for modding](https://gamebanana.com/tuts/13379)
- [TGE's Preapp File](https://github.com/TGEnigma/preappfile/releases/latest/)

### Level 1 Crook Steps
1. Dump data_e into any folder you would like using Preapp File by dropping `data_e.cpk` from your P4G install onto the `preappfile.exe`
2. Make sure the folder is named `data_e` and move it to the root of your C:/ drive
3. Download [`idiotproof.bat`](https://raw.githubusercontent.com/swindlesmccoop/P4GPC-Randomizer/main/idiotproof.bat) by following the previous link, pressing `Ctrl`+`S`, and saving it as `idiotproof.bat`, NOT `idiotproof.bat.txt`
4. Go to where you downloaded the file and double click it
5. Follow the instructions that it gives you
6. Put the final output (when all of the black windows have disappeared) into wherever you load your mods from (`/Day/mods/`, Aemulus, Mod Compendium, etc.)

### Level 100 Mafia Boss Steps
1. Dump data_e into any folder you would like using Preapp File
2. Clone this repo
3. Open MSYS
4. `cd` into your data_e directory
5. Move the `stable.sh` script into your extracted data_e directory
6. Mark `stable.sh` as executable by performing the command `chmod +x stable.sh`
7. Run `sh -e stable.sh`
8. Move any unstable scripts into the data_e directory
9. Peform steps 6 and 7 on each script that you desire (can easily be done with `chmod +x *.sh` and `sh *.sh`)
10. Move the randomized data_e into your mods directory.

## Questions you may have

### What are unstable features?
Features that might crash the game sometimes or have not been tested enough to have been added to the stable script.

### Does this work on Vita?
lol u wish sucker
