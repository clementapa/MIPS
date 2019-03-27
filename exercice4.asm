.data 
	tab: .word 1,2,34,256,-1
	chaine: .asciiz "toto" 
	
.text
	la $8,tab

	li $v0,1
	lw $a0,12($8)
	syscall
	
	la $9,chaine
	
	lb $a0,2($9)
	syscall	
	
	li $v0,11
	lb $a0,2($9)
	syscall	
	
	