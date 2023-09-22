close all; clear all; clc
figura_handler = figure;
a = 0;
b = 1;
y_init = 1;
function retval = yp(i)
 retval = -6*i;
endfunction
y(1) = y_init;

%% intervalo 0.1
dt = 0.1; %incremento de tempo
t = a:dt:b; % Vetor tempo

for n=1:length (t)-1  # Metodo de Euler explicito
  y(n+1) = y(n) + dt*yp(y(n));
end
plot (t, y, 'Linewidth', 3)
hold on
clear t y;
y(1) = y_init;

% Arrumando plot grid on
legend({'dt=0.10', 'dt=0.01', 'Exata'}, 'Fontsize', 12)
xlabel('t', 'Fontsize', 20)
ylabel('y (t) ', 'Fontsize', 20)
set(figura_handler, 'Color', [1 1 1])
print(figura_handler, '-dpng')
