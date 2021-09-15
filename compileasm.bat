nasm bootloader.asm -f bin -o bootloader.bin

nasm ExtendedProgram.asm -f elf64 -o ExtendedProgram.o

wsl /usr/local/x86_64elfgcc/bin/x86_64-elf-gcc -ffreestanding -mno-red-zone -m64 -c "Kernel.cpp" -o "Kernel.o"

wsl ld -o Kernel.tmp -Ttext 0x7e00 ExtendedProgram.o Kernel.o

wsl objcopy -O binary Kernel.tmp Kernel.bin

copy /b bootloader.bin+Kernel.bin bootloader.flp
qemu-system-x86_64 -drive format=raw,file=bootloader.flp
pause