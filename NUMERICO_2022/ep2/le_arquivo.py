############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

import numpy as np

def isfloat(x):
      try:
            np.double(x)
      except ValueError:
            return False
      return True


def n(x):
      arquivo = open("dados.txt", "r")
      n6 = np.zeros((3,2))
      n8 = np.zeros((4,2))
      n10 = np.zeros((5,2))
      count = 0
      for linha in arquivo:
            j = linha.split('    ')
            if isfloat(j[0]) and count < 3:
                  n6[count][0] = np.double(j[0])
                  n6[count][1] = np.double(j[1])
                  count += 1
            elif isfloat(j[0]) and count < 7:
                  if x==6:
                        return n6
                  n8[count-3][0] = np.double(j[0])
                  n8[count-3][1] = np.double(j[1])
                  count += 1
                  
            elif isfloat(j[0]):
                  if x==8:
                        return n8
                  n10[count-7][0] = np.double(j[0])
                  n10[count-7][1] = np.double(j[1])
                  count += 1
      if x==10:
            return n10
      


n(10)