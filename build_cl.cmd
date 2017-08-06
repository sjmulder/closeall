@set CC=cl
@set CFLAGS=/nologo /O1
@set LDFLAGS=/nodefaultlib /subsystem:windows /entry:WinMainCRTStartup
@set LDLIBS=kernel32.lib user32.lib
@set TARGET=closeall.exe

%CC% %CFLAGS% /Fe:%TARGET% *.c /link %LDFLAGS% %LDLIBS%
