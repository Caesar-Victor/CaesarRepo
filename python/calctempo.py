def calctempo(ts, v):
    totals = ts * v
    As = (60*60*24*365)+(60*60*6)
    totala = totals / As
    return totala

def views():
    opcao = input("Modo simples(s) ou detalhado(d) de inserção para views: ")
    if opcao == 'd':
        return int(input("Insira numero de views: "))
    elif opcao == 's':
        num = float(input("insira o valor: "))
        multiplicador = int(input("Grau de grandeza (10^n): "))
        return num * 10**multiplicador
    else:
        print ("Opção invalida")

def main():
    t1 = int(input("Quantos minutos de duração?: "))
    t2 = int(input("Quantos segundos alem dos minutos?: "))
    v = views()
    ta = calctempo(t1*60+t2, v)
    print ("O tempo em anos é %d" %(ta))

main()