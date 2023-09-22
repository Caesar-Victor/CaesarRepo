num = 1; den = [90 1];
sys = tf(num,den)
t = 0:3/300:600; % 3 s de simulacao​
y = step(sys,t);
y40 = 40.*y;
plot(t,y40)

#T = 40;
#s = 0.632*T;
#delta=0.001;
#arg=find(y40<s+delta & y40>s-delta);
#y40(arg)
#t(arg)

