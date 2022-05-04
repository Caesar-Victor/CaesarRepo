############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np


def decomposicao_lu_geral(A):
    N = len(A)
    # Inicialização das matrizes U e L.
    U = np.zeros((N, N))
    L = np.eye(N)

    # Cálculo das entradas das matrizes L e U.
    for i in range(N):
    # Quando i=1 as somatórias (1) e (2) não são calculadas.
        if(i == 0):
            U[i, i:N] = A[i, i:N]
            L[(i+1):N, i] = (1/U[i, i])*(A[(i+1):N, i])
        elif(i != N-1):
            U[i, i:N] = A[i, i:N]-L[i, 0:i]@U[0:i, i:N]
            L[(i+1):N, i] = (1/U[i, i]) * (A[(i+1):N, i]-L[(i+1):N, 0:i]@U[0:i, i])
        # Quando i=N a expressão (2) não é calculada.
        else:
            U[i, i:N] = A[i, i:N]-L[i, 0:i]@U[0:i, i:N]
    return U, L
