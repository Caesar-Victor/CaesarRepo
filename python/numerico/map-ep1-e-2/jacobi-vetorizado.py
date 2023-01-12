import numpy as np 
from tqdm import tqdm

def g(x,y):
    a = np.cos(3*np.pi*x)*(1+y)
    return a

n = int(input('Entre com o valor de n: '))
f1 = open('output_jac','w')
itmax = 10000
t = np.zeros((n+1,n+1))
resid = np.zeros((n+1,n+1))
eps = 1.0e-05
h = 1./n

for i in range(0, n+1):
    t[0,i] = g(0, i*h)
    t[n,i] = g(1, i*h)
    t[i,0] = g(i*h, 0)
    t[i,n] = g(i*h, 1)

told = np.copy(t)
for k in tqdm(range(0, itmax)):
    t[1:n,1:n] = (told[0:n-1,1:n]+told[1:n,0:n-1]+told[2:n+1,1:n]+told[1:n,2:n+1])/4

    resid[1:n,1:n] = t[1:n,1:n] - (t[0:n-1,1:n]+t[1:n,0:n-1]+t[2:n+1,1:n]+t[1:n,2:n+1])/4
    maxresid = np.max(np.abs(resid))

    if (maxresid < eps):
        break
    told = np.copy(t)
print('Após iteração ', k+1, 'norma do residuo', maxresid)