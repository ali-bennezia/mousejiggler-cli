#include <stdbool.h>
#include "windows.h"

static bool even = 0;
void job()
{
    POINT pt = {0};
    GetCursorPos( &pt );
    SetCursorPos( pt.x+(even?1:-1), pt.y+(even?-1:1) );
    SetCursorPos( pt.x, pt.y );
    even = !even;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR pCmdLine, int nCmdShow)
{
    for (;;){
        job();
        Sleep(45000);
    }
    return 0;
}
