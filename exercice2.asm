.data 
	v1: .word -1
	v2: .word 0xFF

.text 
	la $10,v1
	lw $8,($10)
	
	la $11,v2
	lw $9,($11)
	
	li $v0,1
	lw $a0,($10)
	syscall
	
	li $v0,1
	lw $a0,($11)
	syscall
	
	addi $8,$8,1
	sw $8,($10)
	addi $9,$9,1
	sw $9,($11)
	
	li $v0,1
	lw $a0,($10)
	syscall
	
	li $v0,1
	lw $a0,($11)
	syscall
	