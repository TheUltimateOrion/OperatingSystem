#pragma once
#include "Typedefs.cpp"
#include "IO.cpp"
#define VGA_MEMORY (uint_8*)0xb8000;
#define VGA_WIDTH 80
uint_8 CursorPositon;

void SetCursorPosition(uint_16 position) {
    outb(0x3D4, 0x0F);
    outb(0x3D5, (uint_8)(position & 0xFF));
    outb(0x3D4, 0x0E);
    outb(0x3D5, (uint_8)((position >> 8) & 0xFF));

    CursorPositon = position;
}

uint_16 PositionFromCoords(uint_8 x, uint_8 y) {
    return y * VGA_WIDTH + x;
}