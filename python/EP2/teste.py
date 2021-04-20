COLUNA_MAXIMA     = 56
LINHA_MAXIMA      = 19

CANHAO            = 'A'
NAVE              = 'V'
LASER_CANHAO      = '^'
LASER_NAVE        = '.'
EXPLOSAO          = '*'


ATIRA             = 3  # para tecla 'l' quando movimentar o canhão
ESQUERDA          = -1 # para tecla 'e' quando movimentar o canhão
DIREITA           = 1  # para tecla 'd' quando movimentar o canhão
BAIXO             = -2
ATINGIU_ESQUERDA  = -1
ATINGIU_DIREITA   = 1
ATINGIU_EMBAIXO   = -2
def main():
    matriz=[]
    for i in range (LINHA_MAXIMA+1):
        linha=[" "]*COLUNA_MAXIMA
        matriz.append(linha)
    naves=int(input("naves: "))
    matriz=criaElementos(naves, matriz)
    imprimeMatriz(matriz)
    lista=[]
    d=1
    lista=moveNaves(d, matriz)
    print(lista)
def imprimeMatriz(matriz):
    for linha in matriz:
        print("|", end="")
        for posicao in linha:
            print(posicao, end="")
        print("|")

def criaElementos(quantidadeNaves, matriz):
    c=0
    while quantidadeNaves>1:
        matriz[0][c]=NAVE
        matriz[1][c]=NAVE
        c+=2
        quantidadeNaves-=2
    if quantidadeNaves==1:
        matriz[0][c]=NAVE
        matriz[LINHA_MAXIMA][COLUNA_MAXIMA//2]=CANHAO
    return matriz
def moveNaves(direcao, matriz):
    cont=0
    atgido=False
    lim=0
    for l in range (LINHA_MAXIMA, 0, -1):
        for c in range (COLUNA_MAXIMA+1):
            if matriz[l][c]==NAVE:
                if (c==COLUNA_MAXIMA and direcao==DIREITA) or (c==0 and direcao==ESQUERDA):
                    if l==LINHA_MAXIMA:
                        lim=ATINGIU_EMBAIXO
                        matriz[l][c]=" "
                    else:
                        if matriz[l+1][c]==" " or matriz[l+1][c]==LASER_NAVE:
                            matriz[l][c]=" "
                            matriz[l+1][c]=NAVE
                        if matriz[l+1][c]==CANHAO:
                            matriz[l][c]=" "
                            matriz[l+1][c]=EXPLOSAO
                            cont+=1
                            atgido=True
                        if matriz[l+1][c]==LASER_CANHAO:
                            matriz[l][c]=" "
                            matriz[l+1][c]= " " 
                            cont+=1
                elif matriz[l][c+direcao]==" ":
                    matriz[l][c+direcao]=NAVE
                    matriz[l][c]=" "
                elif matriz[l][c+direcao]==CANHAO:
                    matriz[l][c+direcao]=EXPLOSAO
                    matriz[l][c]=" "
                    cont+=1
                    atgido=True
                elif matriz[l][c+direcao]==LASER_CANHAO:
                    matriz[l][c+direcao]=" "
                    matriz[l][c]=" "
                    cont+=1
                if c+direcao==COLUNA_MAXIMA:
                    lim=ATINGIU_DIREITA
                if c+direcao==0:
                    lim=ATINGIU_ESQUERDA
                    
    return [atgido, lim, cont]
main()