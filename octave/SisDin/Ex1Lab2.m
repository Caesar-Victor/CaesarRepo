close all; clear all; clc
figura_handler = figure;
a=0;  %instante inicial
b=1; % instante final
y_init=1; %condicao inicial
yp = @(i) -6*i; % equacao diferencial
y(1)=y_init;

%% intervalo 0.1
dt=0.001; %incremento de tempo
t=a:dt:b; % Vetor tempo

for n=1:length (t)-1
y (n+1)= y (n) +dt*yp (y (n) );
end
plot (t, y, 'Linewidth', 3)
hold on
clear t y; y (1)=y_init;
%% intervalo 0.01

%% Arrumando plot
grid on
legend ({'dt=0.10', 'dt=0.01', 'Exata'}, 'Fontsize', 12)
xlabel ('t', 'Fontsize', 20)
a=ylabel ('y (t) ', 'Fontsize', 20) ;
set (figura_handler, 'Color', [1 1 1])
print (figura_handler, '-dpng')





