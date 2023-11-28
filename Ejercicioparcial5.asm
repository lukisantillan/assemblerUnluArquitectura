.model small
.stack
.code
    mov bx, 0
    mov cx, 0
    inicio:
        call ingreso
        call promedio
fin:
    mov ah, 4ch
    int 21h
    
ingreso proc
        mov ah, 7
    repetir:
        int 21h
        cmp al, 1Bh
        jz salir 
        cmp al, 30h
        jb noCumple
        cmp al, 39h
        ja noCumple
        mov ah, al
        and ah, 1
        cmp ah, 1
        jz noCumple
        inc cx
        sub al, 30h
        add bl, al
        jmp repetir
        noCumple:
        jmp repetir
        salir:
        ret
        ingreso endp

promedio proc
    mov bl, al
    mov ah, 0
    div cl
    ret
    promedio endp
    
    
    