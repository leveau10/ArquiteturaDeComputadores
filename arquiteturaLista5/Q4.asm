.data
.text
main:
	lui $8 0x1001
	
	add $9 $0 $0 #int i 
	add $10 $0 $0 #contadorPares

for:    #leitura
	beq $9 10 par   #lê 10
	addi $2 $0 5
	syscall
	
	sw $2 0($8)	
		
	addi $8 $8 4	 #próximo espaço de memória
	addi $9 $9 1    # i++
	j for
	
par:
	subi $8 $8 4
	beq $9 0 print	
	
	lw $11 0($8)
	div $11 $11 2
	mfhi $12 
	beq $12 0 parSim
	

	subi $9 $9 1
	j par
parSim:
	addi $10 $10 1
	subi $9 $9 1
	j par
print:
	add $4 $0 $10
	addi $2 $0 1
	syscall