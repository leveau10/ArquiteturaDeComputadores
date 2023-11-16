.text
main:
	addi $2,$0, 5
	syscall
	
	add $15, $2, $0 #1 input no 15

	addi $2,$0, 5
	syscall
	
	add $8, $2, $0 #2 input no 8
	sll $9, $8, 2 #eleva a 3
	sub $9, $9, $8 #diminui 1x
	add $15, $15, $9 
	
	addi $2,$0, 5
	syscall
	
	add $10, $2, $0 #3 input no 10
	sll $11, $10, 2 #eleva a 3
	add $11, $11, $10 #soma 1x
	add $15, $15, $11
	
	div $4, $15, 9
	
	addi $2, $0, 1
	syscall
	
	
	
	
	
	
	
	