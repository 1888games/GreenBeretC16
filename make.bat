echo off

rem Kick assembling
java -cp c:\C64\Tools\KickAssembler\KickAss.jar cml.kickass.KickAssembler main.asm -vicesymbols -odir bin

rem Launch vice
taskkill /im "xplus4.exe"

rem Compress to allow
exomizer sfx sys -t 16 -x "inc $ff19" bin/main.prg -o ./bin/gb.prg >nul 2>&1


start "" C:\C64\Tools\Vice\xplus4.exe -8 Assets/disk.d64 -moncommands bin/main.vs bin/gb.prg

exit /b
