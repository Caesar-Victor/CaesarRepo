"""
  AO PREENCHER ESSE CABEÇALHO COM O MEU NOME E O MEU NÚMERO USP, 
  DECLARO QUE SOU O ÚNICO AUTOR E RESPONSÁVEL POR ESSE PROGRAMA. 
  TODAS AS PARTES ORIGINAIS DESSE EXERCÍCIO PROGRAMA (EP) FORAM 
  DESENVOLVIDAS E IMPLEMENTADAS POR MIM SEGUINDO AS INSTRUÇÕES
  DESSE EP E QUE PORTANTO NÃO CONSTITUEM DESONESTIDADE ACADÊMICA
  OU PLÁGIO.  
  DECLARO TAMBÉM QUE SOU RESPONSÁVEL POR TODAS AS CÓPIAS
  DESSE PROGRAMA E QUE EU NÃO DISTRIBUI OU FACILITEI A
  SUA DISTRIBUIÇÃO. ESTOU CIENTE QUE OS CASOS DE PLÁGIO E
  DESONESTIDADE ACADÊMICA SERÃO TRATADOS SEGUNDO OS CRITÉRIOS
  DIVULGADOS NA PÁGINA DA DISCIPLINA.
  ENTENDO QUE EPS SEM ASSINATURA NÃO SERÃO CORRIGIDOS E,
  AINDA ASSIM, PODERÃO SER PUNIDOS POR DESONESTIDADE ACADÊMICA.

  Nome : Victor Nascimento Pereira  
  NUSP : 10773530
  Turma: 12
  Prof.: Alan Durham

  """

import random

# !!!!! PARA TESTAR O JOGO, USE VALORES MENORES, COMO 10 E 5, MAS
# VOLTE PARA O ORIGINAL ANTES DE ENTREGAR !!!!
COLUNA_MAXIMA     = 56
LINHA_MAXIMA      = 19

# !!!!! NÃO APAGUE NEM ALTERE NENHUMA CONSTANTE !!!!!
# CONSTANTES DE IMPRESSÃO NA TELA
CANHAO            = 'A'
NAVE              = 'V'
LASER_CANHAO      = '^'
LASER_NAVE        = '.'
EXPLOSAO          = '*'

# !!!!! NÃO APAGUE NEM ALTERE NENHUMA CONSTANTE !!!!!
# CONSTANTES DE AÇÕES DE MOVIMENTAÇÃO DOS OBJETOS NO JOGO
ATIRA             = 3  # para tecla 'l' quando movimentar o canhão
ESQUERDA          = -1 # para tecla 'e' quando movimentar o canhão
DIREITA           = 1  # para tecla 'd' quando movimentar o canhão
BAIXO             = -2

# !!!!! NÃO APAGUE NEM ALTERE NENHUMA CONSTANTE !!!!!
# CONSTANTES DE RESULTADO DO JOGO
VENCEU            = True
PERDEU            = False

# !!!!! NÃO APAGUE NEM ALTERE NENHUMA CONSTANTE !!!!!
# CONSTANTES DOS PONTOS RELACIONADOS A LASERS OU NAVES DESTRUÍDAS
PONTOS_ACERTOU_LASER     = 1
PONTOS_ACERTOU_NAVE      = 3

# !!!!! NÃO APAGUE NEM ALTERE NENHUMA CONSTANTE !!!!!
# OUTRAS CONSTANTES: SEMENTE DO GERADOR DE NÚMEROS ALEATÓRIOS E
# VALORES USADOS NA FUNÇÃO QUE MOVIMENTA AS NAVES
SEMENTE           = 0
ATINGIU_ESQUERDA  = -1
ATINGIU_DIREITA   = 1
ATINGIU_EMBAIXO   = -2

# !!!!! NÃO MODIFIQUE NADA NO main() !!!!!
# FUNÇÃO PRINCIPAL QUE SÓ LÊ A QUANTIDADE DE INIMIGOS DO TECLADO,
# PASSA O CONTROLE PARA A FUNÇÃO REAL DO JOGO E RECEBE COMO RETORNO A
# PONTUAÇÃO DO JOGADOR PARA IMPRIMIR NA TELA COM O RESULTADO DO JOGO
def main():
    random.seed(SEMENTE)
    
    quantidadeNaves = int(input("Digite o numero de naves (inteiro maior que 1 e menor que %d): " %(COLUNA_MAXIMA-3)))
    
    resultado = joga(quantidadeNaves)
    
    if resultado[0] == VENCEU:
        print(">>> CONGRATULATIONS! Você venceu!")
    else:
        print(">>> GAME OVER! Você perdeu!")
    
    print(">>> Pontuação:",resultado[1]) 

# DEMAIS FUNÇÕES NECESSÁRIAS PARA O JOGO
# !!!!! SEU TRABALHO COMEÇA AQUI. COMPLETE TODAS AS FUNÇÕES !!!!!
# !!!!! MAS NÃO MODIFIQUE A ASSINATURA DE NENHUMA DELAS E NEM O QUE JÁ ESTÁ FEITO !!!!!

# Passo 0: função para imprimir a matriz do jogo. Ela precisa ser
# modificada para imprimir os '|' nas laterais direita e esquerda
def imprimeMatriz(matriz):
    ''' (matriz) -> None
    
          Imprime a matriz do jogo. Cada posição da matriz é um caracter e deve
          ser impresso exatamente com o valor dele.'''
    
    for linha in matriz:
        print("|", end="")
        for posicao in linha:
            print(posicao, end="")
        print("|")

# Passo 1: função que cria todos os elementos na matriz do jogo (Deve
# ser chamada só no início do jogo)
def criaElementos(quantidadeNaves, matriz):
    ''' int, (matriz) -> None
    
          Recebe um inteiro com a quantidade de naves a serem criadas
          e a matriz de caracteres vazia para colocar os elementos no início do
          jogo: o canhão do jogador na linha de baixo e na coluna do meio e as
          naves na parte superior. As naves devem sempre ficar em pares (um em
          cima do outro) e separados pelos outros pares por uma coluna vazia.
          Por exemplo, se a quantidade de naves for 4, a parte superior da
          matriz tem que ficar assim:
          
          V V
          V V
          
          Se for 6 tem que ficar assim:
          
          V V V
          V V V

          Se for 5 tem que ficar assim:

          V V V
          V V  
          '''
    c=0
    while quantidadeNaves>1:
        matriz[0][c]=NAVE
        matriz[1][c]=NAVE
        c+=2
        quantidadeNaves-=2
    if quantidadeNaves==1:
        matriz[0][c]=NAVE
    matriz[LINHA_MAXIMA][COLUNA_MAXIMA//2]=CANHAO
# Passo 2: primeira função para mover algum elemento que emite lasers.
# Nesse caso para mover o canhão do jogador.
def moveCanhao(direcao, matriz):
    ''' int, (matriz) -> bool
 
          Recebe um inteiro com a direção (valores definidos em ESQUERDA e
          DIREITA) para mover o canhão do jogador (caracter definido em CANHAO)
          e a matriz de caracteres do jogo, para mover o canhão nessa direção.
          Ao mover tem que observar se atingiu algum laser de alguma nave (caso
          no qual tem que imprimir um EXPLOSAO no lugar). Nesse caso precisará
          informar que o canhão foi atingido pois a função retorna esse valor.
          
          Retorna:
                   
          True se canhão do jogador foi atingido (False se não)
                   
          Obs.: o movimento do canhão é ciclíco quando ele se move além dos
          limites laterais da matriz do jogo.'''
    i=0
    while matriz[LINHA_MAXIMA][i]!=CANHAO:
        i+=1
    matriz[LINHA_MAXIMA][i]=" "
    c=i+direcao
    if c<0:
        c=COLUNA_MAXIMA
    elif c>COLUNA_MAXIMA:
        c=0
    if matriz[LINHA_MAXIMA][c]==" ":
        matriz[LINHA_MAXIMA][c]=CANHAO
        return False
    else:
        matriz[LINHA_MAXIMA][c]=EXPLOSAO
        return True
# Passo 2: segunda função para mover algum elemento que emite lasers.
# Nesse caso para mover as naves.
def moveNaves(direcao, matriz):
    ''' int, (matriz) -> [bool, int, int]
 
          Recebe um inteiro com a direcao (valores definidos em ESQUERDA,
          DIREITA e BAIXO) para mover as naves (caracter definido em NAVE) e a
          matriz de caracteres do jogo, para mover as naves nessa direção. Ao
          mover tem que observar se chegou em algum extremo da matriz, se
          atingiu o canhão do jogador e se atingiu algum laser do jogador. No
          primeiro e no segundo caso precisa informar que isso aconteceu e no
          terceiro caso precisa atualizar a quantidade de naves atingidas
          porque a função retorna esses valores numa lista. No segundo caso tem
          que colocar o caracter definido em EXPLOSAO e no terceiro caso a nave
          tem que sumir da matriz.
                   
          Retorna:
          
          [True se canhão do jogador foi atingido (False se não), limite atingido, quantidade de naves atingidas]
           
          Onde limite atingido tem os seguintes significados:
          
          - valor definido em ATINGIU_DIREITA se alguma nave após o movimento chegou em COLUNA_MAXIMA
          - valor definido em ATINGIU_ESQUERDA se alguma nave após o movimento chegou na coluna 0
          - valor definido em ATINGIU_EMBAIXO se alguma nave após o movimento chegou na linha LINHA_MAXIMA
          - 0 caso nenhuma das alternativas anteriores tenha acontecido
          
          Obs.: mesmo que a primeira nave verificada atinja o canhão ou atinja
          a linha mais baixa da matriz, tem que varrer a matriz **inteira** para
          atualizar a quantidade de naves atingidas antes de retornar'''
    cont=0
    atgido=False
    lim=0
    for l in range (LINHA_MAXIMA, -1, -1):
        if matriz[l][COLUNA_MAXIMA]==NAVE and direcao==DIREITA:
            direcao=BAIXO
            lim=ATINGIU_DIREITA
        elif matriz[l][0]==NAVE and direcao==ESQUERDA:
            direcao=BAIXO
            lim=ATINGIU_ESQUERDA
    if direcao!=DIREITA:  
        if direcao == BAIXO:
            for l in range ((LINHA_MAXIMA-1), -1, -1):
                for j in range (COLUNA_MAXIMA+1):
                    if matriz[l][j]==NAVE and (matriz[l+1][j]==" " or matriz[l+1][j]==LASER_NAVE):
                        matriz[l+1][j]=NAVE
                        matriz[l][j]=" " 
                    elif matriz[l][j]==NAVE and matriz[l+1][j]==LASER_CANHAO:
                        matriz[l+1][j]=" "
                        matriz[l][j]=" "
                        cont+=1
                    elif matriz[l][j]==NAVE and matriz[l+1][j]==CANHAO:
                        matriz[l+1][j]=" "
                        matriz[l][j]=" "
                        cont+=1
                        atgido=True
        elif direcao==ESQUERDA:
            for l in range (LINHA_MAXIMA, -1, -1):
                for c in range (COLUNA_MAXIMA+1):
                    if direcao==ESQUERDA:    
                        if matriz[l][c]==NAVE:
                            if matriz[l][c+direcao]==LASER_CANHAO:
                                matriz[l][c+direcao]=" "
                                matriz[l][c]=" "
                                cont+=1
                            elif matriz[l][c+direcao]==CANHAO:
                                matriz[l][c+direcao]=EXPLOSAO
                                matriz[l][c]=" "
                                cont+=1
                                atgido=True
                            else:
                                matriz[l][c+direcao]=NAVE
                                matriz[l][c]=" "  
    elif direcao==DIREITA:
        for l in range (LINHA_MAXIMA+1):
            for c in range (COLUNA_MAXIMA,-1, -1):
                if matriz[l][c]==NAVE:
                    if matriz[l][c+direcao]==LASER_CANHAO:
                        matriz[l][c+direcao]=" "
                        matriz[l][c]=" "
                        cont+=1
                    elif matriz[l][c+direcao]==CANHAO:
                        matriz[l][c+direcao]=EXPLOSAO
                        matriz[l][c]=" "
                        cont+=1
                        atgido=True
                    else:
                        matriz[l][c+direcao]=NAVE
                        matriz[l][c]=" "                   
        if NAVE in matriz[LINHA_MAXIMA]:
            limite=ATINGIU_EMBAIXO
    return [atgido, lim, cont]

# Passo 3: primeira função para emitir lasers. Nesse caso, para emitir
# um novo laser pelo canhão do jogador.
def emiteLaserCanhao(matriz):
    ''' (matriz) -> [int, int]
 
          Recebe a matriz do jogo e emite um novo laser atirado pelo jogador
          (caracter definido em LASER_CANHAO) uma posição acima da posição onde
          o canhão se encontra.  Ao emitir o laser já tem que observar: se
          atingiu alguma nave e se atingiu algum laser de alguma nave. Em todos
          esses casos o laser recém-emitido já tem que sumir da matriz (ele nem
          chega a ser impresso nesse caso) e tem que atualizar a quantidade de
          naves atingidas e de lasers atingidos pois a função retorna esses
          dois valores numa lista.
 
          Retorna:
 
          [quantidade de naves atingidas, quantidade de lasers atingidos]'''
    c=0
    nave=0
    laser=0
    while matriz[LINHA_MAXIMA][c]!=CANHAO:
       c+=1
    if matriz[LINHA_MAXIMA-1][c]==" ":
        matriz[LINHA_MAXIMA-1][c]=LASER_CANHAO
    if matriz[LINHA_MAXIMA-1][c]==NAVE:
        matriz[LINHA_MAXIMA-1][c]=" "
        nave+=1
    if matriz[LINHA_MAXIMA-1][c]==LASER_NAVE:
        matriz[LINHA_MAXIMA-1][c]=" "
        laser+=1
    return[nave, laser]
# Passo 3: segunda função para emitir lasers. Nesse caso para emitir
# novos lasers pelas naves.
def emiteLasersNaves(matriz):
    ''' (matriz) -> [bool, int]
 
          Recebe a matriz do jogo e emite lasers pelas naves (caracter definido
          em LASER_NAVE) uma posição abaixo da posição da nave que emitiu o
          laser. Ao emitir o laser já tem que observar: se atingiu o canhão do
          jogador (caso no qual tem que imprimir um EXPLOSAO no lugar) e se
          atingiu algum laser do jogador. Em todos esses casos, o laser
          recém-emitido já tem que sumir da matriz (ele nem chega a ser impresso
          nesse caso). No primeiro caso tem que informar que o canhão do jogador
          foi atingido e no segundo caso tem que atualizar a quantidade de
          lasers atingidos pois a função retorna esses dois valores numa lista.
 
          Para definir se uma nave deve ou não emitir laser, sorteie um
          número aleatório entre 0 e 1 (use a função random.randint para isso),
          inclusive. Se o resultado for 0, não emita o laser para aquela nave.
          Se o resultado for 1, emita. Essa verificação só deve ser feita para
          aquelas naves que não possuem nenhuma outra imediatamente abaixo e
          sempre na ordem da esquerda para a direita da matriz.
                
          Retorna:
          
          [True se canhão do jogador foi atingido (False se não), quantidade de lasers atingidos]
          
          Obs.1: mesmo que o primeiro laser emitido atinja o canhão, tem que
          varrer a matriz **inteira** para atualizar a quantidade de lasers
          atingidos antes de retornar'''
    laser=0
    atinge=False
    for l in range (LINHA_MAXIMA, -1, -1):
        for c in range(COLUNA_MAXIMA+1):
            if matriz[l][c]==NAVE:
                if l==LINHA_MAXIMA:
                    matriz[l][c]=" "
                elif matriz[l+1][c]==" " and random.randint(0,1)==1: 
                    matriz[l+1][c]=LASER_NAVE 
                elif matriz[l+1][c]==LASER_CANHAO and random.randint(0,1)==1:
                    matriz[l+1][c]=" "
                    laser+=1
                elif matriz[l+1][c]==CANHAO and random.randint(0,1)==1:
                    matriz[l+1][c]=EXPLOSAO   
                    atinge=True
    return [atinge, laser]

# Passo 4: primeira função para mover lasers. Nesse caso, para mover
# os lasers do jogador.
def moveLasersCanhao(matriz):
    ''' (matriz) -> [int, int]
 
          Recebe a matriz do jogo e move todos os lasers atirados pelo jogador
          (caracter definido em LASER_CANHAO) uma posição para cima na matriz.
          Ao mover tem que observar: se saiu do limite da matriz, se atingiu
          alguma nave e se atingiu algum laser de alguma nave. Em todos esses 3
          casos o laser movido tem que sumir da matriz. Nos dois primeiros
          casos tem que atualizar a quantidade de naves atingidas e de lasers
          atingidos pois a função retorna esses dois valores numa lista.
 
          Retorna:
 
          [quantidade de naves atingidas, quantidade de lasers atingidos]'''
    l=0
    naves=0
    laser=0
    for l in range (LINHA_MAXIMA):
        for c in range(COLUNA_MAXIMA+1):
            if matriz[l][c]==LASER_CANHAO:
                if l==0:
                    matriz[l][c]=" "
                elif matriz[l-1][c]==" ":
                    matriz[l-1][c]=LASER_CANHAO
                    matriz[l][c]=" "
                elif matriz[l-1][c]==NAVE:
                    matriz[l-1][c]=" "
                    matriz[l][c]=" "
                    naves+=1
                elif matriz[l-1][c]==LASER_NAVE:
                    matriz[l-1][c]=" "
                    matriz[l][c]=" "
                    laser+=1
    return[naves, laser]
# Passo 4: segunda função para mover lasers. Nesse caso, para
# mover os lasers das naves.
def moveLasersNaves(matriz):
    ''' (matriz) -> [bool, int]
 
          Recebe a matriz do jogo e move todos os lasers atirados pelas naves
          (caracter definido em LASER_NAVE) uma posição para baixo na matriz.
          Ao mover tem que observar: se saiu do limite da matriz, se atingiu o
          canhão do jogador (caso no qual tem que imprimir um EXPLOSAO no lugar)
          e se atingiu algum laser do jogador. Em todos esses 3 casos, o laser
          movido tem que sumir da matriz. No segundo caso tem que informar que o
          canhão do jogador foi atingido e no terceiro caso tem que atualizar a
          quantidade de lasers atingidos pois a função retorna esses dois
          valores numa lista.
                
          Retorna:
          
          [True se canhão do jogador foi atingido (False se não), quantidade de lasers atingidos]
          
          Obs.: mesmo que o primeiro laser verificado atinja o canhão, tem que
          varrer a matriz **inteira** para atualizar a quantidade de lasers
          atingidos antes de retornar'''
    atingido=False
    laser=0
    for l in range (LINHA_MAXIMA, 0, -1):
        for c in range(COLUNA_MAXIMA+1):
            if matriz[l][c]==LASER_NAVE:
                if l==LINHA_MAXIMA:
                    matriz[l][c]=" "
                elif matriz[l+1][c]==" ":
                    matriz[l+1][c]=LASER_NAVE
                    matriz[l][c]=" "
                elif matriz[l+1][c]==CANHAO:
                    matriz[l+1][c]=EXPLOSAO
                    matriz[l][c]=" "
                    atingido=True
                    laser+=1
                elif matriz[l+1][c]==LASER_CANHAO:
                    matriz[l+1][c]=" "
                    matriz[l][c]=" "
                    laser+=1          
    return[atingido, laser]
# Passo 5: a função que de fato implementa o jogo segundo as regras do
# enunciado. Ela vai chamar toda as funções implementadas nos passos
# anteriores.
def joga(quantidadeNaves):
    ''' int -> [bool, int]
    
          Recebe um inteiro que representa a quantidade de naves, implementa de
          fato o jogo de acordo com as regras do enunciado e retorna uma lista
          com o resultado do jogo:
          
          [resultado, pontuacao]
          
          resultado é uma variável booleana que vale True se o jogador venceu ou
          False se o jogador perdeu.
    
          Para o jogador vencer:
          - O jogador precisa destruir todas as naves
          
          Para o jogador perder:
          - O jogador precisa ser atingido pelo tiro de alguma nave
          - Ou alguma nave precisa alcançar a linha LINHA_MAXIMA da matriz do jogo
          - Ou o jogador precisa ser atingido por alguma nave
    
          pontuacao é uma variável inteira que armazena a quantidade de pontos
          que o jogador fez. A pontuação é definida da seguinte forma:
    
          +PONTOS_ACERTOU_LASER pontos se o jogador consegue acertar 1 tiro em alguma nave
          +PONTOS_ACERTOU_NAVE  pontos se o jogador consegue acertar 1 tiro em algum tiro de alguma nave
    
          A ordem das ações no jogo é:
          - tiros anteriores do jogador se movem
          - imprime o estado do jogo na tela
          - usuário informa se quer atirar ou se mover e a ação escolhida é realizada
          - tiros anteriores das naves se movem
          - naves atiram (de acordo com o sorteio de números aleatórios)
          - naves se movem (de acordo com a rodada - se move apenas nas pares: direita, baixo, esquerda, baixo, direita, etc...
       
          Dentro de cada função de movimentação e de emissão de lasers é
          necessário verificar se houve colisões para aumentar a pontuação, para
          terminar o jogo ou para limpar a tela removendo os elementos que
          sumiram por terem passado do limite da tela (tiros que subiram demais
          e tiros que desceram demais)
    
          Sempre que o jogo terminar, deve imprimir o status final da
          matriz do jogo'''
    
    # Criação da matriz que manterá o estado do jogo.
    matriz = []
    for i in range(LINHA_MAXIMA+1):
        matriz.append([' ']*(COLUNA_MAXIMA+1))
    
    # Loop do jogo
    resultado     = VENCEU
    fimDeJogo     = False
    achei         = False
    pontos        = 0
    rodada        = 1
    direcaoNaves  = DIREITA
    lista=[]
    criaElementos(quantidadeNaves, matriz)
    while not fimDeJogo:
        # complete o loop seguindo a ordem das ações explicada no
        # enunciado e no docstring desta função acima.
        imprimeMatriz(matriz)
        jogada=input("’e’ para esquerda, ’d’ para direita e ’l’ para emitir laser: ")
        if jogada=="e":
            if moveCanhao(ESQUERDA, matriz):
                fimDeJogo=True
                resultado=PERDEU
        if jogada=="d":
            if moveCanhao(DIREITA, matriz):
                fimDeJogo=True
                resultado=PERDEU
        if jogada=="l":
            lista=emiteLaserCanhao(matriz)
            pontos+= lista[0]*PONTOS_ACERTOU_NAVE + lista[1]*PONTOS_ACERTOU_LASER
        if rodada%2==0:
            lista=moveNaves(direcaoNaves, matriz)
            if lista[0]==True or lista[1]==ATINGIU_EMBAIXO:
                fimDeJogo=True
                resultado=PERDEU
            if lista[1]==ATINGIU_DIREITA:
                direcaoNaves=ESQUERDA
            if lista[1]==ATINGIU_ESQUERDA:
                direcaoNaves=DIREITA
            pontos+=lista[2]*PONTOS_ACERTOU_NAVE
        lista=emiteLasersNaves(matriz)
        if(lista[0]):
            fimDeJogo=lista[0]
            resultado=PERDEU
        pontos+=lista[1]*PONTOS_ACERTOU_LASER
        lista=moveLasersCanhao(matriz)
        pontos+=lista[0]*PONTOS_ACERTOU_NAVE + lista[1]*PONTOS_ACERTOU_LASER
        lista=moveLasersNaves(matriz)
        if(lista[0]):
            fimDeJogo=lista[0]
            resultado=PERDEU
        pontos+=lista[1]*PONTOS_ACERTOU_LASER
        for l in matriz:
            if NAVE in l:
                achei=True
        if not achei:
            fimDeJogo=True
        rodada+=1
        achei=False
    imprimeMatriz(matriz)
    return [resultado, pontos]

main()