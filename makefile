squares: squares.o
	ld -o squares squares.o
squares.o: squares.asm
	nasm -f elf64 -g -F stabs squares.asm -l squares.lst
clean:
	rm -f *.o *.lst squares
