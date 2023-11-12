.text
main:
	addi $10 $0 0
while:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	beq $8 $0 fim 
	
	srl $9 $8 31
	beq $9 1 impar
	
	add $10 $10 $8
	
	j while
impar:
	j while
fim:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	