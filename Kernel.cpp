#include "TextPrint.cpp"
extern "C" void _start() {
    SetCursorPosition(PositionFromCoords(0, 0));
    PrintString("Hello, World!\n\rThis is a newline\n\r");
    PrintString(HexToString(0x123fabcd));
    PrintString("\n\r");
    PrintString(HexToString("HI"));
    return;
}