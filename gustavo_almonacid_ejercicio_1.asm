;Declaraciones
.MODEL SMALL
.DATA
RES DB ?
CNT DB 0AH ; Inicializar contador para el numero de Fibonacci
.CODE
START: MOV AX, @DATA
MOV DS, AX
LEA SI, RES
MOV CL, CNT ; cargar el valor de conteo para CL para efectuar el ciclo
MOV AX, 00H ; No por defecto
MOV BX, 01H ; No por defecto
;Fibonacci
L1: ADD AX ,BX
DAA ; Mostrar el valor en forma decimal
MOV [SI ], AX
MOV AX, BX
MOV BX,[ SI]
INC SI
LOOP L1
INT 3H ; Concluir programa
END START