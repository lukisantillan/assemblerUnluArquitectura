  .model small
  .stack
  .code 
  leer:
        mov al, [100h]
        mov ah, al
        and al, 01h   ; hago mascara para determinar si b0 es 1
        cmp al , 00h ; comparo con 0 ya que el and, da 0 siempre que sean diferentes los bits
        jnz leer ; al compararlo con 0 si todo es 0 quiere decir que el ultimo bit era 1 y por lo tanto es impar
  esPar:
        cmp ah, 1FH   
        jbe leer
  sumar:
        add ah, 15H
        mov [200h], ah
  
  terminar:
    mov al, 4ch
    int 21h