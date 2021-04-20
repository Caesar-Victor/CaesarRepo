# -*- coding: utf-8 -*-
# Lucas Oliveira de Paula - 10773680
# Victor Nasciemnto Pereira - 10773530

import math
import numpy as np
import matplotlib.pyplot as plt
import random


def fazx(n):
    x = []
    for i in range(n + 1):
        x.append(i / n)
    return x


def fazt(m):
    t = []
    for i in range(int(m) + 2):
        t.append(i / (int(m)+1))
    return t


def metodo11(x, t, a):
    u = []
    linha = []
    conta = 0
    uo = 0
    p = 0.25
    meiodeltax = x[1] / 2
    for k in range(len(t)):
        if k == 0:
            if a == 1 or a == 4:
                linha.append([0] * len(x))
                u = linha
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 2:
                for j in range(len(x)):
                    uo = x[j] * x[j] * (1 - x[j]) * (1 - x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 3:
                for j in range(len(x)):
                    uo = math.exp(-x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            else:
                print("f(t,x) invalida")
                break
        else:
            linha = []
            if a == 1 or a == 2 or a == 4:
                linha.append(0)
            elif a == 3:
                g1 = math.exp(t[k])
                linha.append(g1)
            for i in range(1, len(x) - 1):
                if a == 1:
                    f = (10 * x[i] ** 2 * (x[i] - 1)
                         - 60 * x[i] * t[k - 1]
                         + 20 * t[k - 1])
                elif a == 2:
                    b = (10 * math.cos(10 * t[k-1])
                         * x[i] * x[i] * (1 - x[i])
                         * (1 - x[i]))
                    c = (1 + math.sin(10 * t[k - 1])) \
                        * (12 * x[i] * x[i] - 12 * x[i] + 2)
                    f = b - c
                elif a == 3:
                    b = 25*t[k-1]*t[k-1] * (math.exp(t[k-1]-x[i])) \
                        * (math.cos(5*t[k-1]*x[i]))
                    c = 10*t[k-1] * (math.sin(5*t[k-1]*x[i]))
                    d = 5*x[i] * (math.exp(t[k-1]*x[i])) * \
                        (math.sin(5*t[k-1]*x[i]))
                    f = b - c - d
                elif a == 4:
                    if x[i] <= (p + meiodeltax) and x[i] >= (p - meiodeltax):
                        f = 10000 * (1 - 2 * t[k - 1] * t[k - 1]) * (1/x[1])
                    elif x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                        f = 0
                else:
                    print("f(t,x) invalida")
                    break
                conta = u[k - 1][i] + (1 / (len(t) - 1)) * (
                    ((u[k - 1][i - 1] - 2 * u[k - 1][i] + u[k - 1][i + 1])
                        / ((1 / (len(x) - 1)) ** 2)) + f)
                linha.append(conta)
            if a == 1 or a == 2 or a == 4:
                linha.append(0)
            elif a == 3:
                g2 = math.exp(t[k] - 1) * math.cos(5 * t[k])
                linha.append(g2)
            u.append(linha)
            progressbar1(len(u)-1, len(t), 'Calculando')

    calculatrunc(t, x, u, a, 1)


def euler(x, t, a):
    n = len(x) - 1
    m = len(t) - 1
    lmbda = n*n/m
    u = []
    linha = []
    principal = []
    secundaria = []
    b = []
    vetorx = []
    uo = 0
    p = 0.25
    meiodeltax = x[1] / 2

    for j in range(0, n-1):     # Matriz A
        principal.append(1 + 2*lmbda)
        if j != n-2:
            secundaria.append(-lmbda)
    for k in range(0, m+1):
        b = []
        vetorx = []
        if k == 0:
            if a == 1 or a == 4:
                linha.append([0] * (n+1))
                u = linha
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 2:
                for j in range(n+1):
                    uo = x[j] * x[j] * (1 - x[j]) * (1 - x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 3:
                for j in range(n+1):
                    uo = math.exp(-x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')

        else:
            linha = []
            if a == 1 or a == 2 or a == 4:
                g1 = 0
                linha.append(g1)
            elif a == 3:
                g1 = math.exp(t[k])
                linha.append(g1)
            if a == 1 or a == 2 or a == 4:
                g2 = 0
            elif a == 3:
                g2 = math.exp(t[k] - 1) * math.cos(5 * t[k])

            for i in range(1, n):                           # Matriz B
                if a == 1:
                    f = (10 * x[i] ** 2 * (x[i] - 1) -
                         60 * x[i] * t[k] + 20 * t[k])
                elif a == 2:
                    c = (10 * math.cos(10 * t[k]) * x[i]
                         * x[i] * (1 - x[i]) * (1 - x[i]))
                    d = (1 + math.sin(10 * t[k])) * \
                        (12 * x[i] * x[i] - 12 * x[i] + 2)
                    f = c - d
                elif a == 3:
                    c = 25*t[k]*t[k] * (math.exp(t[k]-x[i])) * \
                        (math.cos(5*t[k]*x[i]))
                    d = 10*t[k] * (math.sin(5*t[k]*x[i]))
                    e = 5*x[i] * (math.exp(t[k]*x[i])) * \
                        (math.sin(5*t[k]*x[i]))
                    f = c - d - e
                elif a == 4:
                    if x[i] <= (p + meiodeltax) and x[i] >= (p - meiodeltax):
                        f = 10000 * (1 - 2 * t[k] * t[k]) * (1/x[1])
                    elif x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                        f = 0
                if i == 1:
                    valorb = u[k-1][i] + (f / m) + lmbda * g1
                elif i == (n-1):
                    valorb = u[k-1][i] + (f / m) + lmbda * g2
                else:
                    valorb = u[k-1][i] + (f / m)
                b.append(valorb)
            l, d = ldl(principal, secundaria, n)
            vetorx = resolvex(l, d, n, b)
            for j in range(0, len(vetorx)):
                linha.append(vetorx[j])
            linha.append(g2)
            u.append(linha)
            progressbar1(len(u)-1, len(t), 'Calculando')
    calculatrunc(t, x, u, a, 2)


def crank(x, t, a, p, v):
    n = len(x) - 1
    m = len(t) - 1
    lmbda = n*n/m
    u = []
    linha = []
    principal = []
    secundaria = []
    b = []
    vetorx = []
    uo = 0
    meiodeltax = x[1] / 2

    for j in range(0, n-1):                          # Matriz A
        principal.append(1 + lmbda)
        if j != n-2:
            secundaria.append(-lmbda/2)

    for k in range(0, m+1):
        b = []
        vetorx = []
        if k == 0:
            if a == 1 or a == 4:
                linha.append([0] * (n+1))
                u = linha
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 2:
                for j in range(n+1):
                    uo = x[j] * x[j] * (1 - x[j]) * (1 - x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')
            elif a == 3:
                for j in range(n+1):
                    uo = math.exp(-x[j])
                    linha.append(uo)
                u.append(linha)
                progressbar1(len(u)-1, len(t), 'Calculando')
                plt.plot(linha, 'k', color='orange')

        else:
            linha = []
            if a == 1 or a == 2 or a == 4:
                g1 = 0
                linha.append(g1)
            elif a == 3:
                g1 = math.exp(t[k])
                linha.append(g1)
            if a == 1 or a == 2 or a == 4:
                g2 = 0
            elif a == 3:
                g2 = math.exp(t[k] - 1) * math.cos(5 * t[k])

            for i in range(1, n):                           # Matriz B
                if a == 1:
                    f1 = (10 * x[i] ** 2 * (x[i] - 1) -
                          60 * x[i] * t[k-1] + 20 * t[k-1])
                    f2 = (10 * x[i] ** 2 * (x[i] - 1) -
                          60 * x[i] * t[k] + 20 * t[k])
                    f = f1 + f2
                elif a == 2:
                    c1 = (10 * math.cos(10 * t[k-1]) * x[i]
                          * x[i] * (1 - x[i]) * (1 - x[i]))
                    d1 = (1 + math.sin(10 * t[k-1])) * \
                        (12 * x[i] * x[i] - 12 * x[i] + 2)
                    f1 = c1 - d1
                    c2 = (10 * math.cos(10 * t[k]) * x[i]
                          * x[i] * (1 - x[i]) * (1 - x[i]))
                    d2 = (1 + math.sin(10 * t[k])) * \
                        (12 * x[i] * x[i] - 12 * x[i] + 2)
                    f2 = c2 - d2
                    f = f1 + f2
                elif a == 3:
                    b1 = 25*t[k]*t[k] * (math.exp(t[k]-x[i])) * \
                        (math.cos(5*t[k]*x[i]))
                    c1 = 10*t[k] * (math.sin(5*t[k]*x[i]))
                    d1 = 5*x[i] * (math.exp(t[k]*x[i])) * \
                        (math.sin(5*t[k]*x[i]))
                    f1 = b1 - c1 - d1
                    b2 = 25*t[k-1]*t[k-1] * \
                        (math.exp(t[k-1]-x[i])) * (math.cos(5*t[k-1]*x[i]))
                    c2 = 10*t[k-1] * (math.sin(5*t[k-1]*x[i]))
                    d2 = 5*x[i] * (math.exp(t[k-1]*x[i])) * \
                        (math.sin(5*t[k-1]*x[i]))
                    f2 = b2 - c2 - d2
                    f = f1 + f2
                elif a == 4:
                    if v == 1:
                        if x[i] <= (p + meiodeltax) and x[i] >= (p - meiodeltax):
                            f1 = 10000 * (1 - 2 * t[k-1] * t[k-1]) * (1/x[1])
                            f2 = 10000 * (1 - 2 * t[k] * t[k]) * (1/x[1])
                            f = f1 + f2
                        elif x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                            f = 0
                    elif v == 2:
                        if x[i] <= (p + meiodeltax) and x[i] >= (p - meiodeltax):
                            f1 = (10 + 10*math.cos(5*t[k-1])) / x[1]
                            f2 = (10 + 10*math.cos(5*t[k])) / x[1]
                            f = f1 + f2
                        elif x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                            f = 0
                if i == 1:
                    valorb = ((lmbda/2) * (u[k-1][i-1]-2*u[k-1][i]+u[k-1][i+1])) + (
                        u[k-1][i]) + (f/(2*m)) + ((lmbda/2)*g1)
                elif i == (n-1):
                    valorb = ((lmbda/2) * (u[k-1][i-1]-2*u[k-1][i]+u[k-1][i+1])) + (
                        u[k-1][i]) + (f/(2*m)) + ((lmbda/2)*g2)
                else:
                    valorb = (
                        (lmbda/2) * (u[k-1][i-1]-2*u[k-1][i]+u[k-1][i+1])) + (u[k-1][i]) + (f/(2*m))
                b.append(valorb)

            l, d = ldl(principal, secundaria, n)
            vetorx = resolvex(l, d, n, b)
            for j in range(0, len(vetorx)):
                linha.append(vetorx[j])
            linha.append(g2)
            u.append(linha)
            progressbar1(len(u)-1, len(t), "Calculando")
    if v == 1:
        calculatrunc(t, x, u, a, 3)
    elif v == 2:
        return u[m]


def resolvex(l, d, n, b):
    y = []
    z = []
    x = []
    a = 0

    for i in range(0, n-1):
        x.append(i)

    y.append(b[0])
    for i in range(1, n-1):
        a = b[i] - l[i-1]*y[i-1]
        y.append(a)
    for i in range(0, n-1):
        a = y[i]/d[i]
        z.append(a)
    x[n-2] = z[n-2]
    for i in range(1, n-1):
        x[n-2-i] = z[n-2-i] - l[n-2-i]*x[n-1-i]
    return x


def ldl(principal, secundaria, n):
    l = []
    d = []
    d.append(principal[0])
    l.append(secundaria[0]/d[0])
    for i in range(1, n-1):
        d.append(principal[i] - l[i-1]*l[i-1]*d[i-1])
        if len(secundaria) > 1 and i < (n-2):
            l.append(secundaria[i]/d[i])
    return (l, d)


def calculatrunc(t, x, u, a, b):
    maior = 0
    p = 0.25
    meiodeltax = x[1] / 2

    for k in range(len(t) - 1):
        for i in range(1, len(x) - 1):
            e1 = (len(t) - 1) * (u[k + 1][i] - u[k][i])
            e2 = (len(x) - 1) * (len(x) - 1) * \
                (u[k][i - 1] - 2 * u[k][i] + u[k][i + 1])
            e2k = (len(x) - 1) * (len(x) - 1) * \
                (u[k+1][i - 1] - 2 * u[k+1][i] + u[k+1][i + 1])

            if a == 1:
                f = 10 * x[i] * x[i] * (x[i] - 1) - \
                    60 * x[i] * t[k] + 20 * t[k]
                fk = 10 * x[i] * x[i] * (x[i] - 1) - \
                    60 * x[i] * t[k+1] + 20 * t[k+1]
            elif a == 2:
                b = 10 * math.cos(10 * t[k]) * x[i] * \
                    x[i] * (1 - x[i]) * (1 - x[i])
                c = (1 + math.sin(10 * t[k])) * \
                    (12 * x[i] * x[i] - 12 * x[i] + 2)
                f = b - c
                bk = 10 * math.cos(10 * t[k+1]) * \
                    x[i] * x[i] * (1 - x[i]) * (1 - x[i])
                ck = (1 + math.sin(10 * t[k+1])) * \
                    (12 * x[i] * x[i] - 12 * x[i] + 2)
                fk = bk - ck
            elif a == 3:
                b = 25*t[k]*t[k] * (math.exp(t[k]-x[i])) * \
                    (math.cos(5*t[k]*x[i]))
                c = 10*t[k] * (math.sin(5*t[k]*x[i]))
                d = 5*x[i] * (math.exp(t[k]*x[i])) * (math.sin(5*t[k]*x[i]))
                f = b - c - d
                bk = 25*t[k+1]*t[k+1] * \
                    (math.exp(t[k+1]-x[i])) * (math.cos(5*t[k+1]*x[i]))
                ck = 10*t[k+1] * (math.sin(5*t[k]*x[i]))
                dk = 5*x[i] * (math.exp(t[k+1]*x[i])) * \
                    (math.sin(5*t[k+1]*x[i]))
                fk = bk - ck - dk
            elif a == 4 and x[i] >= (p - meiodeltax) and x[i] <= (p + meiodeltax):
                f = 10000 * (1 - 2 * t[k] * t[k]) * (1/x[1])
                fk = 10000 * (1 - 2 * t[k+1] * t[k+1]) * (1/x[1])
            elif a == 4 and x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                f = 0
                fk = 0
            if b == 2:
                e2 = e2k
            elif b == 3:
                e2 = e2 + e2k
                f = f+fk
            e = e1 - e2 - f
            if abs(e) > maior:
                maior = e
                posk = k
                posi = i
        progressbar1(k, len(t), 'Calculando Truncamento')
    progressbar1(k+1, len(t), 'Calculando Truncamento')
    print("\nDADOS:")
    print("\nMaior erro de truncamento = ", f'{abs(maior):.2e}', " ,em t= ",
          f'{abs(t[posk]):.2e}', " e x= ", f'{abs(x[posi]):.2e}')
    erroreal(t, x, u, a, b)


def erroreal(t, x, u, a, b):
    erro = []
    linhaerro = []
    maior = 0
    menor = 0
    maiort1 = 0
    p = 0.25
    meiodeltax = x[1] / 2
    maiorureal = 0
    menorureal = 0
    usollinha = []
    usol = []
    n = len(x)-1
    m = len(t)-1
    div = m / 2
    lmbda = n*n/m

    if a == 4:
        for k in range(len(t)-1):
            usollinha = []
            if k == 0:
                linhaerro.append([0] * len(x))
                erro = linhaerro
                usollinha.append([0] * len(x))
                usol = usollinha
            elif k > 0:
                linhaerro = []
                linhaerro.append(0)
                for i in range(1, len(x) - 1):
                    e1 = (len(t) - 1) * (u[k + 1][i] - u[k][i])
                    e2 = (len(x) - 1) * (len(x) - 1) * \
                        (u[k][i - 1] - 2 * u[k][i] + u[k][i + 1])
                    e2k = (len(x) - 1) * (len(x) - 1) * \
                        (u[k+1][i - 1] - 2 * u[k+1][i] + u[k+1][i + 1])
                    if x[i] >= (p - meiodeltax) and x[i] <= (p + meiodeltax):
                        f = 10000 * (1 - 2 * t[k] * t[k]) * (1/x[1])
                        fk = 10000 * (1 - 2 * t[k] * t[k+1]) * (1/x[1])
                    elif x[i] < (p - meiodeltax) or x[i] > (p + meiodeltax):
                        f = 0
                        fk = 0
                    if b == 1:
                        e2 = e2k
                    if b == 2:
                        e2 = e2k + e2
                        f = f + fk
                    errotrunc = e1 - e2 - f
                    e = erro[k - 1][i] + (1 / (len(t) - 1)) * ((erro[k - 1][i - 1] - 2 * erro[k - 1]
                                                                [i] + erro[k - 1][i + 1]) * (len(x) - 1) * (len(x) - 1) + errotrunc)
                    linhaerro.append(e)
                    ureal = e + u[k][i]

                    if k/div == int(k/div) or k == len(t)-2:
                        if i == 1:
                            usollinha.append(0)
                        usollinha.append(ureal)
                        if i == len(x)-2:
                            usollinha.append(0)
                    if ureal > maiorureal:
                        maiorureal = ureal
                    if ureal < menorureal:
                        menorureal = ureal
                    if e > maior:
                        maior = e
                    if k == (len(t) - 1) and e > maiort1:
                        maiort1 = e
                    linhaerro.append(0)
                if k/div == int(k/div) or k == len(t)-2:
                    usol.append(usollinha)
                erro.append(linhaerro)
            progressbar1(k+1, len(t), 'Calculando erro real')
    else:
        for k in range(len(t)):
            usollinha = []
            for i in range(0, len(x)):
                if a == 1:
                    ureal = 10 * t[k] * x[i] * x[i] * (x[i] - 1)
                elif a == 2:
                    ureal = (
                        (1 + math.sin(10 * t[k])) * x[i] * x[i] * (1 - x[i]) * (1 - x[i]))
                elif a == 3:
                    ureal = (math.exp(t[k] - x[i])) * \
                        (math.cos(5 * t[k] * x[i]))
                e = ureal - u[k][i]
                if ureal > maiorureal:
                    maiorureal = ureal
                if ureal < menorureal:
                    menorureal = ureal
                if e > maior:
                    maior = e
                if e < menor:
                    menor = e
                if k == len(t) - 1 and e > maiort1:
                    maiort1 = e
                if k/div == int(k/div):
                    usollinha.append(ureal)
            if k/div == int(k/div):
                usol.append(usollinha)
            progressbar1(k, len(t), 'Calculando erro real')

    margem = (maiorureal - menorureal)/50
    print("Maior erro absoluto =", max(
        f'{abs(maior):.2e}', f'{abs(menor):.2e}'))
    print("Maior erro absoluto em (t=1) = ", f'{abs(maiort1):.2e}')
    print("\nQual gráfico deseja ver? -")
    print("1 - Gráfico da solução numérica comparada com ureal")
    b = int(input("2 - Gráfico da solução numérica e sua evolução temporal\
                   \nQual deseja plotar? - "))
    if b == 1:
        plotadorreal(t, u, usol, n, lmbda, maiorureal +
                     margem, menorureal-margem)
    if b == 2:
        plotadortemporal(t, u, n, lmbda, maiorureal+margem, menorureal-margem)


def plotadorreal(t, u, usol, n, lmbda, maior, menor):
    m = len(u)-1
    div = m / (len(usol)-1)
    for i in range(0, len(u), int(div)):
        a = int(i/div)
        if a == 0:
            plt.plot(usol[a], label='u real t=%.2f' % t[i], color='black')
            plt.legend()
        elif a == 1:
            plt.plot(u[i], label='u aproximado t=%.2f' % t[i], color='red')
            plt.legend()
            plt.plot(usol[a], label='u real t=%.2f' % t[i], color='green')
            plt.legend()
        elif a == 2:
            plt.plot(u[i], label='u aproximado t=%.2f' % t[i], color='blue')
            plt.legend()
            plt.plot(usol[a], label='u real t=%.2f' % t[i], color='pink')
            plt.legend()
    plt.axis([0, n, menor, maior])
    plt.title("Grafico para N= %d e lambda= %.2f " % (len(u[0])-1, lmbda))

    plt.grid(True)
    plt.xlabel("Barra")

    plt.ylabel("Temperatura")
    plt.show()


def plotadortemporal(t, u, n, lmbda, maior, menor):
    m = len(u)-1
    div = m / 10
    print('\n1 - De 0 a 0.5s (de 0.1s em 0.1s)')
    print('2 - De 0.6 a 1s (de 0.1s em 0.1s)')
    y = int(input("Em que intervalo deseja ver o gráfico temporal?  "))

    if y == 1:
        for i in range(0, len(u), int(div)):
            if i == 0:
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='red')
            elif i == int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='orange')
            elif i == 2*int(div) or i == 7*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='olive')
            elif i == 3*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='yellow')
            elif i == 4*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='green')
            elif i == 5*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='cyan')
    elif y == 2:
        for i in range(int(len(u)/2), len(u), int(div)):
            if i == 6*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='blue')
            elif i == 7*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='purple')
            elif i == 8*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='magenta')
            elif i == 9*int(div):
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='brown')
            elif i == m:
                plt.plot(u[i], label='u para t=%.2f' % t[i], color='black')
    plt.legend()
    plt.axis([0, n, menor, maior])
    plt.title("Grafico para N= %d e lambda= %.2f com intervalos de 0.1s" %
              (len(u[0])-1, lmbda))

    plt.grid(True)
    plt.xlabel("Barra")

    plt.ylabel("Temperatura")
    plt.show()


def progressbar1(tamu, tamt, f="Progresso"):
    nt = tamt-1
    porcentagem = (tamu/nt*100)
    t = (nt)/10
    v = [0, t, 2*t, 3*t, 4*t, 5*t, 6*t, 7*t, 8*t, 9*t, nt]
    if tamu in v:
        s = f + ": [" + ('#'*int(porcentagem)) + (" "*int(100-porcentagem)
                                                  ) + '] ' + str('%d' % (porcentagem)) + '% concluido'
        print(s)
