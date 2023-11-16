.text
main:
	addi $2, $0, 12
	syscall
	
	add $8, $0, $2 #input no registrador 8
	
	addi $4, $0, 10  #Quebra de linha
	addi $2, $0, 12
	syscall
	
	addi $4, $8, 32 #soma 32 na tabela ascii e joga pro output
	 
	addi $2, $0, 11
	syscall