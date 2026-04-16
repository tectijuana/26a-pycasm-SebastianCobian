/*
========================================
Autor: Sebastian Cobian
Archivo: bridge.c
Wrapper para Python ctypes
========================================
*/

#include <stdint.h>

// Declaraciones ASM
extern long suma(long a, long b);
extern long resta(long a, long b);
extern long mult(long a, long b);
extern long max(long a, long b);
extern long min(long a, long b);

extern long sum_array(long *arr, long n);
extern long count_even(long *arr, long n);
extern long dot_product(long *a, long *b, long n);

