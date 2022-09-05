Juan Camilo Piza
000365637
juan.piza@gmail.com

(INICIO)
@KBD
D=M
@84
D=D-A
@PUNTOD
D;JEQ

@KBD
D=M
@67
D=D-A 
@CLEAR
D;JEQ

@INICIO
0;JMP

(CLEAR)
@16384 
D=A
@coord1 
M=D 
@8192
D=A
@cont1
M=D
@1
D=A 
@salto1
M=D
@color1
M=0
@DIBUJAR
0;JMP

(PUNTOD)
@16400 //16384 (pantalla completa) + fila * 32 + columna/16
D=A
@coord 
M=D 
@256 //Las filas que se pintaran
D=A
@cont
M=D
@32
D=A 
@salto
M=D
@256
D=A
@color
M=D

@DIBUJA
0;JMP

(PUNTOC)

@20480
D=A
@coord1
M=D
@32
D=A
@cont1
M=D
@1
D=A
@salto1
M=D
@color1
M=-1

@DIBUJAR
0;JMP

(DIBUJA)
@coord
D=M
@pscreen
M=D

(DIBUJAWL)
@cont
D=M
@PUNTOC
D;JEQ

@color
D=M
@pscreen
A=M
M=D

@cont
M=M-1

@salto
D=M

@pscreen
M=M+D

@DIBUJAL
0;JMP

(DIBUJAR)
@coord1
D=M
@pscreen
M=D

(DIBUJAN)
@cont1
D=M
@FIN
D;JEQ

@color1
D=M
@pscreen
A=M
M=D

@cont1
M=M-1

@salto1
D=M

@pscreen
M=M+D

@DIBUJAN
0;JMP


(FIN)
@INICIO
0;JMP