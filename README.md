# helloasm

very simple hello, world in x86_64 (aka, x64) assembly for macOS

## building

you'll need nasm and the [Xcode Command Line Tools](https://macpaw.com/how-to/install-command-line-tools).

to install nasm:

```
$ brew install nasm
```

then you can build the executables!

```
$ make
```

## running

hello, world using printf

```
$ ./hello
hello ✨
```

hello, world using syscalls only

```
$ ./helloraw
hello ✨
```

hello, name

```
$ ./helloname
what's your name? sparkles

hello, sparkles ✨

```
