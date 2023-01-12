############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np

'''
def fatoraLU(A):  
    U = np.copy(A)  
    n = np.shape(U)[0]  
    L = np.eye(n)  
    for j in np.arange(n-1):  
        for i in np.arange(j+1,n):  
            L[i,j] = U[i,j]/U[j,j]  
            for k in np.arange(j+1,n):  
                U[i,k] = U[i,k] - L[i,j]*U[j,k]  
            U[i,j] = 0  
    return L, U

'''
def decomposicao_lu_geral(A):
    N = len(A)
    # Inicialização das matrizes U e L.
    U = np.zeros((N, N))
    #L = np.zeros((N, N))
    L = np.eye(N)
    
    # Cálculo das entradas das matrizes L e U.
    for i in range(N):
        # Quando i=1 as somatórias (1) e (2) não são calculadas.
        if(i == 0):
            U[i,i:N]=A[i,i:N]
            L[(i+1):N, i]=(1/U[i,i])*(A[(i+1):N, i])
        elif(i!=N-1):
            '''aux=L[i, 0]*U[i-1, i:N]
            U[i, i:N]=A[i, i:N]-L[i, 0]*U[i-1, i:N]'''#Caso n=3
            
            U[i, i:N]=A[i, i:N]-L[i, 0:i]@U[0:i, i:N]

            
            #U[i, i:N] = A[i, i:N]-L[i, 1:(i-1)]*U[1:(i-1), i:N]
            #U[i, i:N] = A[i, i:N]-np.matmul(L[i, 1:(i-1)],U[1:(i-1), i:N])
            #U[i, i:N] = A[i, i:N]-np.mat(L[i, 1:(i-1)])*np.mat(U[1:(i-1), i:N])
            #aux = L[i-1, 1:(i-1)]@U[1:(i-1), i:N-1] 
            #U[i, i:N-1] = A[i, i:N-1]-L[i, 1:(i-1)]@U[1:(i-1), i:N-1]
            #U[i, i:N] = A[i, i:N]-L[i, 1:(i-1)].dot(U[1:(i-1), i:N])


            #L[(i+1):N, i] = (1/U[i,i])*(A[(i+1):N, i]-L[(i+1):N, 1:(i-1)]*U[1:(i-1), i])
            #L[(i+1):N, i] = (1/U[i,i])*(A[(i+1):N, i]-np.matmul(L[(i+1):N, 1:(i-1)],U[1:(i-1), i]))
            #L[(i+1):N, i] = (1/U[i,i])*(A[(i+1):N, i]-np.mat(L[(i+1):N, 1:(i-1)])*np.mat(U[1:(i-1), i]))
            
            L[(i+1):N, i]=(1/U[i,i])*(A[(i+1):N, i]-L[(i+1):N, 0:i]@U[0:i, i])

        # Quando i=N a expressão (2) não é calculada.
        else:
            #U[i, i:N] = A[i, i:N]-(L[i, 1:(i-1)]*U[1:(i-1), i:N])
            #U[i, i:N] = A[i, i:N]-(np.mat(L[i, 1:(i-1)])*np.mat(U[1:(i-1), i:N]))
            U[i, i:N]=A[i, i:N]-L[i, 0:i]@U[0:i, i:N]
        #L[i][i]=1

    return U, L


#U, L= decomposicao_lu_geral(np.array([[3, 2, 4], [1, 1, 2], [4, 3, -2]]))
U, L= decomposicao_lu_geral(np.array([[8, -4, -2], [-4, 10, -2], [-2, -2, 10]]))

#U, L= fatoraLU(np.array([[3, 2, 4], [1, 1, 2], [4, 3, -2]]))
