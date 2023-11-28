.model small
.stack
.code
      mov al, 10010011b
      call conteo  
terminar:
    mov al, 4ch
    int 21h
    
              
conteo proc
      mov cx, 8
      mov bx, 0
      repetir:
      ror al, 1
      adc bx, 0
      loop repetir
      mov cx, bx
      ret
      conteo endp

      
      