# Persona 4 Golden PC Edition Randomizer

### Why this exists
Randomizers are fun, and there's not really one for P4G on Windows that really randomizes everything, just encounters.

### Credits
- [ShrineFox](https://github.com/shrinefox) for the original randomizer that gave me the inspiration to make my own
- [Pioziomgames](https://github.com/Pioziomgames) for a tree listing of data_e
- [Furkan](https://github.com/FMudanyali) for helping with my stupid questions
- [Natano](https://github.com/natano) for giving me the "poggers" function, seriously - look at the scripts for yourself, you'll find it (I named it, though)
- [TGE](https://github.com/TGEnigma) for the mod loader and Preapp File
- [Tekka](https://github.com/TekkaGB) for testing scripts and helping with changes
- The collective of the P4G Modding Discord (at least, that's what it still is in my heart)

## Instructions

### Prerequisites
- A Windows machine (if you use Linux, you don't need me to tell you what to do)
- A version of Persona 4 Golden [set up for modding](https://gamebanana.com/tuts/13379)
- Running [this installer](https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.ps1) by downloading it and right clicking on it and pressing `Run with PowerShell`
- [TGE's Preapp File](https://github.com/TGEnigma/preappfile/releases/latest/)

### Level 1 Crook Steps (*Noobs and Beginners should follow this!*)
1. Dump data_e into any folder you would like using Preapp File by dropping `data_e.cpk` from your P4G install onto the `preappfile.exe`, NOT INTO THE FOLDER, ON TOP OF THE EXE FILE
2. Make sure the dump you created is named `data_e` and move it to your Documents folder
3. Download [`install.bat`](https://raw.githubusercontent.com/swindlesmccoop/P4GPC-Randomizer/main/install.bat) by following the previous link, pressing `Ctrl`+`S`, and saving it as `install.bat`, NOT `install.bat.txt`
4. Go to where you downloaded the file and double click it
5. Follow the instructions that it gives you
6. Put the final output (when all of the black windows have disappeared) into wherever you load your mods from (Game install's `mods` folder, Aemulus, Mod Compendium, etc.)

### Level 100 Mafia Boss Steps ("Advanced")
1. Dump data_e into any folder you would like using Preapp File
2. Download and install [MSYS](https://msys2.org/)
3. Clone this repo (use `git clone https://github.com/swindlesmccoop/P4GPC-Randomizer.git` in MSYS for extra points 😃)
4. `cd` into your data_e directory (in MSYS, not Command Prompt)
5. Move the `stable.sh` script into your extracted data_e directory
6. Mark `stable.sh` as executable by performing the command `chmod +x stable.sh`
7. Run `sh -e stable.sh`
8. Move any unstable scripts into the data_e directory
9. Peform steps 6 and 7 on each script that you desire (can easily be done with `chmod +x *.sh` and `sh -e *.sh`)
10. Move the randomized data_e into your mods directory.

## Questions you may have

### What are unstable features?
Features that might crash the game sometimes or have not been tested enough to have been added to the stable script.
### Does this work on Vita?
lol u wish sucker
### Why did you shill for noobs by creating installer scripts?
I had nothing else to do, and I *guess* it will expand the range of people who can use the randomizer without any knowledge of computers as well.
