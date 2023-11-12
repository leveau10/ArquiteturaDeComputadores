.text
main:
	addi $2 $0 5
	syscall
	addi $8 $2 2
	addi $9 $0 1 #vai de 0 a x por linha
	addi $10 $0 2 #contador de linhas
	addi $15 $0 1 #numeros que vao ser printados
loop:
	beq $9 $10 quebra
	beq $10 $8 fim #checa se printou tudo
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	addi $15 $15 1
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
 	addi $9 $9 1
 	j loop
quebra:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $0 1
	addi $10 $10 1 #contador de linhas
	j loop 
fim:
	addi $2 $0 10
	syscall