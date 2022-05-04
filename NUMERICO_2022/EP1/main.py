############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math

from recebe_variaveis import recebe_variaveis_usuario
from decomposicao_lu_geral_v1 import decomposicao_lu_geral
from decomp_lu_tridiagonal_v2 import decomposicao_lu_tridiagonal
# decomposicao_lu_tridiagonal(vetor_c, vetor_b, vetor_a, d):

# Geração dos dados:
#n=20
caso, n=recebe_variaveis_usuario()
a=np.zeros(n)
c=np.zeros(n)
b=np.zeros(n)
d=np.zeros(n)

for i in range(n):
    a[i]=(2*i-1)/4*i
    b[i]=2
    d[i]=math.cos((2*math.pi*i**2)/n**2)

c=1-a

if(caso=="g"):
    # Gerar A
    l, u, solucao=decomposicao_lu_geral(c, b, a, d)
else:
    l, u, solucao=decomposicao_lu_tridiagonal(c, b, a, d)


d=31


