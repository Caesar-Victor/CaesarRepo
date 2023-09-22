a = [0.1 1 2 1];
b = [1 1 1 -1];

for indice = 1:4
  den = [1 a(indice) b(indice)]
  Gs = tf(1, den)
  figure
  zplane(1, den)
  figure
  step(Gs)
  input("Enter para continuar")
endfor

