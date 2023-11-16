import ep1
from decimal import Decimal
import time
from tqdm import tqdm_gui
from scipy import integrate
import sys
import nltk as nk
import numpy as np


def lamba():
    n = int(input('Escolha o valor de N: '))
    m = int(input('Escolha o valor de M: '))
    lmbda = (1/m)/(1/n)**2
    print(lmbda)


def matriz():
    u = []
    conta = []
    for i in range(5):
        if i == 0 or i == 5:
            conta.append([0]*5)
    print(u)


def integra():
    def gfg(x): return x**2 + x + 1
    geek = integrate.quad(gfg, 1, 4)
    print(geek)


def notacao(n):
    print(f'{n:.2e}')


def integrais(x, n, lmbda, b, a):
    teste = int(input("1- para delta t = delta x: \n2- para m=n²/lambda: "))
    if teste == 1:
        t = ep1.fazt(n)
    elif teste == 2:
        m = ((n**2) / lmbda) - 1   # Tirado de (27)
        t = ep1.fazt(m)
    else:
        print("opcao invalida")
    if b == 1:
        ep1.metodo11(x, t, a)
    elif b == 2:
        ep1.euler(x, t, a)
    # elif b == 3:
    #     ep1.crank(x, t, a)


def load(v):
    for i in tqdm_gui(v):
        time.sleep(1)


def progressbar(it, prefix="", size=100, file=sys.stdout):
    count = len(it)

    def show(j):
        x = int(size*j/count)
        file.write("%s[%s%s] %i/%i\r" %
                   (prefix, "#"*x, "."*(size-x), j, count))
        file.flush()
    show(0)
    for i, item in enumerate(it):
        yield item
        show(i+1)
    file.write("\n")
    file.flush()


def arq(n):
    v = []
    f = open('teste.txt', 'r')
    raw = f.read()
    f = raw.split('\n')
    aux = ''
    if n == 0:
        raw = f[0].split('       ')
        for j in raw:
            v.append(np.float128(j))
        return v
    for i in range(1, len(f)-1, int((len(f)-3)/n)):
        aux = ''
        for j in f[i]:
            if j != ' ':
                aux = aux+j
        if aux == '':
            print(aux)
        v.append(np.float128(aux))
    return v


def rand():
    return (ep1.random.random()-0.5)*2


def main():
    a = int(input('1-Calcula lamba\n2-Faz Matriz\n3-Integra\
        \n4-Tarefa 1_A Integrais\n5-Notacao cientifica\
        \n6-Barra de progresso1\n7-Barra de progresso2\
        \n8-Barra de Progresso3\n9-Prints\n10-Arquivos\
        \n11-Random\nQual deseja testar? - '))
    if a == 1:
        lamba()
    elif a == 2:
        matriz()
    elif a == 3:
        integra()
    elif a == 4:
        b = 0
        l = 0
        v = [10, 20, 40, 80, 160, 320, 640]
        b = int(input("\n1 - Teste do metodo 11\
                \n2 - Euler Implicito\
                \n3 - Crank Nicolson\
                \nQual teste deseja rodar? - "))
        c = int(input("\nSelecione a função f(t,x) desejada:\
                \n1: f(t,x) = 10x²(x−1)−60xt+ 20t\
                \n2: f(t,x) = 10cos(10t)x²(1−x)²−(1 +sin(10t))(12x²−12x+ 2)\
                \n3: f(t,x) = 25t²e^(t-x) cos(5tx) - 10te^(t-x) sen(5tx) - 5xe^(t-x) sen(5tx)\
                \n4: f(t,x) = 10000(1-2t²)N (p = 0.25 e gh cte):  "))
        for i in v:
            x = ep1.fazx(i)
            l = float(input("\nLambda (0.25 ou 0.5 ou 0.51) = "))
            integrais(x, i, l, b, c)
    elif a == 5:
        b = Decimal(input("Digite o numero: "))
        notacao(b)
    elif a == 6:
        v = [[1, 2, 5], [3, 4, 2, 4], [2, 4, 2, 4], [
            2, 5, 6, 6], [3, 2, 1, 2], [34, 5, 6], [7, 4, 2, 1]]
        load(v)
    elif a == 7:
        v = [[1, 2, 5], [3, 4, 2, 4], [2, 4, 2, 4], [
            2, 5, 6, 6], [3, 2, 1, 2], [34, 5, 6], [7, 4, 2, 1]]
        for i in progressbar(v, "Computing: "):
            time.sleep(0.1)
    elif a == 8:
        u = int(input('Tamanho de u: '))
        t = int(input('Tamanho de t: '))
        ep1.progressbar1(u, t)
    elif a == 9:
        a = float(input("Digite o coeficiente de uk%d - " % a))
    elif a == 10:
        n = int(input('N = '))
        v = arq(n)
        print(v)
    elif a == 11:
        r = rand()
        print(r)


if __name__ == "__main__":
    main()
