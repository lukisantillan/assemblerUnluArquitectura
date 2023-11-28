.model small
.stack
.code
    mov cx, 0Fh 
    mov ax, cx
    mov bx, cx
    mov dx, cx 
terminar:        ;es una etiqueta podemos saltar a ella
    mov ah, 4ch  ; en cualqueir momento del codigo.
    int 21h
    