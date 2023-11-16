############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math
from recebe_variaveis import recebe_variaveis_usuario
from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal

n=recebe_variaveis_usuario()
vetor_a=np.zeros(n)
vetor_c=np.zeros(n)
vetor_b=np.zeros(n)
vetor_d=np.zeros(n)

# Vetores definidos no ep:
# a=(0, a_2, ..., a_{n-1}, a_n)
# b=(b_1, b_2, ..., b_{n-1}, b_n)
# c=(c_1, c_2, ..., c_{n-1}, 0)

#a[0]=0
#b[0]=2
#d[0]=math.cos((2*math.pi)/n**2)

for i in range(n-1):
    vetor_a[i]=((2*(i+1))-1)/(4*(i+1))
    vetor_b[i]=2
    vetor_d[i]=math.cos((2*math.pi*(i+1)**2)/n**2)

vetor_a[n-1]=((2*n)-1)/(2*n) #a_n
vetor_b[n-1]=2

vetor_d[n-1]=math.cos(2*math.pi)

vetor_c=1-vetor_a

# Geração dos vetores v e w:
vetor_v=np.zeros(n-1)
vetor_w=np.zeros(n-1)
vetor_v[0]=vetor_a[0]
vetor_v[n-2]=vetor_c[n-2]
vetor_w[0]=vetor_c[n-1]
vetor_w[n-2]=vetor_a[n-1]

#l1, u1, x_til=decomposicao_lu_tridiagonal(vetor_c, vetor_a, vetor_b, vetor_d)
l2, u2, y_til=decomposicao_lu_tridiagonal(vetor_c[0:n-1], vetor_a[1:n], vetor_b[0:n-1], vetor_d[0:n-1])
l3, u3, z_til=decomposicao_lu_tridiagonal(vetor_c[0:n-1], vetor_a[1:n], vetor_b[0:n-1], vetor_v)

x_n=(vetor_d[n-1]-vetor_c[n-1]*y_til[0]-vetor_a[n-1]*y_til[n-2])/(vetor_b[n-1]-vetor_c[n-1]*z_til[0]-vetor_a[n-1]*z_til[n-2])

# Verificando
x_til_2=y_til-(x_n*z_til)
#w*x_til
print("terminou")

#teste=np.transpose(vetor_w)@x_til_2 + x_n*vetor_b[n-1]