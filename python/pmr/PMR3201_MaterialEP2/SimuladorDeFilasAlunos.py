# Bibliotecas Python
import sys
import matplotlib.pyplot as plt
import numpy as np
import datetime

# Classes desenvolvidas para o Simulador de Filas
from AleatorioAlunos import *
from FilasAlunos import *

# definir aqui a funcao simulacao
def simulacao(eventos):
    cliente = None
    atual = None
    time = ''
    caixa = []
    for i in range(eventos):
        time = tempo(datetime.time(), '0', '+')
        cliente = Cliente(i, 1, time)
        FE.insereFilaEventos([cliente.get_timeEvento(1), cliente])
    while not FE.FilaEventosVazia():
        atual = FE.retiraFilaEventos()
        caixa = verificaCaixaLivre(sinalCaixaLivre)
        if atual.get_tipoEvento() == 1:
            if caixa[0]:
                time = tempo(datetime.time(), atual.get_timeEvento(1), '-')
                FE.insereFilaEventos([time, Cliente(atual.get_clienteid(), 2, 
                                                        atual.get_timeEvento(1))])
                sinalCaixaLivre[caixa[1]]=False
            else:
                vetorFilaCaixa[achaMenorFila(vetorFilaCaixa)].insereFila(cliente)
                logfilas[caixa[1]]=[str(datetime.time()), TamanhoDasFilas(vetorFilaCaixa)]
        elif atual.get_tipoEvento() == 2:
            time = tempo(TempoDeAtendimentoCaixa(vetorTaxaDeAtendimentoCaixa[caixa[1]], 
                            tempominimodeatendimento), atual.get_timeEvento(1), '+')
            FE.insereFilaEventos([time, Cliente(atual.get_clienteid(), 3, 
                                                            atual.get_timeEvento(1))])
        else:
            saida.insereListaSaida(atual)
            sinalCaixaLivre[caixa[1]] = True
            if vetorFilaCaixa[caixa[1]] != None:
                if not vetorFilaCaixa[caixa[1]].FilaVazia():
                    atual = vetorFilaCaixa[caixa[1]].retiraFila()
                logfilas[caixa[1]]=[str(datetime.time()), TamanhoDasFilas(vetorFilaCaixa)]
            if atual.next != None:
                atual=FE.retiraFilaEventos()
                FE.insereFilaEventos([datetime.time(), Cliente(atual.get_clienteid, 2, atual.get_timeEvento(1))])                
                
def tempo(h1, h2, op):
    h1=str(h1)
    ht = str(h2)
    h2 = [0]*8
    tam = len(ht)-1
    for i in range(7, -1, -1):
        if i == 2 or i == 5:
            h2[i] = ':'
        elif tam >= 0:
            h2[i] = ht[tam]
            tam -= 1
    t=''
    for i in range(len(h1)):
        if i != 2 and i != 5:
            if op == '-':
                t = t+str(int(h1[i]) - int(h2[i]))
            elif op == '+':
                t = t + str(int(h1[i]) + int(h2[i]))
    return t


  # Programa main

if __name__ == "__main__":

    # taxa de chegada de clientes por hora
    # A simulacao usa segundos mas a taxa por hora é demais
    # facil compreeensao para o usuario

    # Duracao total do expediente em horas

    # Definicao dos caixas
    for k in range(0, nCaixas):
        vetorFilaCaixa[k] = FilaCaixa()

    caixaid = None   # Identifica um determinado caixa e sua fila

    # taxa de atendimento de cada caixa por hora
    vetorTaxaDeAtendimentoCaixa[0] = 15
    vetorTaxaDeAtendimentoCaixa[1] = 15
    vetorTaxaDeAtendimentoCaixa[2] = 15

    # caixaid = 0,1,2

    event = 0

    while numeroderepeticoes > 0:
        event = int(input("Qual numero inicial de eventos? - "))
        simulacao(event)
        numeroderepeticoes -= 1

    # lista de clientes aonde sao colocados os objetos da classe
    # Cliente quando e' terminado o atendimento
    # lista para monitoracao das filas
    # No inicio [[0,0,0,0]] tempo=0 e tamanho das filas = 0
    # A cada operacao de inercao de cliente na fila ou remocao
    # o estado de todas as filas e' checado
    # formando uma sub-lista [clock, tam fila1, tam fila 2, tam fila 3]
    # sub-lista e' acrescentada na lista

    # Calculo das estatisticas, Medias, Desvios Padroes
    # Media, variancia, tempo na fila, tempo no atendimento e tempo total

    # Plot do estado das filas ao longo do tempo
    # numero de subplots e' dependente de nCaixas
    # cada subplot e'incorporado sequencialmente
    # x = tempo da simulacao em segundos
    # y = tamanho de uma das filas
    #
    fig, ax = plt.subplots(nCaixas)
    fig.suptitle('Evolucao do Tamanho da Fila')
    nlines = len(logfilas)
    # x recebe a coluna 0 da lista
    x = [row[0] for row in logfilas]   
    for k in range(1,nCaixas+1):
        # y recebe a coluna k da lista
        y = [row[k] for row in logfilas]
        ax[k-1].step(x, y)
        ax[k-1].set_xlabel('tempo (s)')
        ax[k-1].set_ylabel('Fila'+str(k-1))
        ax[k-1].grid()
    fig.canvas.draw()
