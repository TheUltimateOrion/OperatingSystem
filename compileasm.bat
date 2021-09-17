nasm bootloader.asm -f bin -o bootloader.bin

nasm ExtendedProgram.asm -f elf64 -o ExtendedProgram.o

nasm Binaries.asm -f elf64 -o Binaries.o

wsl /usr/local/x86_64elfgcc/bin/x86_64-elf-gcc -Ttext 0x8000 -ffreestanding -mno-red-zone -m64 -c "Kernel.cpp" -o "Kernel.o"

wsl ld -T"link.ld"

copy /b bootloader.bin+Kernel.bin bootloader.flp