# -*- coding: latin-1 -*-
"""
  AO PREENCHER ESSE CABE�ALHO COM O MEU NOME E O MEU N�MERO USP,
  DECLARO QUE SOU A �NICA PESSOA AUTORA E RESPONS�VEL POR ESSE PROGRAMA.
  TODAS AS PARTES ORIGINAIS DESSE EXERC�CIO PROGRAMA (EP) FORAM
  DESENVOLVIDAS E IMPLEMENTADAS POR MIM SEGUINDO AS INSTRU��ES
  DESSE EP E, PORTANTO, N�O CONSTITUEM ATO DE DESONESTIDADE ACAD�MICA,
  FALTA DE �TICA OU PL�GIO.
  DECLARO TAMB�M QUE SOU A PESSOA RESPONS�VEL POR TODAS AS C�PIAS
  DESSE PROGRAMA E QUE N�O DISTRIBU� OU FACILITEI A
  SUA DISTRIBUI��O. ESTOU CIENTE QUE OS CASOS DE PL�GIO E
  DESONESTIDADE ACAD�MICA SER�O TRATADOS SEGUNDO OS CRIT�RIOS
  DIVULGADOS NA P�GINA DA DISCIPLINA.
  ENTENDO QUE EPS SEM ASSINATURA N�O SER�O CORRIGIDOS E,
  AINDA ASSIM, PODER�O SER PUNIDOS POR DESONESTIDADE ACAD�MICA.

  Nome : Victor Nascimento Pereira  
  NUSP : 10773530
  Turma: 12
  Prof.: Alan Mitchell Durham

  Refer�ncias: Com exce��o das rotinas fornecidas no enunciado
  e em sala de aula, caso voc� tenha utilizado alguma refer�ncia,
  liste-as abaixo para que o seu programa n�o seja considerado
  pl�gio ou irregular.

  Exemplo:
  - O algoritmo Quicksort foi baseado em
  https://pt.wikipedia.org/wiki/Quicksort
  http://www.ime.usp.br/~pf/algoritmos/aulas/quick.html
"""
import os
# **********************************************************
# **                 IN�CIO DA PARTE 1                    **
# **********************************************************


def calcula_id(matriz):
    """ Retorna o valor de identificação de uma matriz computada pelo
    algoritmo adler32

    A função :func:'calcula_id' computa um identificador para uma matriz
    usando a seguinte versão adaptada do algoritmo de espalhamento Adler32:

        - A = 1 + matriz[0][0] + matriz[0][1] +...+ matriz[m-1][n-1] MOD 65521,
            onde m é o número de linhas e n é o número de colunas da matriz
        - B = (1 + matriz[0][0]) + (1 + matriz[0][0]+matriz[0][1]) + ... +
          (1 + matriz[0][0] + matriz[0][1] + ... + matriz[m-1][n-1]) MOD 65521
        - retorna B * (2**16) + A


    :param matriz: Uma matriz de inteiros
    :type matriz: <class 'list'>
    :return identificador: O identificador inteiro da matriz computado segundo
        a nossa versão adaptada do Adler32
    :rtype: <class 'int'>

    :Examples:

    >>> matriz_A = [[0,1,2], [3,4,5]]
    >>> matriz_B = [[3,4,5], [0,1,2]]
    >>> matriz_C = [[0,1], [1,0]]
    >>> matriz_D = [[1,0,2], [3,4,5]]
    >>> calcula_id(matriz_A)
    2686992
    >>> calcula_id(matriz_B)
    4456464
    >>> calcula_id(matriz_C)
    589827
    >>> calcula_id(matriz_D)
    2752528

    .. seealso::
        Consulte o enunciado para um exemplo mais detalhado.
    """
    A = 1
    B = 0
    for l in range(len(matriz)):
        for c in range(len(matriz[0])):
            A = A+matriz[l][c]
            B = B+A
    return ((B % 65521) * (2**16) + (A % 65521))

# ----------------------------------------------------------
# --                  FIM DA PARTE 1                      --
# ----------------------------------------------------------


# **********************************************************
# **                 IN�CIO DA PARTE 2                    **
# **********************************************************


def carrega_identificador(nome_arquivo):
    """ Carrega o identificador de uma imagem presente em um arquivo.

    A fun��o :func:'carrega_identificador' abre um arquivo de nome
    'nome_arquivo' presente na mesma pasta que o programa ep3.py, l� sua
    primeira linha e retorna o inteiro representando o identificador  
    presente nessa linha.

    :param nome_arquivo: String com o nome do arquivo com o identificador
    :type nome_arquivo: <class 'str'>
    :return identificador: Inteiro contendo identificador 
    :rtype: <class 'int'>

    :Example:

    >>> identificador = carrega_identificador('img01.adler32')
    >>> print(identificador)
    297286


    .. note::
        Embora pelas regras da disciplina voc� possa assumir que o arquivo
        'nome_arquivo' est� presente na mesma pasta do programa ep3.py,
        boas pr�ticas de programa��o sugerem que para escrita e leitura de
        arquivos, voc� sempre deve verificar � exist�ncia/permiss�es.
        Com rela��o ao identificador, voc� pode assumir que o arquivo cont�m
        um identificador v�lido na primeira linha.
    """
    a = open(nome_arquivo, 'r')
    f = int(a.read())
    a.close()
    return f


def carrega_imagem(nome_imagem):
    """ Carrega do arquivo 'nome_imagem' uma imagem em formato PGM do tipo P2 e
    retorna � imagem em formato de matriz de pixels.

    A fun��o :func:'carrega_imagem' l� uma imagem em formato PGM do tipo P2
    presente em um arquivo na mesma pasta do programa ep3.py e retorna uma
    matriz de inteiros de tamanho N-por-M, onde N � a altura da imagem, e M �
    largura da imagem, ambos medidos em pixels e obtidos atrav�s do cabe�alho
    da imagem.

    :param nome_imagem: String com o nome de imagem na mesma pasta de ep3.py
    :type nome_imagem: <class 'str'>
    :return matriz: Matriz de inteiros representando os pixels da imagem
    :rtype: <class 'list'>

    :Example:

    >>> A = carrega_imagem('imagem.pgm')
    >>> print(A)
    [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]

    .. seealso::
        Vide enunciado para uma explica��o mais detalhada acerca do formato PGM
    .. note::
        Voc� pode assumir que a imagem est� no formato correto e que o valor
        da intensidade de cada pixel � um inteiro entre 0 e 255 (inclusive).
    """
    a = open(nome_imagem, 'r')
    arq = a.read()
    f = arq.split("\n")
    d = f[1].split(' ')
    matriz = []*int(d[1])
    l = 0
    for i in range(3, 3+int(d[1])):
        g = f[i].split(' ')
        matriz.append([' ']*int(d[0]))
        for j in range(len(g)):
            if g[j] != '':
                matriz[l][j] = int(g[j])
        l += 1
    a.close()
    return matriz


def salva_imagem(nome_arquivo, matriz):
    """ Cria (se n�o existir) e escreve a imagem representada pela matriz no
    arquivo de nome nome_arquivo no formato PGM (tipo 2).

    A fun��o :func:'salva_imagem' recebe uma matriz de inteiros (0-255)
    representando uma imagem em tons de cinza e salva essa imagem no arquivo
    'nome_arquivo' no formato Portable GrayMap (PGM) do tipo P2 na mesma pasta.


    :param nome_arquivo: String contendo o nome de um arquivo (ex.'imagem.ppm')
    :param matriz: Matriz de inteiros representando uma imagem em tons de cinza
    :type nome_arquivo: <class 'str'>
    :type matriz: <class 'list'>

    :Example:

    >>> M = carrega_imagem('imagem.pgm')
    >>> print(M)
    [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]
    >>> M[0][0] = 255
    >>> print(M)
    [[255, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]
    >>> salva_imagem('nova_imagem.pgm', M)

    .. seealso::
        Consulte o enunciado para informa��es espec�ficas do formato PGM tipo 2
    """

    if os.path.exists(nome_arquivo):
        a = open(nome_arquivo, 'w')
        f = 'P2\n'+'%d %d' % (len(matriz[0]), len(matriz))+'\n255\n'
        for l in range(len(matriz)):
            for c in range(len(matriz[0])):
                f = f+str(matriz[l][c])+' '
            f = f+'\n'
        a.write(f)
        a.close()
    else:
        a = open(nome_arquivo, 'w')
        a.close()
        return salva_imagem(nome_arquivo, matriz)


def carrega_transformacoes(nome_arquivo):
    """Carrega transforma��es de um arquivo de texto.

    A fun��o :func:'carrega_transforma��es' recebe uma string com o nome de um
    arquivo presente na mesma pasta do programa ep3.py que cont�m as matrizes
    de transforma��o.
    Neste arquivo:

        - A primeira linha representa o n�mero total de transforma��es
        - Todas as outras linhas trazem ou transforma��es ou coment�rios

    Uma linha come�ando com # indica um coment�rio e deve ser ignorada.
    Todas as outras linhas representam matrizes 2-por-3 de modo que a matriz
    inteira est� representada em uma �nica linhado arquivo e cada elemento da
    matriz � separado por um (ou mais) espa�os.
    O exemplo abaixo mostra o conte�do de um poss�vel arquivo de transforma��es

    **Exemplo de arquivo de transforma��es**:
    2
    # Meu conjunto de transforma��es
    # transforma��o identidade
    1 0 0 0 1 0
    # espelhamento
    -1 0 0 0 -1 0


    :param nome_arquivo: String com nome de um arquivo texto contendo as
        transforma��es
    :type nome_arquivo: <class 'str'>
    :return lista: Uma lista de matrizes de transforma��o
    :rtype: <class 'list'>

    :Example:

    >>> transforma��es = carrega_transforma��es('duas_transforma��es.txt')
    >>> print(transforma��es)
    [[[1, 0, -20], [0, 1, -20]], [[1, 0, 0], [0, 1, 0]]]

    .. seealso::
        Veja o enunciado para maiores detalhes da estrutura desse arquivo.
    .. note::
        Voc� pode considerar que o arquivo de transforma��es s� cont�m os
        tr�s tipos de linhas mencionados (n�mero total de transforma��es,
        coment�rios e transforma��es), voc� n�o precisa tratar outros formatos.
    """
    a = open(nome_arquivo, 'r')
    arq = a.read()
    f = arq.split('\n')
    lista = []
    for i in range(1, len(f)):
        g = f[i].split(' ')
        if g[0] != '#' and g[0] != '':
            lista.append([[int(g[0]), int(g[1]), int(g[2])],
                          [int(g[3]), int(g[4]), int(g[5])]])
    a.close()
    return lista

# ----------------------------------------------------------
# --                  FIM DA PARTE 2                      --
# ----------------------------------------------------------


# **********************************************************
# **                 IN�CIO DA PARTE 3                    **
# **********************************************************

def transforma(matriz, transformacao):
    """ Devolve uma transforma��o geom�trica linear da matriz.

    A fun��o :func:'transforma' recebe uma matriz de pixels e uma transforma��o
    afim representada matricialmente e retorna a matriz transformada, **sem**
    modificar a matriz original.


    :param matriz: Matriz representando imagem em tons de cinza (0-255)
    :param transforma��o: Matriz 2-por-3 representando transforma��o linear
    :type matriz: <class 'list'>
    :type transforma��o: <class 'list'>
    :return matriz_transformada: Matriz resultado da transforma��o aplicada
        sobre todos os pontos
    :rtype: <class 'list'>

    :Example:

    >>> matriz1 = [[1, 2, 3], [4, 5, 6]]
    >>> print(matriz1)
    [[1, 2, 3], [4, 5, 6]]
    >>> transla��o_diagonal_por_1_pixel = [[1, 0, 1], [0, 1, 1], [0, 0, 1]]
    >>> matriz2 = transforma(matriz1, transla��o_diagonal_por_1_pixel)
    >>> print(matriz1)
    [[1, 2, 3], [4, 5, 6]]
    >>> print(matriz2)
    [[6, 4, 5], [3, 1, 2]]

    .. seealso::
        Vide enunciado para maiores exemplos da aplica��o dessa transforma��o

    .. note::
        Voc� pode assumir que s� ser�o utilizadas transforma��es invers�veis
        cujos coeficientes s�o inteiros.
    """
    matriz_trasforma = []
    for l in range(len(matriz)):
        matriz_trasforma.append([' ']*(len(matriz[0])))
    for l in range(len(matriz)):
        for c in range(len(matriz[0])):
            b = (transformacao[0][0]*c + transformacao[0][1]
                 * l + transformacao[0][2]) % len(matriz[0])
            a = (transformacao[1][0]*c + transformacao[1]
                 [1]*l + transformacao[1][2]) % len(matriz)
            matriz_trasforma[a][b] = matriz[l][c]
    return matriz_trasforma


# ----------------------------------------------------------
# --                  FIM DA PARTE 3                      --
# ----------------------------------------------------------


# **********************************************************
# **                 IN�CIO DA PARTE 4                    **
# **********************************************************


def busca(matriz, transformacoes, identificacao, max_transfs):
    """ Busca imagem com identifica��o dada usando no m�ximo um conjunto de
    max_transfs transforma��es.

    A fun��o :func:'busca' recebe uma matriz representando uma imagem
    monocrom�tica, uma lista de transforma��es poss�veis, um identificador
    correspondente � dispers�o criptogr�fica da imagem original e o valor do
    n�mero m�ximo de transforma��es em sequencia � serem realizadas sobre �
    matriz nessa busca e devolve:

        - A matriz da imagem original (caso encontrada) OU
        - None (caso contr�rio)

    :param matriz: Uma matriz de inteiros representando uma imagem
    :transforma��es: Uma lista de matrizes de transforma��o
    :identifica��o: Uma string com o identificador da imagem original
    :max_transfs: N�mero m�ximo de sequencias de transforma��es � testar
    :type matriz: <class 'list'>
    :type transforma��es: <class 'list'>
    :type identifica��o: <class 'str'>
    :type max_transfs: <class 'int'>
    :return resultado: Matriz com imagem restaurada ou None se ela n�o for
        encontrada.
    :rtype: <class 'list'> OU <class 'NoneType'>

    :Example:

    >>> original = [[1,2,3], [4,5,6], [7,8,9]]
    >>> identificador = calcula_id(imagem)
    >>> print(identificador)
    11403310
    >>> nova = transforma(imagem, [[1,0,1], [0,1,0]]) # Aplica desloc em eixo x
    >>> print(nova)
    [[3, 1, 2], [6, 4, 5], [9, 7, 8]]
    >>> nova2 = transforma(nova, [[1,0,1], [0,1,1]]) # Aplica Desloc x+1 e y+1
    >>> print(nova2)
    [[8, 9, 7], [2, 3, 1], [5, 6, 4]]
    >>> transfs = [[[1,0,-1], [0,1,0]], [[1,0,-1],[0,1,-1]], [[1,0,1],[0,1,1]]]
    >>> resultado = busca(nova2, transfs, identificador, 2)
    >>> print(resultado)
    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    >>> resultado2 = busca(nova2, transfs, identificador, 1)
    >>> print(resultado2)
    None
    """
    if calcula_id(matriz) == identificacao:
        return matriz
    if max_transfs == 0:
        return None
    for i in range(len(transformacoes)):
        N = transforma(matriz, transformacoes[i])
        B = busca(N, transformacoes, identificacao, max_transfs-1)
        if B != None:
            return B 
    return None

# ----------------------------------------------------------
# --                  FIM DA PARTE 4                      --
# ----------------------------------------------------------


# **********************************************************
# **                 IN�CIO DA PARTE 5                    **
# **********************************************************

def main():
    """ Aqui voc� deve implementar � interface de comunica��o com o usu�rio

    Sua interface deve (necessariamente nessa ordem):
        1. Escrever uma mensagem de identifica��o do autor e descri��o do programa.
        2. Solicitar ao usu�rio que digite o nome do arquivo da imagem transformada.
        3. Solicitar ao usu�rio que digite o nome do arquivo contendo o identificador.
        4. Solicitar ao usu�rio que digite o nome do o arquivo com as transforma��es.
        5. Solicitar ao usu�rio que digite o nome do arquivo no qual ser� salva a imagem restaurada (se encontrada).
        6. Informar se a busca foi exitosa ou n�o.

    :Example:

    >>> $ python3 ep3.py
    *****************************
    *** Programa desfaz v�rus ***
    *****************************

    Autor: Denis Mau�
    NUSP: 3730790

    Entre com o nome do arquivo contendo imagem transformada: img00.pgm
    Entre com o nome do arquivo contendo o identificador da imagem original: img00.adler
    Entre com o nome do arquivo contendo as transforma��es dispon�veis: transforma��es00.txt
    Entre com o nome do arquivo onde a imagem original deve ser salva: resultado00.pgm
    Entre com o n�mero m�ximo de transforma��es: 2

    Tentando restaurar imagem 'img00.pgm'... Falhou!

    N�o foi poss�vel encontrar uma imagem com o identificador 870647247 utilizando uma sequ�ncia de no m�ximo 2 transforma��es em 'transforma��es00.txt'!

    Voc� pode tentar aumentar o n�mero m�ximo de transforma��es ou mudar o arquivo de transforma��es.

    >>> $ python3 ep3.py
    *****************************
    *** Programa desfaz v�rus ***
    *****************************

    Autor: Denis Mau�
    NUSP: 3730790

    Entre com o nome do arquivo contendo imagem transformada: img01.pgm
    Entre com o nome do arquivo contendo o identificador da imagem original: img01.adler
    Entre com o nome do arquivo contendo as transforma��es dispon�veis: transforma��es.txt
    Entre com o nome do arquivo onde a imagem original deve ser salva: resultado01.pgm
    Entre com o n�mero m�ximo de transforma��es: 6

    Tentando restaurar imagem 'img01.pgm'... Pronto!

    Imagem com o identificador 870647247 salva em 'resultado01.pgm'!

    .. seealso::
        Consulte o enunciado para mais exemplos.
    """
    print('*****************************\n*** Programa desfaz vírus ***\n*****************************\n\nAutor: Victor Nascimento Pereira\nNUSP: 10773530\n')
    nome_trans = input(
        "Entre com o nome do  arquivo  contendo imagem transformada :  ")
    nome_org = input(
        'Entre com o nome do  arquivo  contendo o  i d e n t i f i c a d o r  da imagem  o r i g i n a l :  ')
    trans = input(
        'Entre com o nome do  arquivo  contendo  as  transforma çõ es  dispon í veis :  ')
    res = input(
        'Entre com o nome do  arquivo  onde a imagem  o r i g i n a l  deve  ser  salva :  ')
    trans_max = int(
        input('Entre com o número máximo de  transforma çõ es :  '))
    print('\nTentando  restaurar  imagem  ’ %s ’ . . .  ' %
          (nome_trans), end='')
    M = busca(carrega_imagem(nome_trans), carrega_transformacoes(
        trans), carrega_identificador(nome_org), trans_max)
    if M != None:
        salva_imagem(res, M)
        print('Pronto !\n\nImagem com o  i d e n t i f i c a d o r  %d  salva em  ’ %s ’ !' % (
            carrega_identificador(nome_org), res))
    else:
        print("Falhou !\n\nNão foi possível encontrar uma imagem com o identificador %d utilizando uma sequência de no máximo %d transformações em ' %s '!\n\nVocê pode tentar aumentar o número máximo de transformações ou mudar o arquivo de transformações." % (
            carrega_identificador(nome_org), trans_max, trans))

# ----------------------------------------------------------
# --                  FIM DA PARTE 4                      --
# ----------------------------------------------------------


# ******************************************************
# **  IMPORTANTE: N�O MODIFIQUE AS PR�XIMAS LINHAS!   **
# ******************************************************
if __name__ == "__main__":
    main()
