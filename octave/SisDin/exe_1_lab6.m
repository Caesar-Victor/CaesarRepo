clear all;close all;clc;
pkg load control
t_max = 100;
m1 = 40; m2 = 40; k1 = 16; k2 = 16; b1 = 2; b2 = 2;
A = [0 0 1 0;
     0 0 0 1;
     -k1/m1 k2/m1 -b1/m1 b1/m1;
     k1/m2 -(k1+k2)/m2 b1/m2 -(b1+b2)/m2];
B = [0; 0; 1/m1; 0];
C = [1 0 0 0;
     0 1 0 0];
D = [0];
t = 0:0.01:t_max;
sys = ss(A,B,C,D)
u = zeros(length(t), 1);
x0 = [0.2 0.2 0 0]; # x1(0) = x2(0) = 0,2
[y]=lsim(sys,u,t,x0);
figure
plot(t,y)
grid on

dy_dt = @ (t,y) [y(3);
  y(4);
  -(k1/m1)*y(1)+(k2/m1)*y(2)-(b1/m1)*y(3)+(b1/m1)*y(4);
  (k1/m2)*y(1)-((k1+k2)/m2)*y(2)+(b1/m2)-((b1+b2)/m2)*y(4)];

[t, y] = ode45(dy_dt, [0 t_max], x0);
figure
plot(t,y)
grid on
