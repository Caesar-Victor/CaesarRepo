######################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)
# Alunos: Caesar Victor,          número USP: 00000000
# ####### Gabriel Youssef Campos, número USP: 10884301
######################################################

import numpy as np

def decomposicaoLUgeral(N, diagonal_A, subdiagonal_cima_A, subdiagonal_baixo_A):

    # Construção da matriz A (tridiagonal) a partir dos vetores diagonal_A e subdiagonal_cima_A e subdiagonal_baixo_A.
    A = np.zeros((N - 1, N - 1))
    U = np.zeros((N - 1, N - 1))
    L = np.zeros((N - 1, N - 1))
    
    for i in range(0, N - 1):
        A[i, i] = diagonal_A[i]
        
    for i in range(0, N - 2):
        A[i,i+1] = subdiagonal_cima_A[i]
        A[i+1,i] = subdiagonal_baixo_A[i]
    
    # Cálculo das entradas das matrizes L e U.
    for i in range(0, N):
        # Quando i=1 as somatórias (1) e (2) não são calculadas.
        if(i==1):
            U[i,i:N]=A[i,i:N]
            L[(i+1):N,i]=(1/U[i,i])*(A[(i+1):N,i])
        elif(i!=N):
            U[i,i:N]=A[i,i:N]-L[i,1:(i-1)]*U[1:(i-1),i:N]
            L[(i+1):N,i]=(1/U[i,i])*(A[(i+1):N,i]-L[(i+1):N,1:(i-1)]*U[1:(i-1),i])       
        # Quando i=N a expressão (2) não é calculada.
        else:
            U[i,i:N]=A[i,i:N]-L[i,1:(i-1)]*U[1:(i-1),i:N]
            
    return U, L