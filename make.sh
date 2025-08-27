
# Kick assembling
java -cp /Applications/KickAssembler/KickAss.jar cml.kickass.KickAssembler main.asm -vicesymbols -odir bin

# Launch VICE (first kill any existing process)
pkill -f xplus4 || true

# Compress to allow
exomizer sfx sys -t 16 -x "inc \$ff19" bin/main.prg -o bin/gb.prg > /dev/null 2>&1

# Start VICE with disk and moncommands
/Applications/vice/xplus4.app/Contents/MacOS/xplus4 -8 Assets/disk.d64 -moncommands bin/main.vs bin/gb.prg