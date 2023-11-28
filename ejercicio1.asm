.model small
.stack
.code
    mov ax, 0b
    mov bx, 01010101b
    mov cx, 0Fh
    mov dx, 0CCh
terminar: 
    mov ah, 4ch
    int 21h