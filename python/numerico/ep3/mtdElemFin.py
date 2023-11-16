############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np

from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal

# Equação do método de elementos finitos.

N=5
x=np.linspace(0,1,N+2)

h = []          #intialize space step
h0 = x[1] - x[0]
h.append(h0)
for i in range(N-1):
        h.append(x[i+1] - x[i])
hN = x[N] - x[N-1]
h.append(hN)

def f(x):
    #return 1-x**2
    return np.sqrt(1+x**2)

#def quadGauss2Nos(f,a,b):
def quadGauss2Nos(a,b):
    no1=np.sqrt(3)/3
    #peso=1
    soma=0
    ftr=(b-a)/2 # Fator de escala para transportar do intervalo [-1,1] para [a,b]
    if(a!=-1 or b!=1):
        soma+=ftr*f(no1*ftr+(a+b)/2)+ftr*f(-no1*ftr+(a+b)/2)
    else:
        soma+=f(no1)+f(-no1)
    
    return soma
'''
integral=quadGauss2Nos(f1,3,7)
print("O valor da integral eh:", integral)
print("Devo continuar?")
'''

def geraPhi(N,x):
    #N=10  # Valor arbitrário por enquanto
    
    #h=1/(N+1)
    # Vamos substituir por h_i=x_{i+1}-x_i
    # Assim, h{i-1}=x_{i-1+1}-x_{i-1}=x_{i}-x_{i-1}
    #x=np.zeros(n) # 0<x<1
    
    #x=np.linspace(0,1,N)
    #x=([0.        , 0.11111111, 0.22222222, 0.33333333, 0.44444444,
    #    0.55555556, 0.66666667, 0.77777778, 0.88888889, 1.        ])

    xTeste=np.zeros(N)
    for i in range(0,N):
        xTeste[i]=i/(N+1)
    #xTeste=([0.        , 0.09090909, 0.18181818, 0.27272727, 0.36363636,
    #         0.45454545, 0.54545455, 0.63636364, 0.72727273, 0.81818182])

    phi=np.zeros([N,N])

    for i in range(N):
        # x_i=i/(n+1)
        #x[i+1] = (i+1)*h
        for j in range(N):
            # Definição das funções chapéu phi(x)
            """
            if (0<=x[j]<=x[i]): 
                phi[i,j] = 0
            # Caso ja tratado inicializando a phi(x) com zeros
            """
            if(x[i-1]<=x[j]<=x[i]):
                #phi[i,j]=(x[j]-x[i-1])/h
                #phi[i,j]=(x[j]-x[i-1])/(x[i]-x[i-1]) # h_{i-1}=x[i]-x[i-1]
                phi[i,j]=(x[j]-x[i-1])/h[j-1]
            elif(x[i]<=x[j]<=x[i+1]):
                #phi[i,j]=(x[i+1]-x[j])/h
                #phi[i,j]=(x[i+1]-x[j])/(x[i+i]-x[i]) # h_i=x[i+i]-x[i]
                phi[i,j]=(x[i+1]-x[j])/h[j]

        # <phi_1, phi_1>= <phi[1, :],phi[1, :]>

    # Tendo phi, vamos montar a matriz dada em (8) no enunciado.
    return phi

#print("Cheguei aquie aguardo.")
'''
teste=([[0. , 0. , 0. , 0. , 0. ],
        [0. , 1.5, 0. , 0. , 0. ],
        [0. , 0. , 1.5, 0. , 0. ],
        [0. , 0. , 0. , 1.5, 0. ],
        [0. , 0. , 0. , 0. , 0. ]])
'''

#def prodFPhi(N,f,phi,x):
'''
def prodFPhi(N,phi,x):
    fEscalarPhi=np.zeros([N,N])
    for i in range(N):
        for j in range(N):
            if(x[i-1]<=x[j]<=x[i]):
                #phi[i,j]=(x[j]-x[i-1])/h
                fEscalarPhi[i]=quadGauss2Nos(f(x[j])*phi[i,:],x[i-1],x[i])
            elif(x[i]<=x[j]<=x[i+1]):
                #phi[i,j]=(x[i+1]-x[j])/h
                fEscalarPhi[i]=quadGauss2Nos(f(x[j])*phi[i,:],x[i],x[i+1])
    return fEscalarPhi
'''
def geraBase(phi):
    A=np.zeros([len(phi[0]), len(phi[0])])
    for i in range(len(phi)):
        for j in range(len(phi)):
            # produtos escalares <ui,uj>_L
            # A[i][j] = sum(phi[i, :]*phi[j, :])
            A[i][j]=np.dot(phi[j,:], phi[i,:])
    return A

def main():
    phi=geraPhi(N,x)
    A=geraBase(geraPhi(N,x))
    # Resolução do sistema Ax=d
    vecB=np.zeros(N)
    vecC=np.zeros(N)
    vecA=np.zeros(N)
    for i in range(0, N): # Geração da diagonal principal
        vecB[i]=A[i,i]
        
    for i in range(0, N-1): # Geração das diagonais secundárias
        vecC[i]=A[i,i+1]
        vecA[i+1]=A[i+1,i]

    #vecD=prodFPhi(N,f,phi,x)
    #vecD=prodFPhi(N,phi,x)
    # vecD=Q_{5,i}+Q_{6,i}
    vecD=np.zeros(N)
    for i in range(N-1):
        vecD[i]=(h[i-1]/6)*(2*f(x[i])-f(x[i-1]))+(h[i+1]/6)*(2*f(x[i])-f(x[i+1])) 

    l,u,alpha=decomposicao_lu_tridiagonal(vecC,vecB,vecA,vecD)

    uBarra=0
    for i in range(N):
        uBarra+=alpha[i]*phi[i,:]

    #print(geraBase(geraPhi()))

    print("Agora que acabei vou te avisar")
    print("E vou printar a aprox. para u \n", uBarra)

if __name__ == "__main__":
    main()