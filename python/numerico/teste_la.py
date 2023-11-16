import scipy.linalg as la 
import numpy as np
n=5
U, _ = la.qr((np.random.rand(n, n) - 5.) * 200)
print(U.T)
print(U)
