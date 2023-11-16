class No():       # Classe que armazena o conteÃºdo
    def __init__(self, data):
        self.data = data
        self.next = None

class Cliente():
    def __init__(self, clienteid, tipoEvento, timeEvento1):
        self.__clienteid = clienteid
        self.__tipoEvento = tipoEvento   # tipo do evento que sera' o proximo a ocorrer
        self.__timeEvento1 = timeEvento1  # instante de tempo de ocorrencia do Evento 1
        self.__timeEvento2 = 0        # idem Evento 2
        self.__timeEvento3 = 0        # idem Evento 3
        self.__caixaid = 0            # identificacao do caixa e da fila em que foi colocado

    def set_clienteid(self, clienteid):
        self.__clienteid = clienteid

    def get_clienteid(self):
        return(self.__clienteid)

    def set_tipoEvento(self, tipo):
        if tipo in range(1, 4):
            self.__tipoEvento = tipo
        else:
            print('Tipo de evento não existente')

    def get_tipoEvento(self):
        return(self.__tipoEvento)

    def set_timeEvento(self, time, tipoevento):
        if tipoevento == 1:
            self.__timeEvento1 = time
        elif tipoevento == 2:
            self.__timeEvento2 = time
        elif tipoevento == 3:
            self.__timeEvento3 = time
        else:
            print("Evento nao identificado!!!")

    def get_timeEvento(self, tipoevento):
        if tipoevento == 1:
            return(self.__timeEvento1)
        elif tipoevento == 2:
            return(self.__timeEvento2)
        elif tipoevento == 3:
            return(self.__timeEvento3)
        else:
            print("Evento nao identificado!!!")

    def set_caixaid(self, caixaid):
        self.__caixaid = caixaid

    def get_caixaid(self):
        return(self.__caixaid)

    def __lt__(self, other):
        return self.__clienteid < other.__clienteid

    def __str__(self):
        x = "clienteid = " + str(self.__clienteid) + "\n" + \
            "tipoEvento  = " + str(self.__tipoEvento) + "\n" + \
            "timeEvento1 = " + str(self.__timeEvento1) + "\n" + \
            "timeEvento2 = " + str(self.__timeEvento2) + "\n" + \
            "timeEvento3 = " + str(self.__timeEvento3) + "\n" + \
            "Caixa ID = " + str(self.__caixaid) + "\n\n"
        return(x)

# FIFO
class FilaCaixa():
    def __init__(self):
        self.__fila = []

    def insereFila(self, dado):
        self.__fila.append(dado)

    def retiraFila(self):    # retira o elemento da posicao 0 da lista
        return(self.__fila.pop(0))

    def FilaVazia(self):  # verifica se a fila esta vazia
        return(len(self.__fila) == 0)

    def tamFila(self):
        return(len(self.__fila))

class FilaEventos():
    def __init__(self):
        self.inicio = None
        self.fim = None

    # x e’ um dicionario (time,cliente)
    # time: funciona como a chave de ordenacao da fila de prioridade
    # cliente: objeto da classe Cliente()
    def insereFilaEventos(self, x):
        temp = No(x)
        aux = self.inicio
        achou = False
        atual = self.inicio

        if self.fim == None:
            self.inicio = temp
            self.fim = temp
        else:
            while aux.next != None:
                if int(aux.data[0]) > int(x[0]):
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

    # Retira da fila de eventos
    # retorna o objeto da classe Cliente()
    def retiraFilaEventos(self):
        aux = None
        if not self.FilaEventosVazia():  # Se a fila nao esta vazia
            temp = self.inicio
            aux = temp.data[1]           # aux <-- data
            self.inicio = temp.next   # movimenta o ponteiro inicio
        if(self.inicio == None):  # se a fila ficou vazia
            self.fim = None      # o ponteiro fim deve ser atualizado
        return(aux)  # Se a fila estiver vazia retorna None

    def FilaEventosVazia(self):
        return(self.inicio == None)

class ListaClientesSaida():
    def __init__(self):
        self.__filasaida = []

    def insereListaSaida(self, cliente):
        self.__filasaida.append(cliente)

    def retiraListaSaida(self):
        return(self.__filasaida.pop(0))

    def ListaSaidaVazia(self):
        if len(self.__filasaida) == 0:
            return(True)
        else:
            return(False)

    def tamListaSaida(self):
        return(len(self.__filasaida))

def verificaCaixaLivre(sinalCaixaLivre):
    cont = 0
    for i in sinalCaixaLivre:
        if i:
            return([i, cont])
        else:
            cont += 1
    return([False, cont-1])

def achaMenorFila(vetorFilaCaixa):
    minimo = vetorFilaCaixa[0].tamFila()
    aux = 0
    for i in range(len(vetorFilaCaixa)):
        if vetorFilaCaixa[i].tamFila() < minimo:
            minimo = vetorFilaCaixa[i].tamFila()
            aux = i
    
    return aux

def TamanhoDasFilas(vetorFilaCaixa):
    tamFil = []
    for i in range(nCaixas):
        tamFil.append(vetorFilaCaixa[i].tamFila())
    return tamFil

global nCaixas, lambdacliente_hour, duracaoexpediente_hour, vetorFilaCaixa, vetorTaxaDeAtendimentoCaixa, tempominimodeatendimento, sinalCaixaLivre, FE, saida, logfilas, numeroderepeticoes
nCaixas = 3
lambdacliente_hour = 15
duracaoexpediente_hour = 4
vetorFilaCaixa = 3*[None]
vetorTaxaDeAtendimentoCaixa = nCaixas*[None]
tempominimodeatendimento = 200
sinalCaixaLivre = nCaixas*[True]
FE = FilaEventos()
saida = ListaClientesSaida()
logfilas = nCaixas*[0, 0]
numeroderepeticoes = 10