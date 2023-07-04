.data #Zona de datos
vector: .word 3 13 1 0  # |valor inicial|valorfinal|valor1|valor0|

#serie fibonacci = fn = fn-1 + fn-2
#f0=0  f1=1  f2=1 f3=f2+f1=2

      .text  #Zona de instrucciones
main: li $v0, 1 #Llamada al sistema para print int
      lw $a0, vector ($0) #Se utiliza como registro de inicio el registro 0 y lo carga en a0 la primer palabra del vector
      addi $s0, $a0, 0 #la constante 0 se suma con a0 y lo manda al registro s0
      lw $a0, vector + 4($0) #Se le van a agregar 4 a la etiqueta vector para localizar el siguiente elemento del arreglo y se carga en a0
      addi $s1, $a0, 0 #la constante 0 se suma con a0 y se manda al registro s1
      lw $a0, vector + 8($0) #Se le van a agregar 4 a la etiqueta vector para localizar el siguiente elemento del arreglo y se carga en a0
      addi $s2, $a0, 0 #la constante 0 se suma con a0 y se manda al registro s2
      lw $a0, vector + 12($0) #Se le van a agregar 4 a la etiqueta vector para localizar el siguiente elemento del arreglo y se carga en a0
      addi $s3, $a0, 0 #la constante 0 se suma con a0 y se manda al registro s2
      lw $a0, vector + 16($0) #Se le van a agregar 4 a la etiqueta vector para localizar el siguiente elemento del arreglo y se carga en a0
      addi $s4, $a0, 0 #la constante 0 se suma con a0 y se manda al registro s2
loop: #ciclo
      add $s4, $s2, $s3  #se coloca la suma fibonacci
      addi $a0, $s4, 0 #se copia el valor de s4 en a0 
      syscall #se imprime el resultado
      addi $s2, $s3, 0 #Guardamos el valor de s3 en s2
      addi $s3, $s4, 0 #Guardamos el valor de s4 en s3
      addi $s0, $s0, 1 #le sumamos 1 a s0 que es la posicion del contador mas uno y se asigna a si mismo
      addi $a0, $s0, 0 #se copia el valor de s0 a a0
      ble $s0, $s1, loop #ble= branch or less than equal compara los dos registros y si se cumple esa condicion salta a loop
      li $v0, 10 #Se le pasa el servicio 10 de salida a v0
      syscall #Se finaliza el programa



    