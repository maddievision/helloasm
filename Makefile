all: hello helloraw helloname

hello: hello.asm
	nasm -f macho64 hello.asm
	gcc -o hello hello.o

helloraw: helloraw.asm
	nasm -f macho64 helloraw.asm
	ld -macosx_version_min 10.8.0 -lSystem -o helloraw -lSystem helloraw.o

clean:
	rm hello.o hello
	rm helloraw.o helloraw
	rm helloname.o helloname

helloname: helloname.asm
	nasm -f macho64 helloname.asm
	gcc -o helloname helloname.o
