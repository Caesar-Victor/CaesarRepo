pkg load symbolic
pkg load control

syms t s;

G = 1/(90*s+1);
T = laplace(40, t, s);
GT = G * T;
gt = ilaplace(GT)
ft = matlabFunction(gt);

temperatura = 0.632 * 40;
delta = 0.001;
vt = [0:delta:120];
y40 = ft(vt);

tempo = vt(find(y40<temperatura+delta & y40>temperatura-delta)(1))

G2 = 1/(45*s+1);
GT2 = G2 * T;
gt2 = ilaplace(GT2)
ft2 = matlabFunction(gt2);
y40_2 = ft2(vt);
tempo_c = vt(find(y40_2<temperatura+delta & y40_2>temperatura-delta)(1))



