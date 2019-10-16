AS=arm-none-eabi-as
LD=arm-none-eabi-gcc
OBJCOPY=arm-none-eabi-objcopy

# option -am include macro expansions

# for linker -T to specify linkerscript
# -lXXX to link in library libXXX.a
# -L is also a linker option, searhc paths for -l libraries
# -o to specify output file name

all : objcopy

build/main.o : src/main.s
	${AS} $^ -o build/main.o -mcpu=cortex-m4 -mthumb -g -am -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Isrc

build/main.elf : build/main.o
	$(LD) $^ -T src/linkerscript.ld -o build/main.elf -nostdlib

objcopy : build/main.elf
	$(OBJCOPY) -O binary $^ build/main.bin

#$(OBJCOPY) -j .text -O binary main.elf main.bin

disassemble :
	arm-none-eabi-objdump -d build/main.elf

flash :
	JLinkExe -device STM32F407VG -if swd -speed 4000 -CommanderScript jlinkCommandFile
