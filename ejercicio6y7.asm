.model small
.stack 
.data    ;seccion para declarar variables en el segmento de datos
   numeroPrimo db 7       ;db para declarar valores de 8 bits
   primoGrande dw 9973    ;dw para declarar variables de 16 bits
   impares db 1, 3, 7, 9
   arreglo_5 db 5 DUP (0fh) ;dup para darle un valor inicial entre parentesis
   nombre db "Luis"
.code
    mov ax, @data  ;formula si nuestro programa tiene seccion data
    mov ds ,ax     ;esta formula lo que hace es copiar
    mov ax, primoGrande ;copio en ax el valor de primo grande, puedo hacerlo ya que los dos tienen 16 bits
    mov al, impares[2] ;accedo al arreglo a traves del subindice, el 2 indica, 2 bytes desplazados desde el inicio del arreglo
    mov arreglo_5, bl ; es lo mismo que hacer mov arreglo_5[0]
    mov arreglo_5[1], cl
    mov arreglo_5[2], dl
    mov nombre, "R"
    mov nombre[3] ,"z" ; 
     
terminar: 
    mov ah, 4ch
    int 21h    
    
    
;el segmento de datos esta apuntado por el registro DS. Guardo en DS lo
;que hay en en @data   LO QUE HACEMOS AL HACER DS, AX, ES APUNTAR AL SEGMENTO DONDE 
;FUERON PUESTAS LAS DEFINICIONES DE LA SECCION DATA.