############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np

def decomposicao_lu_tridiagonal(vetor_c, vetor_b, vetor_a, d):
# vetor_c é a subdiagonal de cima
# vetor_b é a diagonal principal
# vetor_a é a subdiagonal de baixo
# d é o lado direito da equação matricial Ax=d
    
    n=len(vetor_b) # n é a quantidade de elementos da diagonal principal
    
    # Construção da matriz A (tridiagonal) a partir de vetor_c, vetor_b e vetor_a.
    '''
    A = np.zeros((n, n))

    for i in range(0, n): # Geração da diagonal principal
        A[i, i]=vetor_b[i]
        
    for i in range(0, n-1): # Geração das diagonais secundárias
        A[i,i+1]=vetor_c[i]
        A[i+1,i]=vetor_a[i+1]
        #A[i+1,i]=vetor_a[i]
    '''
    vetor_u = np.zeros(n)
    vetor_l = np.zeros(n)
    
    vetor_u[0]=vetor_b[0]
    
    for i in range(1, n):
        vetor_l[i]=vetor_a[i]/vetor_u[i-1]
        vetor_u[i]=vetor_b[i]-vetor_l[i]*vetor_c[i-1]
        
    y = np.zeros(n)
    x = np.zeros(n)
    
    y[0]=d[0]
    for i in range(1, n):
        y[i]=d[i]-vetor_l[i]*y[i-1]

    x[n-1]=y[n-1]/vetor_u[n-1]
    
    for i in range(n-2, -1, -1):
        x[i]=(y[i]-(vetor_c[i]*x[i+1]))/vetor_u[i]
    
    return vetor_l, vetor_u, x

'''
d=[1,2,3,5]
A=[[1,3,0,0],
   [7,1,3,0],
   [0,7,1,3],
   [0,0,7,1]]
c=[3,3,3,0] # Deve ser declarado com um zero no final
b=[1,1,1,1]
a=[0,7,7,7] # Deve ser declarado com um zero no início

l,u,x,=decomposicao_lu_tridiagonal(c,b,a,d)

print("O vetor solucao eh:", x)
'''