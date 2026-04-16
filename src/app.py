import ctypes
import time
import random

lib = ctypes.CDLL("./build/libops.so")

# tipos
lib.suma.argtypes = [ctypes.c_long, ctypes.c_long]
lib.suma.restype = ctypes.c_long

# prueba simple
print("Suma:", lib.suma(10, 20))

# --------- TEST PERFORMANCE ---------

N = 100000
arr = (ctypes.c_long * N)(*range(N))

start = time.time()
res = lib.sum_array(arr, N)
end = time.time()

print("ASM tiempo:", end-start)
