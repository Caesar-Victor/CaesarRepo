import numpy as np
def f5(x): 
    return np.sin(3*x)

def f6(x): 
    return np.sin(10*x)

som = 0
x = 0
for j in range(64):
    x = 2*j*np.pi/64
    som += abs(f5(x) * f5(x))

print(som)