java -cp /Applications/KickAssembler/KickAss.jar cml.kickass.KickAssembler main.asm -vicesymbols -odir "./bin"
 # pkill -f xplus4 || false
./exomizer sfx sys -t 16 -x "inc \$ff19" bin/main.prg -o bin/gb.prg 
/Applications/vice/bin/xplus4 -silent -8 ./Assets/disk.d64 bin/gb.prg



