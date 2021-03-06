############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np
import math

from le_arquivo import n

def f1(x):
    return 1-x**2

def f2(x):
    return math.sqrt(1-x)

def integra(x):
    n1=n(x)
    soma1 = 0
    soma2 = 0
    for i in n1:
        soma1 += f1(i[0])*i[1]
        soma2 += f2(i[0])*i[1]
    return soma1, soma2


x = int(input("Digite a precisão de nós (6, 8 ou 10): "))
soma1, soma2 = integra(x)
print("O volume calculado com n", x, " na ordem dy dx é: ", soma1, "\nO volume calculado com n", x, " na ordem dx dy é: ", soma2)

