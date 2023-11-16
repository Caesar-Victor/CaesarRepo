class No:       # Classe que armazena o conteúdo
    def __init__(self, data): 
        self.data = data 
        self.next = None
  
class Fila:      
    def __init__(self):  # Inicializacao da fila
                         # Ponteiros inicio=fim=None
        self.inicio = None
        self.fim = None
  
    def FilaVazia(self):  # Checa se a fila esta vazia
        return(self.inicio == None) # basta testar um ponteiro
      
    def InsereFila(self, item): 
        temp = No(item)       # Cria um objeto No que passa a
                              # armazenar item
        if self.fim == None:  # Se a fila esta vazia entao
                              # os dois ponteiros apontam para o mesmo No
            self.inicio = temp
            self.fim = temp
        else: # Fila nao esta vazia
              # Novo objeto No conectado no final da fila
            self.fim.next = temp 
            self.fim = temp 
   
    def RetiraFila(self): 
        aux = None  
        if not self.FilaVazia(): # Se a fila nao esta vazia
           temp = self.inicio
           aux = temp.data           # aux <-- data
           self.inicio = temp.next   # movimenta o ponteiro inicio
        if(self.inicio == None): # se a fila ficou vazia
            self.fim = None      # o ponteiro fim deve ser atualizado
        return(aux) # Se a fila estiver vazia retorna None
    
# Driver Code 
if __name__== '__main__':
  f = Fila()
  f.InsereFila("abacate")
  f.InsereFila("banana")
  f.InsereFila("kiwi")
  f.InsereFila("amora")
  # Retirada dos elementos da FILA
  # e impressao
  while not f.FilaVazia():
     print(f.RetiraFila())
