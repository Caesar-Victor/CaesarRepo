import numpy as np
import matplotlib.pyplot as plt
import math
import time
#Função que analisa a possibilidade de alterar a tipagem
def is_float(value):
  try:
    float(value)
    return True
  except:
    return False
#Função que preenche uma matriz nxn
def preencheMat(M):
    n = len(M[0])
    v = [0]*n
    j = 0
    check = False
    num = [0]*n
    c = input('Teste A?(s, n): ')
    if c == 's' or c == 'S':
        text_file = open("testeA.txt", "r")
        lines = text_file.readlines()
        for i in range(n):
            j=0
            num[i]=lines[i]
            for x in num[i]:
                if is_float(x):  
                    M[i][j] = float(x)
                    j+=1
        text_file.close()
    else:
        for i in range(n):
            check = False
            while not check:
                for j in range(n):
                    v[j]=float(input('Digite a posição [%d][%d] da matriz: ' % (i+1, j+1)))
                print(v)
                check = checar()
                if (check):
                        M[i]=v  
#Função que preenche um Vetor
def preencheVet(v):
    n = len(v)
    v1 = [0]*n
    check = False
    while not check:
        check = False
        for i in range(n):
            v1[i]=int(input('Digite o numero da posição %d do vetor v: ' %(i+1)))
        print(v1)
        if(checar()):
            v = v1
            check = True
#Função para checar se o usuário digitou valores corretamente
def checar():
    c = input('Os valores estão corretos?(s, n): ')
    if (c == 's' or c == 'S'):
        return True
    return False
#Função calcula a norma de um vetor 
def norma(v):
    a = 0                   
    for i in range(len(v)):
        a+=v[i]**2
    return math.sqrt(a)
#Função que implementa o método de potencia e retorna o tempo de execução em segundos*/
def potencia(M):
    start = time.time()
    n = len(M[0])
    a=0
    e=0.000001
    nv=[0]*n
    v=[0]*n
    av=[0]*n
    preencheVet(v)
    while(math.fabs(norma(v)-norma(nv))>e):
        for i in range(n):
            for j in range(n):
                a+=M[i][j]*v[j]         #nv[k+1] = Av[k]
            nv[i] = a
            a = 0
        for i in range(n):
            v[i]=nv[i]/norma(nv)        #v[k+1] = nv[k+1]/||nv[k+1]||

    for i in range(n):
        a=0
        for j in range(n):
            a+=v[j]*M[j][i]             #(v[k+1])^T * A
        nv[i]=a
        a=0
        for j in range(n):
            a+=nv[j]*v[j]               #(v[k+1])^T * A * v[k+1]
        av[i]=a                         # a[k+1] = (v[k+1])^T * A * v[k+1]

    print('Vetor calculado: '+ v)
    print('Autovalores: '+ av)

    return time.time() - start
#Função que preenche a Matriz de givens correspondente em torno do eixo Z*/
def preencheabg(a, b, g, M):
    for i in range(len(M[0])):
        for j in range(len(M[0])):
            if(i == j):
                a[i] = M[i][j]
            elif (i == (j-1)):
                g[i] = M[i][j]
            elif (i == (j+1)):
                b[i-1] = M[i][j]
#Função que implementa o Algorítimo QR
#def qr():
#Função que implementa o Algorítimo QR com deslocamentos espectrais
def qrDeslocado(M, a, b, g, nd):
    n = len(M[0])
    e = 0.000001
    mi = 0
    I = np.zeros((n,n), dtype=np.float64)
    for i in range(n):
        for j in range(n):
            if i == j:
                I[i][j] = 1
    k=0
    for m in range (n-1, 0, -1):
        mi = 0
        while math.fabs(b[m-1]**k)>e:
            if k>0:
                d = 0.5 * (M[m-1][m-1] - M[m][m])
                mi = M[m][m] + d - (np.sign(d) + (d==0)) * np.hypot(d, M[m][m-1])
                [Q, R] = QRgen(M - mi*k)
                M = (R @ Q) + mi*I
                V = V @ Q
                k +=1

#Função que implementa Rotação de Givens e retorna o tempo de execução em segundos*/
def givens(M, l, c, x):
    start = time.time()
    n = len(M[0])
    alfa = [0]*n        #Vetor com valores da diagonal principal   
    beta = [0]*(n-1)    #Vetor com valores da diagonal inferior
    gama = [0]*(n-1)    #vetor com valores da diagonal superior
    cos = [0]*(n-1)
    sen = [0]*(n-1)
    nd = [0]*(n-2)      #Vetor com valores da nova diagonal
    ab = 1
    B = np.zeros((n,n), dtype=np.float64)
    B = M
    preencheabg(alfa, beta, gama, M)

    for i in range(n-1):
        ab = math.sqrt(alfa[i]**2 + beta[i]**2)
        cos[i] = alfa[i]/ab
        sen[i] = -beta[i]/ab
    for k in range(n-1):
        n1 = M[l-1][k]
        n2 = M[c-1][k]
        
        B[l-1][k] = (cos[k] * n1) - (sen[k] * n2)
        B[c-1][k] = (sen[k] * n1) + (cos[k] * n2)

        if (l-1) == (k-2):
            nd[k-2] = B[l-1][k]

    print('Q%d * A = \n'%(l), B )
    if l+1<n:
        givens(M, l+1, c+1, x)
        
    
    # if x == 'd':
    #     qrDeslocado(M, B)
    # else:
    #     qr(M, B)

    return time.time() - start

def main():
    n = int(input('Digite o tamanho da matriz: '))
    M=np.zeros((n,n), dtype=np.float64)
    preencheMat(M)
    print('\nMatriz:\n',M,'\n')
    while n>0:
        n = int(input('Escolha qual método irá usar: \n(0) - Sair \n'+
        '(1) - Método da potência\n'+
        '(2) - Rotações de Givens e a fatoração QR de uma matriz tridiagonal: \n'+
        '(3) - Algorítimo QR com deslocamentos espectrais: '))
        if n == 1:
            t1 = potencia(M)
            print("O tempo de execução do Método de potencia foi: %d" % (t1))
        elif n == 2:
            l = int(input('Escolha a linha i da transformação: '))
            c = int(input('Escolha a linha j da transformação: '))
            t1 = givens(M, l, c, 'n')
            print("O tempo de execução do Algorítimo QR foi: %d" % (t1))
        elif n == 3:
            l = int(input('Escolha a linha i da transformação: '))
            c = int(input('Escolha a linha j da transformação: '))
            t1 = givens(M, l, c, 'd')
            print("O tempo de execução do Algorítimo QR deslocado foi: %d" % (t1))
        else:
            print("Operação invalida")

if __name__ == "__main__": main()

