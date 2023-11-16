import datetime
def testeVetorMin(v):
    tamFil = []
    for i in range(5):
        tamFil.append(len(v[i]))
    print(tamFil)
    return min(tamFil)

def time(h1, h2, op):
    h1=str(h1)
    h2=str(h2)
    t=''
    for i in range(len(h1)):
        if i != 2 and i != 5:
            if op == '-':
                t = t+str(int(h1[i]) - int(h2[i]))
            elif op == '+':
                t = t + str(int(h1[i]) + int(h2[i]))
        else:
            t = t + h1[i]
    return t

def main():
    a = int(input('1- Teste vetor minimo\
        \n2- Datetime\
        \nQual teste deseja fazer? : '))
    if a == 1:
        v = [[1, 5, 2, 5, 2, 4, 12], [2, 1, 4, 3], [
            1, 2, 5, 4], [1, 2, 3, 4, 5], [2, 4, 2, 1, 4, 6, 3]]
        print(testeVetorMin(v))

    elif a==2:
        t=str(datetime.time())
        i = int(t[0]+t[1]+t[3]+t[4]+t[6]+t[7])
        print(i)
        t = time(datetime.time(), '00:00:20', '+')
        print(t)

if __name__ == "__main__":
    main()
