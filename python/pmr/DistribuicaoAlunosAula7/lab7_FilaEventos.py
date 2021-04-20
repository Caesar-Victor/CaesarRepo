class No:       # Classe que armazena o conteÃºdo
    def __init__(self, data):
        self.data = data
        self.next = None


class FilaEventos:
    def __init__(self):  # Inicializacao da fila
        # Ponteiros inicio=fim=None
        self.inicio = None
        self.fim = None

    def FilaEventosVazia(self):  # Checa se a fila esta vazia
        return(self.inicio == None)  # basta testar um ponteiro

    def insereFilaEventos(self, item):
        temp = No(item)
        aux = self.inicio
        achou = False
        atual = self.inicio

        if self.fim == None:
            self.inicio = temp
            self.fim = temp
        else:
            while aux.next != None:
                if aux.data[0] > item[0]:
                    achou = True
                    atual.next = temp
                    temp.next = aux
                atual = aux
                aux = aux.next
            if self.inicio.next == None:
                self.fim = self.inicio
                self.inicio = temp
                self.inicio.next = self.fim
                self.fim.next = None
            elif aux.next == None and not achou:
                self.fim.next = temp
                self.fim = temp

    def retiraFilaEventos(self):
        aux = None
        if not self.FilaEventosVazia():  # Se a fila nao esta vazia
            temp = self.inicio
            aux = temp.data           # aux <-- data
            self.inicio = temp.next   # movimenta o ponteiro inicio
        if(self.inicio == None):  # se a fila ficou vazia
            self.fim = None      # o ponteiro fim deve ser atualizado
        return(aux)  # Se a fila estiver vazia retorna None


if __name__ == '__main__':
    x = FilaEventos()
    a = (4, "abacate")
    b = (1, "banana")
    c = (7, "kiwi")
    d = (3, "amora")

    x.insereFilaEventos(a)
    x.insereFilaEventos(b)
    x.insereFilaEventos(c)
    x.insereFilaEventos(d)

    while not x.FilaEventosVazia():
        print(x.retiraFilaEventos())
