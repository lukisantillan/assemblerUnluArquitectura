.model small
.stack
.code
    mov ax, 85 ;edad actual
    mov cx, 2023 ; anio actual  
    mov dx, cx ; copio en dx el anio actual, para al hacer la resta, no perder el dato
    sub dx, ax ; le resto al anio actual, la edad actual para conseguir el anio de nacimiento  

terminar:
    mov ah, 4ch
    int 21h