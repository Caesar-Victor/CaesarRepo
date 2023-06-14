import numpy as np
n=5
x = np.ones((n))
b = np.ones((n))
for i in range(n):
    x[i] = i+1                               # xk = k+1
    b[i] = (x[i]**6)-(17*(x[i]**5))      # yk = xk⁶- magic_ishort * xk⁵
  
A = np.ones((n,n))
for i in range(n):
      for j in range(1, n):
          A[i][j] = x[i]**j