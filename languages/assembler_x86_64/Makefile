EXAMPLE_FILE=example

e1:
	@nasm -f elf64 1_${EXAMPLE_FILE}.asm
	@gcc 1_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e2:
	@nasm -f elf64 2_${EXAMPLE_FILE}.asm
	@gcc 2_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e3:
	@nasm -f elf64 3_${EXAMPLE_FILE}.asm
	@gcc 3_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e4:
	@nasm -f elf64 4_${EXAMPLE_FILE}.asm
	@gcc 4_${EXAMPLE_FILE}.o -no-pie
	@./a.out hello world in assembler with arguments

e5:
	@nasm -f elf64 5_${EXAMPLE_FILE}.asm
	@gcc 5_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e6:
	@nasm -f elf64 6_${EXAMPLE_FILE}.asm
	@gcc 6_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e7:
	@nasm -f elf64 7_${EXAMPLE_FILE}.asm
	@gcc 7_${EXAMPLE_FILE}.o -no-pie
	@./a.out

e8:
	@nasm -f elf64 8_${EXAMPLE_FILE}.asm
	@gcc 8_${EXAMPLE_FILE}.o -no-pie
	@./a.out

clean:
	@rm -f *.o a.out
