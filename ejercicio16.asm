.model small
.stack
.code 
        mov al, ds:[10h]
        mov ah, al
        mov bl, 88h  
        and al, bl
        cmp al, 00h
         jz igual
        cmp al, 88h
         jz igual 
         mov ds:[10h], 01h
         jmp terminar
igual:
        mov ds:[10h], 00h
        jmp terminar
        
         

terminar:
    MOV AL, 4CH
    INT 21H