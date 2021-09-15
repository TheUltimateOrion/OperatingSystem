[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

mov bx, TestString
call PrintString

PrintString:
    push ax
    push bx

    mov ah, 0x0e
    .Loop:
        cmp [bx], byte 0
        