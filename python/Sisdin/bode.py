import numpy as np
import control
import matplotlib.pyplot as plt
#R1 = 10M e C1 = 20nF
R1 = 10**6
C1 = 2*10**(-8)

G1 = control.tf([1], [R1*C1, 1])
print(G1)
#R2 = 10M e C2 = 100nF
R2 = 10**6 + 10**6
C2 = 10**(-7)

G2 = control.tf([R2*C2, 0], [R2*C2, 1])
print(G2)

G = G1*G2
print(G)

A, phi, w = control.bode(G, omega = np.logspace(-1.,8,1000), dB = 'True', wrap_phase = True)
print(w)
plt.show()

