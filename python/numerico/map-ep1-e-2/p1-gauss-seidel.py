import numpy as np

n = 3
a = np.array([[1, 1, 12],[-6, -6, 2],[-8, 2, -9]])
b = np.array([8, 5, 6])

itmax=10
x=np.array([0, -1, -1])

print("x(",0,") =", x)

for k in range (0, itmax):
    for i in range(0,n):
        x[i]=b[i]
        for j in range(0,i):
            x[i] = x[i]-a[i,j]*x[j]
        for j in range(i+1,n):
            x[i] = x[j] - a[i,j]*x[j]
        x[i] = x[i]/a[i,i]
    print("Após iteração ", k+1)
    print("x (",k+1,") =",x,"\n")
    input("pressione Enter para continuar")

ax = np.matmul(a,x)
print("Ax = ", ax)
print("Maximo residuo",np.max(np.abs(b-ax)))