pkg load symbolic
pkg load control
pkg load signal
close all; clear all; clc;

syms t

tal = 0.1;
K = 1;
w = [1/pi];
A = 2;
T = 100;
Ys = tf(1*T, [0.1*T 1])
step(Ys)
input("Precione Enter para avançar para a parte 2: ")
phi = zeros(length(w),1);
w = [1/pi 5/pi 10/pi 50/pi 100/pi];
g = 100*(1-exp(-(t+5)/tal))
gt = matlabFunction(g)
figure
fplot(gt)
for k = 1:length(w)
phi(k) = -atan(w(k)*tal);
y = (T + ((K*A*w(k)*tal*exp(-t/tal))/(1+(w(k)*tal)^2))
                 + ((K*A*sin(w(k)*t+phi(k)))/(sqrt(1+(w(k)*tal)^2))))
yt = matlabFunction(y)
figure
fplot(yt)
figure
fplot(yt, [0, 120])
input("Pressione Enter para continuar: ")
endfor

