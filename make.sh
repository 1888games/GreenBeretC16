
# Kick assembling
java -cp /Applications/KickAssembler/KickAss.jar cml.kickass.KickAssembler main.asm -vicesymbols -odir bin

# Launch VICE (first kill any existing process)
pkill -f xplus4 || false

# Compress to allow
./exomizer sfx sys -t 16 -x "inc \$ff19" bin/main.prg -o bin/gb.prg >nul 2>&1

/Applications/vice/bin/xplus4 -silent -8 ./Assets/disk.d64 -moncommands ./bin/main.vs ./bin/gb.prg
#/Applications/vice/xplus4.app/Contents/MacOS/xplus4 -debug -verbose bin/gb.prg


