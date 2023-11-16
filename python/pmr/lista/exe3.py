'''[1,1,1,1,1,1], [1,2,1,2,1,2]'''
def reduz(a):
    cont=0
    for i in range(0, len(a), 2):
        if a[i] == a[i+1]:
            a[cont]=a[i]
            cont+=1
    del a[cont:]

a=[1,2,1,2,1,2]
reduz(a)
print(a)

# On