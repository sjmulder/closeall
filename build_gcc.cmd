@set CC=gcc
@set CFLAGS=-ansi -Wall -nostdlib -ffreestanding -Os -s
@set LDFLAGS=-mwindows -s
@set LDLIBS=-lkernel32 -luser32
@set TARGET=closeall.exe

%CC% %CFLAGS% %LDFLAGS% -o %TARGET% *.c %LDLIBS%
