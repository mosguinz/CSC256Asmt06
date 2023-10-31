# CSC 256
# 2023-10-09
# Name:		    Mos Kullathon
# Description: 	Part 1: Translate C++ for-loop to Assembly.

.data
str: .byte  0:6                     # char str[6]
                                    # Put zeroes in first six addresses

.text
    li      $t0,    0               # i counter: $t0 = 0
    li      $s0,    0xa             # $s0 = 0xa
    la      $s1,    str             # $s1 = str[0]


loop:

    sb      $s0,    ($s1)           # str[i] = 0xa
    addi    $s1,    $s1,    1       # Increment pointer
    addi    $t0,    $t0,    1       # Increment counter
    blt     $t0,    6,      loop    # if $t0 < 6 then goto loop
