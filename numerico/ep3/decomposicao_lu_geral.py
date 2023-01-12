############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np


def decomposicaoLUgeral(A):
    N = len(A)
    # Inicialização das matrizes U e L.
    U = np.zeros((N, N))
    L = np.zeros((N, N))
    # Cálculo das entradas das matrizes L e U.
    for i in range(N):
        # Quando i=1 as somatórias (1) e (2) não são calculadas.
        L[i][i]=1
        if(i == 0):
            U[i][i:N] = A[i][i:N]
            L[i+1:N, i] = (1/U[i][i])*(A[i+1:N, i])
        elif(i != N-1):
            U[i, i:N] = A[i, i:N]-(L[i, 1:(i-1)]@U[1:(i-1), i:N])
            L[i+1:N, i] = (1/U[i][i])*(A[i+1:N, i]-L[i+1:N, 1:i-1]@U[1:i-1, i])
        # Quando i=N a expressão (2) não é calculada.
        else:
            U[i, i:N] = A[i, i:N]-(L[i, 1:(i-1)]@U[1:(i-1), i:N])

    return U, L


print(decomposicaoLUgeral(np.array([[8, -4, -2], [-4, 10, -2], [-2, -2, 10]])))
