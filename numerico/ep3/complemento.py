############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np
import matplotlib.pyplot as plt # pip install matplotlib
from funcoes import *
from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal

### Variáveis globais ###
N=9
x_i=np.linspace(0,1,N)
#h=1/N
h=1/(N+1)

def f(x):
    return np.exp(x)+1

def flinXphilin(x, i):
    return np.exp(x)*philin(x, i)

def fXphi(x,i):
    return ((np.exp(x))+1)*phi(x,i)

def philin(x, i):
    global h
    if i%2==0:   #-1/h
        return -1*h    
    elif i%2!=0: #1/h
        return 1*h
        
def phi(x,i):
    global h
    if i%2==0:   #(x_(i+1)-x)/h
        return (h*(i+1)-x)*h 
    elif i%2!=0: #(x + x_(i-1))/h
        return (x-(h*(i-1)))*h 

def fXphilin(x,i):
    return ((np.exp(x))+1)*philin(x,i)

def flinXphi(x,i):
    return np.exp(x)*phi(x, i)

# k(x) corresponde ao p(x) do livro do Burden
def k(x):
    return np.exp(x)

def q(x):
    return 0

def uExato(x):
    return (x-1)*((np.exp(-x))-1)

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
            soma+=ftr*func(no1*ftr+(a+b)/2,a,b,k)+ftr*func(-no1*ftr+(a+b)/2,a,b,k)
    else:
        if(tipo==1 or tipo==2 or tipo==3):
            soma+=func(no1,a,b,q)+func(-no1,a,b,q)
        elif(tipo==5 or tipo==6):
            soma+=func(no1,a,b,f)+func(-no1,a,b,f)
        else:
            soma+=func(no1,a,b,k)+func(-no1,a,b,k)
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

#l2,u2,alpha2=decomposicao_lu_tridiagonal(subdiagcima,diagonal,subdiagbaixo,vecD)

Q1=np.zeros(N)
Q2=np.zeros(N)
Q3=np.zeros(N)
Q4=np.zeros(N+1)
Q5=np.zeros(N)
Q6=np.zeros(N)
for i in range(N-1):
    Q1[i]=quadGauss2Nos(fQ1,h*i,h*i+h,1)
    Q2[i]=quadGauss2Nos(fQ2,h*i-h,h*i,2)
    Q3[i]=quadGauss2Nos(fQ3,h*i,h*i+h,3)
    Q4[i]=quadGauss2Nos(fQ4,h*i-h,h*i,4)
    Q5[i]=quadGauss2Nos(fQ5,h*i-h,h*i,5)
    Q6[i]=quadGauss2Nos(fQ6,h*i,h*i+h,6)

Q1[N-1]=quadGauss2Nos(fQ1,h*(N-1),h*(N-1)+h,1)
Q2[N-1]=quadGauss2Nos(fQ2,h*(N-1)-h,h*(N-1),2)
Q3[N-1]=quadGauss2Nos(fQ3,h*(N-1),h*(N-1)+h,3)
Q4[N-1]=quadGauss2Nos(fQ4,h*(N-1)-h,h*(N-1),4)
Q4[N]=quadGauss2Nos(fQ4,h*N-h,h*N,4)
Q5[N-1]=quadGauss2Nos(fQ5,h*(N-1)-h,h*(N-1),5)
Q6[N-1]=quadGauss2Nos(fQ6,h*(N-1),h*(N-1)+h,6)
    
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

vecC[0:N-1]=-Q4[2:N+1]+Q1[1:N]
vecB=Q4[0:N]+Q4[1:N+1]+Q2+Q3
vecA[1:N]=-Q4[1:N]+Q1[1:N]
vecD=Q5+Q6
ajuste[N-1]=vecD[1]
ajuste[0:N-1]=vecD[1:N]

l,u,alpha=decomposicao_lu_tridiagonal(vecC,vecB,vecA,ajuste)
print("O vetor de coef. alpha eh: ", alpha)

#l2,u2,alpha2=decomposicao_lu_tridiagonal(subdiagcima,diagonal,subdiagbaixo,vecD)
#print("O vetor de coef. alpha2 eh: ", alpha2)

#<phi_i,f> = integral [0,1] k * phi_i' * f' dx, k=1

uBarra=np.zeros(N)
uBarra[0]=0          #condições de contorno
for i in range(1, N-1):    
    #uBarra[i]=integra(fXphi, i, 10)
    #uBarra[i]=integra(flinXphilin, i, 10)
    uBarra[i]=integra(flinXphi, i, 10)
    #uBarra[i]=integra(fXphilin, i, 10)
uBarra[N-1]=0


plotador(uBarra,x_i,uExato,N)
#plotador(alpha2,x_i,uExato,N)

print("Até aqui tudo bem (aparentemente)")