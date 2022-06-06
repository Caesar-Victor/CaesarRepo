############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math

from le_arquivo import n


def f1(x, y):
    return np.exp(-y**2)-((x**2+y**2)/4)


def integra(x):
    n1 = n(x)
    F = 0
    soma = 0
    for i in n1:
        for j in range(len(n1)):
            F += f1(i[0], n1[j][0]) * n1[j][1]
        soma += F*i[1]
    return soma


x = int(input("Digite a precisão de nós (6, 8 ou 10): "))
soma = integra(x)
print("O volume calculado com n", x, " é: ", soma)

