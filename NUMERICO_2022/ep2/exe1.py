############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np

from le_arquivo import n

#f(x) = 1
def f(x):
      return 1

def integra():
      #cubo de aresta 1, integral de 0 a 1 de 1.
      n1 = n(int(input("Digite a precisão de nós (6, 8 ou 10): ")))
      soma = 0
      for i in n1:
            soma += f(i[0])*i[1]
      return soma

print (integra())