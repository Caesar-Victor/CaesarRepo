############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math

from le_arquivo import n


def f1(x,y):
    x1 = ((0.2)*x) + 0.3
    y1 = ((x1**2-x1**3)/2)*y + ((x1**2+x1**3)/2)
    return math.sqrt((((-y1*np.exp(y1/x1))/x1**2)**2)+((np.exp(y1/x1)/x1)**2)+1) * (0.2) * ((x**2-x**3)/2)


def integra(x):
    n1 = n(x)
    F = 0
    soma = 0
    v=0
    for i in n1:
        for j in range(len(n1)):
            v=((i[0]**2-i[0]**3)/2)*n1[j][1] + ((i[0]**2+i[0]**3)/2)
            F += f1(i[0], n1[j][0]) * v
        soma += F*i[1]
    return soma


x = int(input("Digite a precisão de nós (6, 8 ou 10): "))
soma1 = integra(x)
print("A area da superfície descrita", x, " n é: ", soma1)
