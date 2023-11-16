import heapq 
if __name__ == "__main__":
  lista = []
  a = (4,"abacate")
  b = (1,"banana")
  c = (7,"kiwi")
  d = (3, "amora")

  heapq.heappush(lista,a)
  heapq.heappush(lista,b)
  heapq.heappush(lista,d)
  heapq.heappush(lista,c)
# Armazenamento interno utiliza uma implementacao
# de arvore binaria em array
#          lista[0]
#           /    \
#     lista[1] lista[2]
#        /
#    lista[3]
  print("Armazenamento interno")
  print(lista)
  # Retirada da lista na ordem de prioridades
  print("\n Saida dos elementos por ordem de prioridade ->")
  while lista:
     print(heapq.heappop(lista))   # pop(0) remove o primeiro elemento 
