import numpy as np
from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal

def f(x):
    return 2*(np.pi**2)*np.sin(np.pi*x)

def p(x):
    return 1

def q(x):
    return np.pi**2

x=[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9]
h=0.1
i=[0,1,2,3,4,5,6,7,8,9]
N=9

def quadGauss2Nos(func,a,b,i):
    no1=np.sqrt(3)/3
    #peso=1
    soma=0
    ftr=(b-a)/2 # Fator de escala para transportar do intervalo [-1,1] para [a,b]
    if(a!=-1 or b!=1):
        soma+=ftr*func(no1*ftr+(a+b)/2,i)+ftr*func(-no1*ftr+(a+b)/2,i)
    else:
        soma+=func(no1)+func(-no1)
    return soma

def fQ1(x,i):
    #return [(0.1*a+0.1-x)*(x-0.1*a)*(np.pi**2) for a in i]
    return 100*(0.1*i+0.1-x)*(x-0.1*i)*(np.pi**2)

def fQ2(x,i):
    return 100*((x-0.1*i+0.1)**2)*(np.pi**2)

def fQ3(x,i):
    return 100*((0.1*i+0.1-x)**2)*(np.pi**2)

def fQ4(x,i):
    return 100

def fQ5(x,i):
    return 10*(x-0.1*i+0.1)*2*(np.pi**2)*np.sin(np.pi*x)

def fQ6(x,i):
    return 10*(0.1*i+0.1-x)*2*(np.pi**2)*np.sin(np.pi*x)

Q1=np.zeros(N)
Q2=np.zeros(N)
Q3=np.zeros(N)
Q4=np.zeros(N)
Q5=np.zeros(N)
Q6=np.zeros(N)
for i in range(N):
    Q1[i]=quadGauss2Nos(fQ1,0.1*i,0.1*i+0.1,i)
    Q2[i]=quadGauss2Nos(fQ2,0.1*i-0.1,0.1*i,i)
    Q3[i]=quadGauss2Nos(fQ3,0.1*i,0.1*i+0.1,i)
    Q4[i]=quadGauss2Nos(fQ4,0.1*i-0.1,0.1*i,i)
    Q5[i]=quadGauss2Nos(fQ5,0.1*i-0.1,0.1*i,i)
    Q6[i]=quadGauss2Nos(fQ6,0.1*i,0.1*i+0.1,i)

# Geração dos vetores para uso na resolução do sist.
# a_{i,i+1} <=> vetor_c é a subdiagonal de cima
# Deve ser declarado com um zero no final para que possa chamar decomp_lu_tridiagonal.
# a_{i,i}   <=> vetor_b é a diagonal principal
# a_{i,i-1} <=> vetor_a é a diagonal de baixo
# Deve ser declarado com um zero no início para que possa chamar decomp_lu_tridiagonal.
# b_{i}     <=> vetor_d é o lado direito da equação matricial Ax=d

vecC=np.zeros(N)
vecB=np.zeros(N)
vecA=np.zeros(N)
vecD=np.zeros(N)
ajuste=np.zeros(N)

vecC[0:N-1]=-Q4[1:N]+Q1[1:N]
vecB=Q4+Q4+Q2+Q3
vecA[1:N]=-Q4[1:N]+Q1[1:N]
vecD=Q5+Q6
ajuste[N-1]=vecD[1]
ajuste[0:N-1]=vecD[1:N]

l,u,alpha=decomposicao_lu_tridiagonal(vecC,vecB,vecA,ajuste)
print("O vetor de coef. alpha eh: ", alpha)

print("Até aqui tudo bem (aparentemente")