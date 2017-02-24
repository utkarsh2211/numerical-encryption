# GroupID-6 (15116067_15116068) - Utkarsh Verma & Vaibhav Garg
# Date: October 30, 2016 
# CP.asm - This program  encrypts the digits present in an alphanumeric string
#          taken as input by the user, leaving the other characters unchanged 
# Registers Used:
# $t0 - stores address of input string in the memory
# $t1 - stores one byte of input string in a particular iteration
# $t2 - contains character to be encrypted or encrypted character
# $v0 - syscall parameter / return values.
# $a0 - syscall parameters.


   .data                                         # data used by program
enter_str :     .asciiz "Enter String\n"
encr_str  :     .asciiz "Encrypted String\n"
str       :     .space   32                      # set aside 32 bytes for the string

   .text                                         # Execution statements contained in text 
main:                                            # SPIM starts by jumping to main.

la $a0, enter_str                                # load the address of enter_str into $a0.                                     
li $v0, 4                                        # load "print_string" code into $v0 -- prints "Enter String"
syscall                                          # do the syscall

la $a0, str                                      # load the address of enter_str into $a0.
li $a1, 32                                       # load immediate value 32 in $a1
li $v0, 8                                        # load "read_string" code into $v0
syscall                                          # make the syscall

la $t0,str                                       # load address of str in $t0      

la $a0,encr_str                                  # load the address of enter_str into $a0.
li $v0,4                                         # load "print_string" code into $v0 -- prints "Encrypted String"
syscall                                          # do the syscall

loop:                                            # for loop begin here

       lb $t1, 0($t0)                            # load character present at address stored in $t0 to $t1
       beqz $t1, end_of_loop                     # if $t1=='\0' branch to label end_of_loop
else0:                                           # code for $t1==0 
       li $t2, '0'                               # load $t2 with immediate value 0
       bne $t1 , $t2, else1                      # if $t1!=$t2 ,branch to else1
       li $t2, '4'                               # load $t2 with 4 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11                                #load "print_character" code into $v0
       syscall                                   # do the syscall
       b iterate                                 # jump to label iterate

else1:                                           # code for $t1==1
       li $t2, '1'                               # load $t2 with immediate value 1
       bne $t1 , $t2, else2                      # if $t1!=$t2 ,branch to else2
       li $t2, '6'                               # load $t2 with 6 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall   # do the syscall
       b iterate
else2:                                           # code for $t1==2
       li $t2, '2'                               # load $t2 with immediate value 2
       bne $t1 , $t2, else3                      # if $t1!=$t2 ,branch to else3
       li $t2, '9'                               # load $t2 with 9 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall  # do the syscall
       b iterate
else3:                                           # code for $t1==3
       li $t2, '3'                               # load $t2 with immediate value 3
       bne $t1 , $t2, else4                      # if $t1!=$t2 ,branch to else4
       li $t2, '5'                               # load $t2 with 5 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall  # do the syscall
       b iterate
else4:                                           # code for $t1==4
       li $t2, '4'                               # load $t2 with immediate value 4
       bne $t1 , $t2, else5                      # if $t1!=$t2 ,branch to else5
       li $t2, '0'                               # load $t2 with 0 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall   # do the syscall
       b iterate
else5:                                           # code for $t1==5
       li $t2, '5'                               # load $t2 with immediate value 5
       bne $t1 , $t2, else6                      # if $t1!=$t2 ,branch to else6
       li $t2, '3'                               # load $t2 with 3 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall   # do the syscall
       b iterate
else6:                                           # code for $t1==6
       li $t2, '6'                               # load $t2 with immediate value 6
       bne $t1 , $t2, else7                      # if $t1!=$t2 ,branch to else7
       li $t2, '1'                               # load $t2 with 1 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall    # do the syscall
       b iterate
else7:                                           # code for $t1==7
       li $t2, '7'                               # load $t2 with immediate value 7
       bne $t1 , $t2, else8                      # if $t1!=$t2 ,branch to else8
       li $t2, '8'                               # load $t2 with 8 for encryption

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall
       b iterate
else8:                                           # code for $t1==8
       li $t2, '8'                               # load $t2 with immediate value 8
       bne $t1 , $t2, else9                      # if $t1!=$t2 ,branch to else9
       li $t2, '7'

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall
       b iterate
else9:                                           # code for $t1==9
       li $t2, '9'                               # load $t2 with immediate value 9
       bne $t1 , $t2, def                        # if $t1!=$t2 ,branch to def
       li $t2, '2'

       la $a0, ($t2)                             # load the address of $t2 into $a0.
       li $v0, 11 
       syscall
       b iterate

def:                                            # for characters other than digits
       la $a0, ($t1)                            # load address of $t1 in $a0
       li $v0, 11                               # load "print_character" code in $v0
       syscall
iterate:                                        # iteration of loop, 
       addu $t0, $t0, 1                         # increment of pointer to string by 1
       b loop                                   # reiterate

end_of_loop:

exit:                                           #exit program
li $v0, 10                                      # load "exit" code in $v0
syscall 