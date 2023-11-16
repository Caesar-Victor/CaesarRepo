import numpy as np

#modifique seus valores
V = 13 #volume
A = 34 #area

#aqui o seu x0
R = 1
f = -(2/3)*R**3 + A*R/2 - V

df = -2*R**2 + A/2

print(f"A sua funcao é phi(x) = -(2/3)πx³ + {A/2}x - {V}")

R = R - f/df

print(f"O valor da primeira iteracao do metodo de newton é {R}")

while (1):
    Rpre = R
    R = R - (-(2/3) * R**3 + A*R/2 - V)/(-2*R**2 + A/2)
    if (abs(Rpre - R) < 0.0001):
        break

print(f"O valor de R procurado é {R}")