.data
	o1: .byte 1
	o2: .byte 2
	o3: .byte 3
	o4: .byte 4
	m1: .word 0xAABBCCDD
.text
	la $8,o1 #charge l'addresse de o1 dans $8
	la $9,o2
	la $10,o3
	la $11,o4
	la $12,m1