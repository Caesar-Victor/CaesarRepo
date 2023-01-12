from ep1 import fazx, fazt, metodo11, euler, crank

if __name__ == "__main__":
    b = 1
    while b == 1 or b == 2 or b == 3:
        print(" \n1 - Teste do metodo 11\n2 - Euler Implicito\n3 - Crank Nicolson\
            \nDigite outro valor inteiro para sair\n")
        b = int(input("Qual teste deseja executar? - "))
        if b == 1 or b == 2 or b == 3:
            n = int(input("Escolha o valor de N: "))
            lmbda = float(input("Escolha o valor de lambda (Para delta ser igual a \
deltax, lambda = n; Para inserir M, lambda = 0): "))
            if lmbda == 0:
                m = int(input("Escolha o valor de M(multiplo de 10): "))
            else:
                m = n ** 2 / lmbda
            if int(m) == m:
                m = m-1    
            a = int(input("\nSelecione a função f(t,x) desejada:\
                \n1: f(t,x) = 10x²(x−1)−60xt+ 20t\
                \n2: f(t,x) = 10cos(10t)x²(1−x)²−(1 +sin(10t))(12x²−12x+ 2)\
                \n3: f(t,x) = 25t²e^(t-x) cos(5tx) - 10te^(t-x) sen(5tx) - 5xe^(t-x) sen(5tx)\
                \n4: f(t,x) = 10000(1-2t²)N (p = 0.25 e gh cte):  "))
        
            if a != 1 and a != 2 and a != 3 and a != 4:
                print ("Teste Invalido")
                break 

            x = fazx(n)
            t = fazt(m)

            if b == 1:
                metodo11 (x,t,a)
            elif b == 2:
                euler (x,t,a)
            # elif b == 3:
            #     crank (x,t,a)
        else:
            print("Teste invalido")