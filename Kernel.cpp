#include "TextPrint.cpp"

extern const char Test[];

extern "C" void _start() {
    SetCursorPosition(PositionFromCoords(0, 0));
    PrintString(Test);
    return;
}