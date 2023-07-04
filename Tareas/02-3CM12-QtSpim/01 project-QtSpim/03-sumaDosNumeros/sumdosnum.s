# Imprimir en consola

main:
 .text
   addi $t0,$0,25 #Valor a escribir en $t0
   addi $t1,$0,50 #Valor a escribir en $t1
   add $a0,$t1,$t0  #Realiza la suma entre $t1 y $t0
   addi $v0,$0,1 #Función 1, print integer 
   syscall #Escribe en consola $a0

   addi $v0, $0, 10   #Funtion 10, exit
   syscall            #Acaba el programa