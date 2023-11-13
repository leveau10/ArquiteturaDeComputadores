.data 

.text

main:
	jal ceu
	jal terra
	jal arvoresPrim
	jal arvoresSec
	jal arvoresTer
	jal predio
	##jal personagem
	
fim:
	addi $2 $0 10
	syscall
	
ceu:  #CÉU
	lui $9, 0x1001
	addi $5 $0 0x00227d99
	add $8 $0 $0
forCeu:
	beq $8 8192 nuvem
	
	sw $5 0($9)
	addi $9 $9 4
	addi $8 $8 1
	j forCeu

nuvem:
	lui $9 0x1001
	addi $9 $9 2096
	add $8 $0 $0
	add $10 $31 $0
	addi $5 $0 0x00ffffff
	jal forNuvem
	lui $9 0x1001
	addi $9 $9 2736
	add $8 $0 $0
	jal forNuvem
	lui $9 0x1001
	addi $9 $9 3700
	add $8 $0 $0
	jal forNuvem
	lui $9 0x1001
	addi $9 $9 3444
	add $8 $0 $0
	jal forNuvem
	lui $9 0x1001
	addi $9 $9 3560
	add $8 $0 $0
	jal forNuvem
	lui $9 0x1001
	addi $9 $9 3828
	add $8 $0 $0
	jal forNuvem
	
	jr $10
forNuvem:
	beq $8 3 nuvemSai
	
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 -504($9)
	sw $5 -500($9)
	sw $5 -496($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)

	addi $8 $8 1
	j forNuvem
nuvemSai:
	jr $31

terra:   lui $9, 0x1001
		add $9 $9 24576 #terra no ultimo quarto 
        	add $8, $0, $0
       		addi $5, $0, 0x0027661d #cor marrom
forTerra:   beq $8, 256, terra2
		
        
        	sw $5, 0($9)
        	addi $9, $9, 4
        	addi $8, $8, 1
        	j forTerra
terra2:
	addi $5 $0 0x006c3c0c
forTerra2:

	beq $8 2048 terra3
	sw $5 0($9)
	addi $9 $9 4
	addi $8 $8 1
	j forTerra2
terra3:
	jr $31
arvoresPrim:   #PRIMEIRA ÁRVORE
	add $10 $0 $0 
	lui $9 0x1001
	add $9 $9 24116
	addi $5 $0 0x00342b29
forArvoresPrim:   
	beq $10 10 folhagem

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresPrim2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresPrim
folhagem:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem:
	beq $10 5 arvoresPrim3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem
	
arvoresPrim3:
	jr $31

arvoresSec: #SEGUNDA ÁRVORE
	add $10 $0 $0
	lui $9 0x1001
	addi $9 $9 24220
	addi $5 $0 0x00342b29
forArvoresSec:   
	beq $10 14 folhagem2

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresSec2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresSec
folhagem2:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem2:
	beq $10 5 arvoresSec3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem2
	
arvoresSec3:
	jr $31
	
arvoresTer: ###TERCEIRA ÁRVORE
	add $10 $0 $0
	lui $9 0x1001
	addi $9 $9 24428
	addi $5 $0 0x00342b29
forArvoresTer:   
	beq $10 20 folhagem3

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresTer2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresTer
folhagem3:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem3:
	beq $10 5 arvoresTer3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem3
arvoresTer3:
	jr $31

predio:
	add $10 $0 $0
	add $8 $0 $0
	lui $9 0x1001
	addi $9 $9 24484
	addi $5 $0 0x00342b29
forPredio:
	 beq $10 16 predioTorreUm
	 beq $8 21 predioDois
	 sw $5 0($9)
	 add $9 $9 4
	 addi $8 $8 1
	 j forPredio
predioDois:
	addi $10 $10 1
	subi $9 $9 596
	add $8 $0 $0
	j forPredio
	
predioTorreUm:
	lui $9 0x1001
	add $9 $9 16296
	add $8 $0 $0
	add $10 $0 $0
forTorreUm:
	beq $10 3 predioTorreDois
	beq $8 5 forTorreUm2
	sw $5 0($9)
	addi $8 $8 1
	addi $9 $9 4
	j forTorreUm
forTorreUm2:
	addi $10 $10 1
	add $8 $0 $0
	subi $9 $9 532
	j forTorreUm
predioTorreDois:
	sw $5 0($9)
	sw $5 8($9)
	sw $5 16($9)
	
	lui $9 0x1001
	add $9 $9 16352
	add $8 $0 $0
	add $10 $0 $0
forTorreDois:
	beq $10 3 mastro
	beq $8 5 forTorreDois2
	sw $5 0($9)
	addi $8 $8 1
	addi $9 $9 4
	j forTorreDois
forTorreDois2:
	addi $10 $10 1
	add $8 $0 $0
	subi $9 $9 532
	j forTorreDois
mastro:
	sw $5 0($9)
	sw $5 8($9)
	sw $5 16($9)
	lui $9 0x1001
	add $9 $9 16316
	add $10 $0 $0
forMastro:
	beq $10 24 bandeira
	sw $5 0($9)
	addi $10 $10 1
	subi $9 $9 512
	j forMastro
bandeira:
	add $9 $9 1028
	add $8 $8 $0
	addi $5 $0 0x00ff0000
forBandeiraHorizontal:
	beq $8 15 bandeiraVertical
	
	sw $5 0($9)
	sw $5 5632($9)
	add $9 $9 4
	addi $8 $8 1
	j forBandeiraHorizontal
bandeiraVertical:
	add $8 $0 $0
	addi $9 $9 508

forBandeiraVertical:
	beq $8 10 pintarBandeira
	
	sw $5 0($9)
	addi $9 $9 512
	addi $8 $8 1
	j forBandeiraVertical
pintarBandeira:
	add $8 $0 $0
	add $10 $0 $0
	subi $9 $9 516
	sw $5 0($9)
forPintarBandeira:
	
	beq $10 10 brancoBandeira
	beq $8  14 forPintarBandeira2
	sw $5 0($9)
	subi $9 $9 4
	addi $8 $8 1
	j forPintarBandeira
forPintarBandeira2:
	addi $10 $10 1
	add $8 $0 $0
	subi $9 $9 456
	j forPintarBandeira
brancoBandeira:
	addi $5 $0 0x00ffffff
	addi $9 $9 1012
	sw $5 0($9)
	add $8 $0 $0
	add $10 $0 $0

forBrancoBandeira:
	beq $10 7 bordasBandeira
	beq $8 7 forBranco2
	
	sw $5 0($9)
	addi $8 $8 1
	subi $9 $9 4
	j forBrancoBandeira
forBranco2:
	addi $10 $10 1
	add $8 $0 $0
	addi $9 $9 540
	j forBrancoBandeira
bordasBandeira:
	beq $8 5 bordasBandeira2
	subi $9 $9 4
	
	sw $5 0($9)
	sw $5 -4096($9)
	addi $8 $8 1
	j bordasBandeira
bordasBandeira2:
	add $8 $0 $0
	subi $9 $9 1032

forBordasBandeiras2:
	beq $8 5 xis
	sw $5 32($9)
	sw $5 0($9)
	subi $9 $9 512
	addi $8 $8 1
	j forBordasBandeiras2
	
xis:
	add $8 $0 $0
	addi $5 $0 0x00000000
	add $9 $9 28
	
forXis:
	beq $8 7 xis2
	sw $5 0($9)
	addi $8 $8 1
	add $9 $9 508
	j forXis
	
xis2:
	add $8 $0 $0
	subi $9 $9 3580
forXis2:
	beq $8 7 xisOut
	
	sw $5 0($9)
	add $9 $9 516
	addi $8 $8 1
	j forXis2
xisOut:
	jr $31
##personagem:
##	lui $9 0x1001
##	addi $5 $0 0x00000000
##	sw $5 24068($9)
##	sw $5 24072($9)
###	sw $5 24080($9)
##	sw $5 24084($9)
##	jr $31