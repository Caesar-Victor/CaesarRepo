############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math

#from recebe_variaveis import recebe_variaveis_usuario
from decomposicao_lu_geral_v2 import decomposicao_lu_geral
from EP1.decomp_lu_tridiagonal_v1 import decomposicao_lu_tridiagonal
# decomposicao_lu_tridiagonal(vetor_c, vetor_b, vetor_a, d):

# Geração dos dados:
n=3
#caso, n=recebe_variaveis_usuario()
a=np.zeros(n)
c=np.zeros(n)
b=np.zeros(n)
d=np.zeros(n)

# Vetores definidos no ep:
# a=(0, a_2, ..., a_{n-1}, a_n)
# b=(b_1, b_2, ..., b_{n-1}, b_n)
# c=(c_1, c_2, ..., c_{n-1}, 0)

a[0]=0
b[0]=2
d[0]=math.cos((2*math.pi)/n**2)

for i in range(1, n-1):
    a[i]=((2*(i+1))-1)/(4*(i+1))
    b[i]=2
    d[i]=math.cos((2*math.pi*(i+1)**2)/n**2)

a[n-1]=((2*n)-1)/(2*n) #a_n
b[n-1]=2

d[n-1]=math.cos(2*math.pi)

c=1-a
c[n-1]=0

l, u, solucao=decomposicao_lu_tridiagonal(c, b, a, d)
'''
if(caso=="g"):
    # Gerar A
    l, u, solucao=decomposicao_lu_geral(c, b, a, d)
else:
    l, u, solucao=decomposicao_lu_tridiagonal(c, b, a, d)
'''
d=31


