.data 0x10010000
temp:  .space  160000


# a[6][6]
global_arr1:  .word  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

# b
global_const_var1:  .word  1

# arr[10]
global_const_arr2:  .word  1, 1, 1, 1, 1, 1, 1, 1, 1, 1

# string tokens:


.text 0x00400000

# main function
li $t0, 3
la $t1, global_const_var1
lw $t1, 0($t1)
addu $t2, $t0, $t1
sw $t2, 268500992($zero)
li $t8, 2
lw $t9, 268500992($zero)
mul $t8, $t8, 6
addu $t9, $t8, $t9
sll $t9, $t9, 2
la $t7, global_arr1
addu $t7, $t7, $t9
lw $t7, 0($t7)
sll $t7, $t7, 2
la $t0, global_const_arr2
addu $t0, $t0, $t7
lw $t0, 0($t0)
li $t8, 2
li $t9, 4
mul $t8, $t8, 6
addu $t9, $t8, $t9
sll $t9, $t9, 2
la $t8, global_arr1
addu $t9, $t8, $t9
sw $t0, 0($t9)

li $v0, 10
syscall




# self defined functions
