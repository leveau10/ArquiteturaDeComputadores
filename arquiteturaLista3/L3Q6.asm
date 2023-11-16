.text
main:
	addi $25 $0 0
for:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	srl $10 $8 31
	beq $10 1 fim

	add $25 $25 $8
	j for
fim:
	add $4 $0 $25
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall