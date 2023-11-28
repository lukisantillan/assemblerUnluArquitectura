.model small
.stack
.code 
      MOV bx, 00h
      MOV SI, 15h
      MOV cX, 0
       
      Procedimiento:
      cmp SI, DI
      JZ terminar
      CALL comparacion
      inc DI
      jmp Procedimiento
      
      
terminar:
     
    MOV AH, 4CH
    INT 21h
    
comparacion proc
    condicion1:
    mov al, [SI+bx]
    mov ah,al
    cmp ah, 2Eh
    JB noCumple
    and al, 1
    cmp al, 0
    JNZ noCumple
    inc cx
    mov [15h], cx
    noCumple:
        ret
        comparacion endp
        
    