
class Fila():
    def __init__(self):
        self.__fila = []
    
    def insereFila(self,dado):
        self.__fila.append(dado)
        
    def retiraFila(self):    # retira o elemento da posicao 0 da lista
        return(self.__fila.pop(0))
        
    def FilaVazia(self): # verifica se a fila esta vazia
        if len(self.__fila) == 0:
            return(True)
        else:
            return(False)
            
if __name__== '__main__':    
  f = Fila()
  f.insereFila("abacate")
  f.insereFila("banana")
  f.insereFila("kiwi")
  f.insereFila("amora")
  # Retirada dos elementos da FILA
  # e impressao
  while not f.FilaVazia():
     print(f.retiraFila())