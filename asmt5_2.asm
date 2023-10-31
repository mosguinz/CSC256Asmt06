# CSC 256
# 2023-10-09
# Name:		    Mos Kullathon
# Description: 	Part 2: Translate C++ - Computing length of string.


.data

str: .ascii "a"
.ascii "b"
.ascii "c"
.ascii "d"
.ascii "e"

.text

    li      $t0,    0           # count = 0
    la      $t1,    str         # $t1 = *ptr = &str


loop:

    add     $t0,    $t0,    1   # Increment counter
    add     $t1,    $t1,    1   # Increment pointer
    bnez    $s0,    loop	# if $t0 != 0 then goto loop
