n = int(input('n: '))
n1 = 2
n2 = 3
n3 = 5
n4 = 7
operacao = True

while (operacao):
    if n < (n1*n1 + n2*n2 + n3*n3 + n4*n4):
        print('falso')
        operacao = False
    elif n == (n1*n1 + n2*n2 + n3*n3 + n4*n4):
        print(n1, ' ', n2, ' ', n3, ' ', n4)
        operacao = False
    else:
        i = n1+1
        atualiza = True
        while atualiza:
            cont = 0
            for j in range(1, i+1):
                if i % j == 0:
                    cont += 1
            if cont <= 2:
                n1 = i
                atualiza=False
                i += 1
            else:
                i+=1
        atualiza = True
        while atualiza:
            cont = 0
            for j in range(1, i+1):
                if i % j == 0:
                    cont += 1
            if cont <= 2:
                n2 = i
                atualiza=False
                i += 1
            else:
                i+=1
        atualiza = True
        while atualiza:
            cont = 0
            for j in range(1, i+1):
                if i % j == 0:
                    cont += 1
            if cont <= 2:
                n3 = i
                atualiza=False
                i += 1
            else:
                i+=1
        atualiza = True
        while atualiza:
            cont = 0
            for j in range(1, i+1):
                if i % j == 0:
                    cont += 1
            if cont <= 2:
                n4 = i
                atualiza=False
                i += 1
            else:
                i+=1
