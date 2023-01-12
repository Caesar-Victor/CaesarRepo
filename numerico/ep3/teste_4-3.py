############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np
import matplotlib.pyplot as plt

from decomp_lu_tridiagonal import decomposicao_lu_tridiagonal
from funcoes_final import plotador, integrate, erroMax

n = 7
h = 1/(n+1)
x_disc = np.arange(0, 1.0001, h)
k = 3.6
Qmais = 1
Qmenos = 1
L = 1
sigma = 1
teta = 1


def phi(i, x):
    if(x <= x_disc[i - 1]):
        return 0
    elif(x <= x_disc[i]):
        hi = (x_disc[i] - x_disc[i-1])
        return ((x-x_disc[i-1])/hi)
    elif(x <= x_disc[i+1]):
        hi = (x_disc[i+1]-x_disc[i])
        return ((x_disc[i + 1] - x) / hi)
    else:
        return 0


def phi_diff(i, x):
    if(x <= x_disc[i - 1]):
        return 0
    elif(x <= x_disc[i]):
        return (1 / (x_disc[i] - x_disc[i - 1]))
    elif(x <= x_disc[i + 1]):
        return (1 / (x_disc[i] - x_disc[i + 1]))
    else:
        return 0


def f(x):
    return Qmais*np.exp(-(((x-(L/2))**2)/sigma**2))-(Qmenos*(np.exp(-((x**2)/(teta**2)))+np.exp(-((x-L)**2)/teta**2)))


def q(x):
    return 0


# Geração da matriz A do sistema Ax=d


def matA(x, i, j):
    global k
    value = k*phi_diff(i, x)*phi_diff(j, x)
    value = value+q(x)*phi(i, x)*phi(j, x)
    return value


def m(i, j):
    i = i + 1
    j = j + 1
    return integrate(matA, 0, 1, i, j)

# Geração do vetor de coeficientes


def vetorD(x, i):
    return (f(x)*phi(i, x))


def b(i):
    i = i + 1
    return integrate(vetorD, 0, 1, i)


def function(sol, x):
    value = 0
    i = 0
    for c in sol:
        value += c * phi(i + 1, x)
        i = i + 1
    return value


A = np.zeros([n, n])

vecC = np.zeros(n)
vecB = np.zeros(n)
vecA = np.zeros(n)
vecD = np.zeros(n)

# Geração dos vetores para uso na resolução do sist.
# a_{i,i+1} <=> vetor_c é a subdiagonal de cima
# Deve ser declarado com um zero no final para que possa chamar decomp_lu_tridiagonal.
# a_{i,i}   <=> vetor_b é a diagonal principal
# a_{i,i-1} <=> vetor_a é a diagonal de baixo
# Deve ser declarado com um zero no início para que possa chamar decomp_lu_tridiagonal.
# b_{i}     <=> vetor_d é o lado direito da equação matricial Ax=d

for i in range(0, n):
    vecD[i] = b(i)
    A[i, i] = m(i, i)
    if (i - 1) >= 0:
        A[i, i - 1] = m(i, i - 1)
    if (i + 1) < n:
        A[i, i + 1] = m(i, i + 1)

for i in range(0, n):  # Geração da diagonal principal
    vecB[i] = A[i, i]

for i in range(0, n-1):  # Geração das diagonais secundárias
    vecC[i] = A[i, i+1]
    vecA[i+1] = A[i+1, i]

l, u, alpha = decomposicao_lu_tridiagonal(vecC, vecB, vecA, vecD)


x_plot = np.arange(0.0, 1.0, 0.01)
uBarra = []
for i in x_plot:
    uBarra.append(function(alpha, i))

plt.grid()
plt.plot(x_plot, uBarra, 'r')
legenda = 'Teste para n='+str(n)+" Q+="+str(Qmais)+" Q-="+str(Qmenos)+" L="+str(L)+" sigma="+str(sigma)+" teta="+str(teta)
plt.legend([legenda])
plt.xlabel(r'x')
plt.ylabel(r'$\phi(x)$')
plt.savefig('Results')
plt.show()
