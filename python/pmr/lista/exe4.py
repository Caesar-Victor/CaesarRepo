def checa_subsequencia(x, y):
    check=0
    for i in y:
        if x[check] == i:
            check+=1
            if check==len(x):
                return True

if(checa_subsequencia([1,2,2],[2,0,1,2])):
    print('Vdd')
else:
    print('KÔ')