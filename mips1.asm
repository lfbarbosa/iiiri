.data

jSwiftcase: .word L0,L1,L2
iri: .asciiz "iiiri"
ywry: .asciiz "ywry"
lucao: .asciiz "sloan"

.text

addi $s1,$zero,2
addi $t1,$zero,1
addi $t2,$zero,2
addi $t3,$zero,3
#Verificar se $s1 é maior ou igual a 0
slt $s2,$s1,$zero #Se $s1 for menor que zero retorna 1 se nao retorna 0
bne $s2,$zero,Exit #Se $s2 for diferente de 0 va para Exit

#Verificar se $s1 é maior que 3
slt $s2,$zero,$s1
beq $s2,$zero,Exit

#Verificar o caso
#caso1
beq $s1,$t1,L0
#caso2
beq $s1,$t2,L1
#caso3
beq $s1,$t3,L2


#L1
L0: 
li $v0, 4
la $a0, iri
syscall 
j Exit

#L2:
L1:
li $v0, 4
la $a0, ywry
syscall
j Exit

#L3
L2:
li $v0, 4
la $a0, lucao
syscall 
j Exit

Exit:
li $v0,10