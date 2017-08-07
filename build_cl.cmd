@set CFLAGS=/nologo /O1
@set LDFLAGS=/nodefaultlib /subsystem:windows /entry:WinMainCRTStartup
@set LDLIBS=kernel32.lib user32.lib

rc resources.rc
cl %CFLAGS% /Fe:closeall.exe *.c resources.res /link %LDFLAGS% %LDLIBS%
del resources.res
