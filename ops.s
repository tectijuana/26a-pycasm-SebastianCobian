/*
========================================
Autor: Sebastian Cobian (ITT)
Proyecto: Librería ARM64 alto rendimiento
Archivo: ops.s
========================================
*/

.text
.global suma, resta, mult, max, min
.global sum_array, count_even, dot_product

suma:
    add x0, x0, x1
    ret

resta:
    sub x0, x0, x1
    ret

mult:
    mul x0, x0, x1
    ret

max:
    cmp x0, x1
    csel x0, x0, x1, gt
    ret

min:
    cmp x0, x1
    csel x0, x0, x1, lt
    ret

sum_array:
    mov x2, #0      
    mov x3, #0      
loop_sum:
    cmp x3, x1
    bge end_sum
    ldr x4, [x0, x3, lsl #3]   
    add x2, x2, x4
    add x3, x3, #1
    b loop_sum
end_sum:
    mov x0, x2
    ret

count_even:
    mov x2, #0
    mov x3, #0
loop_even:
    cmp x3, x1
    bge end_even
    ldr x4, [x0, x3, lsl #3]
    and x5, x4, #1
    cmp x5, #0
    cinc x2, x2, eq   
    add x3, x3, #1
    b loop_even
end_even:
    mov x0, x2
    ret

dot_product:
    mov x3, #0   
    mov x4, #0   
loop_dot:
    cmp x3, x2
    bge end_dot
    ldr x5, [x0, x3, lsl #3]
    ldr x6, [x1, x3, lsl #3]
    mul x7, x5, x6
    add x4, x4, x7
    add x3, x3, #1
    b loop_dot
end_dot:
    mov x0, x4
    ret
