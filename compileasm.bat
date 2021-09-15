nasm -f bin bootloader.asm -o bootloader.bin
nasm -f bin ExtendedProgram.asm -o ExtendedProgram.bin
copy /b bootloader.bin+ExtendedProgram.bin bootloader.flp
qemu-system-x86_64 -drive format=raw,file=bootloader.flp
pause