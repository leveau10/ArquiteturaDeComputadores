.text
main:
	addi $2 $0 5
	syscall
	add $10 $0 $2 #limite i
	addi $11 $0 0 # i
	
	addi $2 $0 5
	syscall
	add $8 $0 $2 # X
	
	addi $2 $0 5
	syscall
	add $9 $0 $2 # Y
	
loop:
	beq $11 $10 fim
	
	addi $2 $0 5
	syscall
	add $14 $0 $2 # Xteste
	
	addi $2 $0 5
	syscall
	add $15 $0 $2 # Yteste
	
	beq $14 $8 dv
	beq $15 $9 dv
	
	slt $12 $15 $9
	beq $12 0 norte
	beq $12 1 sul
	addi $11 $11 1 #i++

	j loop
	
dv:	
	addi $4 $0 'D'
	addi $2 $0 11
	syscall
	
	addi $4 $0 'V'
	addi $2 $0 11
	syscall
	
	addi $11 $11 1 #i++
	j loop
norte:
	slt $12 $14 $8
	beq $12 0 nordeste 
	beq $12 1 noroeste
sul:
	slt $12 $14 $8
	beq $12 0 sudeste
	beq $12 1 sudoeste 
nordeste:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	
	addi $11 $11 1 #i++
	j loop
noroeste:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	
	addi $4 $0 'O'
	addi $2 $0 11
	syscall
	
	addi $11 $11 1 #i++
	j loop
sudeste:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	
	addi $11 $11 1 #i++
	j loop
sudoeste:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	
	addi $4 $0 'O'
	addi $2 $0 11
	syscall
	
	addi $11 $11 1 #i++
	j loop
fim:
	addi $2 $0 10
	syscall