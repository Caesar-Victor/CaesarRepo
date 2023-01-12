############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np
import matplotlib.pyplot as plt

from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal
from funcoes_final import plotador, integrate


L=0.02 # L=20 mm = 0.02 m
altura=0.002 # altura=2 mm = 0.002 mm
V=(L**2)*altura
P=30 # Potência=30 W.
'''
Q0_mais=P/V
Q0_menos=-P/V
'''
Q0_mais=3
Q0_menos=-3
sigma=0.01
theta=1

n=17
h=1/(n+1)
x_disc=np.arange(0,1.0001,h)

def phi(i, x):
	if(x <= x_disc[i - 1]):
		return 0
	elif(x<=x_disc[i]):
		hi=(x_disc[i] - x_disc[i-1])
		return ((x-x_disc[i-1])/hi)
	elif(x<=x_disc[i+1]):
		hi=(x_disc[i+1]-x_disc[i])
		return ((x_disc[i + 1] - x) / hi)
	else:
		return 0

def phi_diff(i, x):
	if(x<=x_disc[i - 1]):
		return 0
	elif(x<=x_disc[i]):
		return (1 / (x_disc[i] - x_disc[i - 1]))
	elif(x<=x_disc[i + 1]):
		return (1 / (x_disc[i] - x_disc[i + 1]))
	else:
		return 0

# k(x) corresponde ao p(x) do livro do Burden
# k(x)
def p(x):
    return 3.6

def Qmais(x):
    return Q0_mais*(np.exp(-((x-L/2)**2)/(sigma**2)))

def Qmenos(x):
    return Q0_menos*(np.exp(-((x)**2)/(theta**2))+np.exp(-((x-L)**2)/(theta**2)))

# Q(x)=(Q+)+(Q-) corresponde ao f(x) 
'''
def f(x):
    return Qmais+Qmenos
'''

def q(x):
    return 0

def quadGauss2Nos(func,start,end,*args):
    no1=(np.sqrt(3))/(np.sqrt(5))
    peso1=5/9
    no2=0
    peso2=8/9
    soma=0

    ftr=(end-start)/2 # Fator de escala para transportar do intervalo [-1,1] para [a,b]

    if(start==-1 and end==1):
        soma=soma+peso1*func(no1,*args)+peso1*func(-no1,*args)
        soma=soma+peso2*func(no2,*args)+peso2*func(-no2,*args)
    else:
        soma+=peso1*ftr*func(no1*ftr+(start+end)/2,*args)+peso1*ftr*func(-no1*ftr+(start+end)/2,*args)
        soma+=peso2*ftr*func(no2*ftr+(start+end)/2,*args)+peso2*ftr*func(-no2*ftr+(start+end)/2,*args)
    return soma

# Geração da matriz A do sistema Ax=d
def matA(x, i, j):
	value = p(x)*phi_diff(i, x)*phi_diff(j, x)
	value = value+q(x)*phi(i, x)*phi(j, x)
	return value

def m(i, j):
	i = i + 1
	j = j + 1
	return integrate(matA, 0, 1, i, j)

# Geração do vetor de coeficientes
def vetorD(x, i):
	return ((Qmais(x)-Qmenos(x))*phi(i, x))

def b(i):
	i = i + 1
	return integrate(vetorD, 0, 1, i)

A=np.zeros([n,n])

vecC=np.zeros(n)
vecB=np.zeros(n)
vecA=np.zeros(n)
vecD=np.zeros(n)

# Geração dos vetores para uso na resolução do sist.
# a_{i,i+1} <=> vetor_c é a subdiagonal de cima
# Deve ser declarado com um zero no final para que possa chamar decomp_lu_tridiagonal.
# a_{i,i}   <=> vetor_b é a diagonal principal
# a_{i,i-1} <=> vetor_a é a diagonal de baixo
# Deve ser declarado com um zero no início para que possa chamar decomp_lu_tridiagonal.
# b_{i}     <=> vetor_d é o lado direito da equação matricial Ax=d

for i in range(0, n):
	vecD[i]=b(i)
	A[i, i] = m(i, i)
	if (i - 1) >= 0:
		A[i, i - 1] = m(i, i - 1)
	if (i + 1) < n:
		A[i, i + 1] = m(i, i + 1)

for i in range(0, n): # Geração da diagonal principal
	vecB[i]=A[i, i]
	
for i in range(0, n-1): # Geração das diagonais secundárias
	vecC[i]=A[i,i+1]
	vecA[i+1]=A[i+1,i]

l,u,alpha=decomposicao_lu_tridiagonal(vecC,vecB,vecA,vecD)

def function(sol, x):
	value = 0
	i = 0
	for c in sol:
		value += c * phi(i + 1, x)
		i = i + 1
	return value

#x_plot=np.arange(0.0, (L+0.001), h)
x_plot= np.arange(0.0, 1.0, 0.01)
uBarra=[]
for i in x_plot:
	uBarra.append(function(alpha, i))

plt.plot(x_plot,uBarra)
plt.grid()
plt.legend(['Rayleigh-Ritz'])
plt.xlabel(r'x')
plt.ylabel(r'$\overline{u}(x)$')
plt.show()

print("Cheguei aqui e vou parar.")

