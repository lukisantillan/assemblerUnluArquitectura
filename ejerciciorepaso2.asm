.model small
.stack
.data
    texto db 200 dup("$") ; la direccion por ejemplo es 10. 
.code
  inicio:   
    mov ah,@data
    mov ds,ax
    mov bx , offset texto    
    call ingresartexto 
    mov si,offset texto ;direccion de comienzo de si
    call encriptartexto  
    mov ah, 9
    mov dx,offset texto
    int 21h
    

fin:
mov ah,4ch
int 21h

ingresartexto proc
    mov SI, 0
    mov ah,7
    condicion1:
        int 21h
        cmp al, "$" 
        jz salir    
        mov [bx + si], al
        inc si
        cmp si, 200
        jb condicion1
        mov [bx + si], "$"
        salir:
        ret 
        ingresartexto endp

encriptartexto proc
    mov BX, 0 
    condicion2:
    mov al, [si+BX]
    mov ah, al 
    cmp al, "$"
    jz salida
    rol ah, 5
    mov [si+BX], ah
    inc bx
    jmp condicion2
    salida:
    ret
    encriptartexto endp
    
        
       
        