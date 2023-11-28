.model small
.stack
.code
    mov cx, 30h      ; LE ASIGNO A CX, 30h
    mov ds:[600h], cx  ;LE ASIGNO AL SEGMENTO DE DATOS EN LA DIRECCION 600h
    mov bx, 600h       ; LE ASIGNO A BX 600h
    mov ax, ds:[bx]    ; LE ASIGNO A AX EL CONTENIDO ALMACENADO EN DS:[BX], QUE SERIA 30h
terminar: 
    mov ah, 4ch
    int 21h