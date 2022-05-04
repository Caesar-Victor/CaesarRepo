############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math
from decomp_lu_tridiagonal_v2 import decomposicao_lu_tridiagonal

n=3
a=np.zeros(n)
c=np.zeros(n)
b=np.zeros(n)
d=np.zeros(n)

# Vetores definidos no ep:
# a=(0, a_2, ..., a_{n-1}, a_n)
# b=(b_1, b_2, ..., b_{n-1}, b_n)
# c=(c_1, c_2, ..., c_{n-1}, 0)

#a[0]=0
#b[0]=2
#d[0]=math.cos((2*math.pi)/n**2)

for i in range(n-1):
    a[i]=((2*(i+1))-1)/(4*(i+1))
    b[i]=2
    d[i]=math.cos((2*math.pi*(i+1)**2)/n**2)

a[n-1]=((2*n)-1)/(2*n) #a_n
b[n-1]=2

d[n-1]=math.cos(2*math.pi)

c=1-a


# Geração dos vetores v e w:
v= np.zeros(n)
w=np.zeros(n)

v[0]=a[0]
v[n-1]=c[n-2]

w[0]=c[n-1]
w[n-1]=a[n-1]

#l1, u1, x_til=decomposicao_lu_tridiagonal(vetor_c, vetor_a, vetor_b, vetor_d)
l2, u2, y_til=decomposicao_lu_tridiagonal(c, a, b, d)
l3, u3, z_til=decomposicao_lu_tridiagonal(c, a, b, v)

x_n=(d[n-1]-c[n-1]*y_til[0]-a[n-1]*y_til[n-2])/(b[n-1]-c[n-1]*z_til[0]-a[n-1]*z_til[n-2])

x_til=y_til-x_n*z_til

# Verificar
#w*x_til