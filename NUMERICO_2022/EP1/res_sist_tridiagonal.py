############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np

def sist_tridiagonal(vetor_l, vetor_u, vetor_d, vetor_c):
    
    #n=np.length(vetor_l)
    n=len(vetor_l)
    
    y = np.zeros(n-1)
    x = np.zeros(n-1)
    
    y[0]=vetor_d[0]
    for i in range(1, n):
        y[i]=vetor_d[i]-vetor_l[i]*y[i-1]
    
    for i in range(n-1, 1):
        x[i]=(y[i]-vetor_c[i]*x[i+1])/vetor_u[i]
    
    return x