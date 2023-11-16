def supercrescente(a):
    valatu=a[0]
    for i in range(1, len(a)):
        if a[i]<=valatu:
            return False
        valatu+=a[i]
    return True

a=[2,3,4]
if supercrescente(a):
    print('Vdd')
else:
    print('Nop')

''' Para sequencias nulas a função retorna True'''