.model small
.stack 
.code 
       mov al, "9"
       call conversion
terminar: 
        mov al, 4ch
        int 21h 
conversion proc
    cmp al, 39h
    ja noEsDecimal
    cmp al, 30h
    jb noEsDecimal
    sub al, 30h 
    jmp fin
    noEsDecimal:
       mov ah, 0FFh
    fin: 
    ret
    conversion endp

       
        
        
