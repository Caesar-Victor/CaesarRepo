import math

x=6
f=((x**2)+2)/(2*x)
i=0
e=0.000001
while f-math.sqrt(2)>e or i>=1000:
    i+=1
    f=((f**2)+2)/(2*f)
    print("Erro = %f" % (f-math.sqrt(2)))
if i<1000:
    print("Numero de iterações necessarias com X0 = %f e erro = %f: %d" % (x, e, i))
else:
    print("Nao foi possivel fazer uma boa aproximacao")