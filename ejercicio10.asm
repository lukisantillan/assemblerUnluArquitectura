.model small
.stack
.code

terminar:
    mov ah 4ch
    int 21h
;SI DI, SON REGISTROS INDICES. 
;TENEMOS UN SEGMENTO DE DATOS(APUNTADO POR EL REGISTRO DS)
; QUE OCUPA LAS SIGUIENTES ESPACIOS DE MEMORIA.
; CON LOS SIGUIENTES DATOS ALMACENADOS 
; EN  139Eh -> 05h
; EN  139Fh -> AAh
; EN  13A0h -> 03h
; EN  13A1h -> 00h
; EN  13A2h -> 0Dh
; EN  13A3h -> FFh
; EN  13A4h -> 9Eh
; EN  13A5h -> 13h
; EN  13A6h -> 02h
; EN  13A7h -> 10h
; LOS REGISTROS TIENEN ALMACENADO:
; AX = 001Ah
; BX = 139Fh
; SI = 0002h
; DI = 0060h
; y 2 VARIABLES 
; arreglo -> 139Eh
; lista -> 005Ah
; Cuando tenemos entre corchetes, es el contenido de la posicion de memoria
; por ejemplo si hacemos la instruccion :
; mov cl, ds:[BX] -> Estariamos copiando en cl el contenido que esta 
;almacenado en ds en la direccion almacenada en BX. Es como poner
; ds:[139Fh] y en esa posicion esta 05h por lo tanto es lo que se copia cl
; A- SI HAGO ALGO CON AL, AL TIENE 1A ALMACENADO
; B- SI HAGO ALGO CON DS:[BX] QUIERE DECIR QUE INVOLUCRO A EL CONTENIDO 
; QUE HAY EN DS EN LA DIRECCION BX(139FH).  ESTOS SON MODOS DE DIRECCIONAMIENTO.
