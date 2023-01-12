############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np

from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal

### Variáveis globais ###
N=3
x=np.linspace(0,1,N)
h=1/N

'''
h= []          #intialize space step
h0 = x[1] - x[0]
h.append(h0)
for i in range(N-1):
        h.append(x[i+1] - x[i])
hN = x[N] - x[N-1]
h.append(hN)
'''

def f(x):
    return 12*x*(1-x)-2

def k(x):
    return 1

def q(x):
    return 1

def p(x):
    return 1

def quadGauss2Nos(func,a,b,tipo):
    no1=np.sqrt(3)/3
    #peso=1
    soma=0
    ftr=(b-a)/2 # Fator de escala para transportar do intervalo [-1,1] para [a,b]
    if(a!=-1 or b!=1):
        if(tipo==1 or tipo==2 or tipo==3):
            soma+=ftr*func(no1*ftr+(a+b)/2,a,b,q)+ftr*func(-no1*ftr+(a+b)/2,a,b,q)
        elif(tipo==5 or tipo==6):
            soma+=ftr*func(no1*ftr+(a+b)/2,a,b,f)+ftr*func(-no1*ftr+(a+b)/2,a,b,f)
        else:
            soma+=ftr*func(no1*ftr+(a+b)/2,a,b,p)+ftr*func(-no1*ftr+(a+b)/2,a,b,p)
    else:
        if(tipo==1 or tipo==2 or tipo==3):
            soma+=func(no1,a,b,q)+func(-no1,a,b,q)
        elif(tipo==5 or tipo==6):
            soma+=func(no1,a,b,f)+func(-no1,a,b,f)
        else:
            soma+=func(no1,a,b,p)+func(-no1,a,b,p)
    return soma

def fQ1(x,a,b,func):
    return ((1/h)**2)*(b-x)*(x-a)*func(x)

def fQ2(x,a,b,func):
    return ((1/h)**2)*((x-a)**2)*func(x)

def fQ3(x,a,b,func):
    return ((1/h)**2)*((b-x)**2)*func(x)

def fQ4(x,a,b,func):
    return ((1/h)**2)*func(x)

def fQ5(x,a,b,func):
    return (1/h)*(x-a)*func(x)

def fQ6(x,a,b,func):
    return (1/h)*(b-x)*func(x)

Q1=np.zeros(N)
Q2=np.zeros(N)
Q3=np.zeros(N)
Q4=np.zeros(N)
Q5=np.zeros(N)
Q6=np.zeros(N)
'''
for i in range(N):
    for j in range(N):
        if(x[i-1]<=x[j]<=x[i]):
            Q1[i]=quadGauss2Nos(fQ1,0.1*i,0.1*i+0.1,i)
            Q2[i]=quadGauss2Nos(fQ2,0.1*i-0.1,0.1*i,i)
            Q3[i]=quadGauss2Nos(fQ3,0.1*i,0.1*i+0.1,i)
            Q4[i]=quadGauss2Nos(fQ4,0.1*i-0.1,0.1*i,i)
            Q5[i]=quadGauss2Nos(fQ5,0.1*i-0.1,0.1*i,i)
            Q6[i]=quadGauss2Nos(fQ6,0.1*i,0.1*i+0.1,i)
        elif(x[i]<=x[j]<=x[i+1]):
'''

# O mais promissor é esse:
for i in range(N):
    Q1[i]=quadGauss2Nos(fQ1,h*i,h*i+h,i)
    Q2[i]=quadGauss2Nos(fQ2,h*i-h,h*i,i)
    Q3[i]=quadGauss2Nos(fQ3,h*i,h*i+h,i)
    Q4[i]=quadGauss2Nos(fQ4,h*i-h,h*i,i)
    Q5[i]=quadGauss2Nos(fQ5,h*i-h,h*i,i)
    Q6[i]=quadGauss2Nos(fQ6,h*i,h*i+h,i)

    
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