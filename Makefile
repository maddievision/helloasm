hello: hello.asm
	nasm -f macho64 hello.asm
	gcc -o hello hello.o

helloraw: helloraw.asm
	nasm -f macho64 helloraw.asm
	ld -macosx_version_min 10.14.0 -lSystem -o helloraw -lSystem helloraw.o

clean:
	rm hello.o hello
	rm helloraw.o helloraw
