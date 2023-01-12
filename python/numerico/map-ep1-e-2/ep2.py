# -*- coding: utf-8 -*-
# Lucas Oliveira de Paula - 10773680
# Victor Nasciemnto Pereira - 10773530

from ep1 import crank, random, math, np


def ep2(x, t, nf, p, r):
    n = len(x) - 1
    uk = []
    coef = []
    ut = []
    matrizA = []
    vetorB = []

    for i in range(0, nf):                 # Cria matriz com vetores Uk
        vetoru = []
        vetoru = crank(x, t, 4, p[i], 2)
        uk.append(vetoru)

    if r in ('a', 'b', 'e'):
        for i in range(0, nf):                          # Cria vetor coef para vetor Ut
            cf = float(input("Digite o coeficiente de u%d - " % (i+1)))
            coef.append(cf)

        for i in range(0, n+1):                           # Cria vetor Ut
            valorut = 0
            somaut = 0
            for j in range(0, nf):
                valorut = coef[j] * uk[j][i]
                somaut = somaut + valorut
            ut.append(somaut)
    elif r in ('c', 'd'):
        ut = learquivo(n)
        if r == 'd':
            ut = ruido(ut)

    # Faz matriz A (coeficientes) e vetor B (independentes)
    for i in range(0, nf):
        linhaA = []
        B = produtointerno(ut, uk[i])
        vetorB.append(B)
        for j in range(0, nf):
            A = produtointerno(uk[i], uk[j])
            linhaA.append(A)
        matrizA.append(linhaA)

    vetorx = resolvenovox(matrizA, vetorB)
    print('Valores de ak (vetor):')
    print(vetorx)
    e2(vetorx, ut, uk)


def produtointerno(vetoru, vetorv):
    n = len(vetoru)-1
    soma = 0
    for i in range(1, n):
        produto = vetoru[i]*vetorv[i]
        soma = soma + produto
    return soma


def novaldl(A):
    n = len(A)
    d = []
    linhal = []
    l = []
    v = []

    for i in range(0, n):           # cria matriz l
        linhal = []
        for j in range(0, n):
            if j == i:
                linhal.append(1)
            else:
                linhal.append(0)
        l.append(linhal)

    for i in range(0, n):                   # cria vetor d
        somad = 0
        v = []
        for j in range(0, i):
            v.append(l[i][j]*d[j])
            somad = somad + v[j]*l[i][j]
        d.append(A[i][i]-somad)
        for j in range(i+1, n):       # modifica matriz l
            somal = 0
            for k in range(0, i):
                somal = somal + l[j][k]*v[k]

            l[j][i] = (A[j][i] - somal) / d[i]

    return (l, d)


def resolvenovox(A, b):

    n = len(A)
    l, d = novaldl(A)
    y = []
    z = []
    x = []

    y.append(b[0])
    for i in range(1, n):
        somay = 0
        for j in range(0, i):
            somay = somay + l[i][j]*y[j]
        y.append(b[i] - somay)

    for i in range(0, n):
        z.append(y[i]/d[i])

    for i in range(0, n):
        x.append(0)
    x[n-1] = z[n-1]
    for i in range(1, n):
        somax = 0
        for j in range(n-i, n):
            somax = somax + l[j][n-i-1]*x[j]
        x[n-i-1] = z[n-i-1] - somax

    return x


def ruido(ut):
    for i in range(0, len(ut)):
        ruido = (random.random()-0.5)*2
        ut[i] = ut[i] + ut[i]*ruido*0.01
    return ut


def e2(ak, ut, uk):

    somaut = 0
    for i in range(0, len(ut)):
        somauk = 0
        for k in range(0, len(ak)):
            somauk = somauk + ak[k]*uk[k][i]
        somaut = somaut + (ut[i] - somauk)*(ut[i] - somauk)

    print('Erro quadrático =', f'{(math.sqrt(somaut / (len(ut)-1))):.2e}')


def learquivo(n):
    v = []
    f = open('teste.txt', 'r')
    raw = f.read()
    f = raw.split('\n')
    aux = ''
    if n == 0:
        raw = f[0].split('       ')
        for i in raw:
            aux = ''
            for j in i:
                if j != ' ':
                    aux = aux+j
            v.append(np.float128(aux))
        return v
    for i in range(1, len(f)-1, int((len(f)-3)/n)):
        aux = ''
        for j in f[i]:
            if j != ' ':
                aux = aux+j
        v.append(np.float128(aux))
    return v
