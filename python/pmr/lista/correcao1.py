def collatz_n(a):
    i = 0
    while a != 1:
        if a%2:
            a = 3*a + 1
        else:
            a //= 2
        i += 1
    return i

a=int(input("Inicio: "))
print(collatz_n(a))