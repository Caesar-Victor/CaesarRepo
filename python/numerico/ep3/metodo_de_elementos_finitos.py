############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np

from integral_simples import integra


def geraPhi():
    n = 10  # Valor arbitrário por enquanto
    h = 1/(n+1)

    #x = np.zeros(n)  # 0<x<1
    
    x=np.linspace(0,1,n)

    #for i in range(1, n-1):
      #x[i] = i

    phi = np.zeros((n, n))
    # (−k(x)u′(x))′ + q(x)u(x) = f (x)

    for i in range(1, n-1):
        # x_i=i/(n+1)
        #x[i+1] = (i+1)*h
        for j in range(1, n-1):

            # Definição das funções chapéu phi(x)

            """ if(x[i-1]>x[i] and x[i]>x[i+1]):
            phi[i, j]=0     caso ja tratado inicializando a phi(x) com zeros"""

            if(x[i-1] == x[j]):
                  phi[i, j] = (x[j]-x[i-1])/h
            elif(x[j] == x[i+1]):
                  phi[i, j] = (x[i+1]-x[j])/h
            elif(x[j] == x[i]):
                  #phi(x)=x-x[i-1]+x[i+1]-x/h
                  phi[i, j] = (x[i+1]-x[i-1])/h

        # <phi_1, phi_1>= <phi[1, :],phi[1, :]>

    # Tendo phi, vamos montar a matriz dada em (8) no enunciado.

    return phi


def geraBase(phi):
    A = np.zeros((len(phi[0]), len(phi[0])))
    for i in range(len(phi)):
        for j in range(len(phi)):
            # produtos escalares <ui,uj>_L
            A[i][j] = sum(phi[i, :]*phi[j, :])
    return A


print(geraBase(geraPhi()))
