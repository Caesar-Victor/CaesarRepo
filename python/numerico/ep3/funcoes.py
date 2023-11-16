############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np
import matplotlib.pyplot as plt
from le_arquivo_ep3 import determinaNos


def plotador(eixoy, x, solExata, N):
    # plotting
    plt.grid()
    plt.plot(x, eixoy, x, solExata(x), 'r')
    plt.legend(['Rayleigh-Ritz', 'Exact Solution'])
    plt.xlabel(r'x')
    plt.ylabel(r'$\phi(x)$')
    plt.savefig('Results')
    plt.show()
    # plt.grid()
    #plt.loglog(np.linspace(0, N, N+1),error, 'g')
    #plt.title(r'\textbf{Error growth of the integrator}')
    # plt.xlabel(r'x')
    # plt.ylabel(r'Error')
    # plt.savefig('Error')
    # plt.show()


def matrizMigue(subdiag, diag, n):
    A = np.zeros((n, n))

    for i in range(0, n):  # Geração da diagonal principal
        A[i, i] = diag

    for i in range(0, n-1):  # Geração das diagonais secundárias
        A[i, i+1] = subdiag
        A[i+1, i] = subdiag
    return A


def geraPhiChapeu(N):
    x_i = np.linspace(0, 1, N+1)
    h = x_i[1]-x_i[0]
    phiC = np.zeros([N+1], dtype='float')
    for i in range(len(x_i)-1):
        phiC[i] = (x_i[i+1]-x)/h
    phiC[N] = (x-x_i(i-1))/h
    return phiC


def integra(f, i, precisao):
    # matriz com os valores dos nós (ni[0]) e pesos (ni[1])
    n = determinaNos(precisao)
    soma1 = 0
    for j in n:
        soma1 += f(j[0], i)*j[1]
    return soma1


def geraPhiLinha(N, h):
    philin = np.zeros((N+1, N+1))
    for i in range(N-1):
        philin[i][i] = 1/h
        philin[i][i+1] = 1/h
        philin[i+1][i] = -1/h
    philin[N][N] = 1/h
    return philin


def erroMax(aprox, exato):  # calcula o erro maximo em modulo
    global h
    erroMax = 0
    for i in range(len(aprox)):
        if abs(exato(i*h)-aprox[i]) > erro:
            erroMax = exato(i*h)-aprox[i]
    return erroMax
