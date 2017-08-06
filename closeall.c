#include <windows.h>

static BOOL CALLBACK EnumProc(HWND hwnd, LPARAM lParam)
{
	if ((GetWindowLong(hwnd, GWL_STYLE) &
			(WS_VISIBLE|WS_OVERLAPPEDWINDOW|WS_CHILD)) ==
			(WS_VISIBLE|WS_OVERLAPPEDWINDOW))
		PostMessage(hwnd, WM_CLOSE, 0, 0);

	return TRUE;
}

void WinMainCRTStartup(void)
{
	EnumWindows(EnumProc, 0);
	ExitProcess(0);
}
