#q2
.text
main:	addi $2, $0, 5 #leitura de numero inteiro
	syscall
	
	mul $4, $2, $2 #multiplica $2 por $2 e coloca no $4
 	 
	addi $2, $0, 1 # imprime 
	syscall
	
	addi $2, $0, 10 # fim de programa
	syscall