############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos, número USP: 10884301     #
############################################################

import numpy as np
import matplotlib.pyplot as plt  # pip install matplotlib


def plotador(eixoy, x, solExata):
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


def quadGauss2NosSemTipo(func, a, b):
    no1 = np.sqrt(3)/3
    # peso=1
    soma = 0
    # Fator de escala para transportar do intervalo [-1,1] para [a,b]
    ftr = (b-a)/2
    if(a != -1 or b != 1):
        soma += ftr*func(no1*ftr+(a+b)/2, a, b)+ftr * \
            func(-no1*ftr+(a+b)/2, a, b)
    else:
        soma += func(no1, a, b)+func(-no1, a, b)
    return soma


def fDotPhi(N, phi, x):
    fEscalarPhi = np.zeros([N, N])
    for i in range(N):
        for j in range(N):
            if(x[i-1] <= x[j] <= x[i]):
                # phi[i,j]=(x[j]-x[i-1])/h
                fEscalarPhi[i] = quadGauss2NosSemTipo(
                    f*phi[i, :], x[i-1], x[i])
            elif(x[i] <= x[j] <= x[i+1]):
                # phi[i,j]=(x[i+1]-x[j])/h
                fEscalarPhi[i] = quadGauss2NosSemTipo(
                    f*phi[i, :], x[i], x[i+1])
    return fEscalarPhi


def integrate(func, start, end, *args):
    steps = 10000
    h = ((end - start) / steps)
    half = h / 2
    value = 0
    for i in range(0, steps):
        dh = func(start + h * i + half, *args)
        if i == 0 or i == (steps - 1):
            value += dh
        else:
            value += (2 * dh)
    return (value * (h / 2))


def erroMax(aprox, exato):  # calcula o erro maximo em modulo
    erroMax = 0
    h = 1/(len(aprox)+1)
    for i in range(len(aprox)):
        if abs(exato(i*h)-aprox[i]) > erroMax:
            erroMax = abs(exato(i*h)-aprox[i])
    return erroMax
