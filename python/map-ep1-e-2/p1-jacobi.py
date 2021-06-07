import numpy as np

n = 3
a = np.array([[9,3,1],[-5, 10, -4],[-10,7,18]])
b = np.array([-6,-7,2])

itmax=10
x=np.zeros(n)
xold=x

print("x(",0,") =", x)

for k in range (0, itmax):
    for i in range(0,n):
        x[i]=b[i]
        for j in range(0,i):
            x[i] = x[i]-a[i,j]*xold[j]
        for j in range(i+1,n):
            x[i] = x[j] - a[i,j]*xold[j]
        x[i] = x[i]/a[i,i]
    print("Após iteração ", k+1)
    print("x (",k+1,") =",x,"\n")
    xold = np.copy(x)
    input("pressione Enter para continuar")

ax = np.matmul(a,x)
print("Ax = ", ax)
print("Maximo residuo",np.max(np.abs(b-ax)))