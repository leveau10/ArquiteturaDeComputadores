#q1
.text
main: addi $2, $0, 5 #leitura de numero inteiro
	syscall
	
	sll $4, $2, 1 #desloca 1 bit para esquerda(dobra o valor)
 	 
	addi $2, $0, 1 # iimprime 
	syscall
	