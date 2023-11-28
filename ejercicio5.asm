.model small
.stack
.code
    mov ax, 500 ;valor inicial de ax
    mov bx, 1Ah ;valor incial de bx
    sub ax, bx  ;Valor de ax en este paso 01DAh
    mov cx, ax  ; valor de cx en este paso 01DAh
    dec cx     ;  valor de cx en este paso 01D9h
    mov dx, 111100011111b    ; valor de dx 0F1Fh
    inc dx                   ; valor de dx aca 0F20
terminar: 
    mov ah, 4ch
    int 21h