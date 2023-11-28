.model small
.stack
.code
    mov ax, 0fh
    mov bx, 55h
    mov cx, 0ch
    mov dx, 0cch
    sub bx, cx  ; sumo bx + cx guardo valor en bx
    sub bx, dx  ; sumo bx(ahora siendo bx+cx) con dx y guardo en bx
    sub ax, bx  ; subo bx(ahora sienod bx+cx+dx con ax y guardo en ax    
terminar:
    mov ah, 4ch
    int 21h