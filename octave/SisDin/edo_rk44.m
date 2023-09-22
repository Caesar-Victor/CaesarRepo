close all; clear all; clc
figura_handler = figure;
#t_init = input("Digite o instante inicial: ")
#tf = input("Digite o instante final: ")
#y_init = input("Digite a condicao inicial: ")
t_init = 0;
tf = 1;
y_init = 1;

function retval = f(t,y)
 retval = (t^2+y^2)/(t*y);
endfunction

function retval = phi (t,y,dt)
  k1 = f(t,y);
  k2 = f(t+dt/2, y+dt/2*k1);
  k3 = f(t+dt/2, y+dt/2*k2);
  k4 = f(t+dt, y+dt*k3);
  retval = 1/6*(k1+2*(k2+k3)+k4);
endfunction

function UmPasso(t, y, tf, dt)  # Metodo de um passo via RK44
  indice = 1;
  while t(indice) < tf
    y(indice+1) = y(indice) + dt * phi(t(indice),y(indice),dt);
    dt = min(dt, tf-t(indice++));
  endwhile
endfunction

%% intervalo 0.1
dt=0.1; %incremento de tempo
t=t_init:dt:tf; % Vetor tempo
y = zeros(length(t),1);
y(1) = y_init;


UmPasso(t, y, tf, dt);
plot (t, y, 'Linewidth', 3)
hold on
clear t y;

%%intervalo 0.01
dt=0.01;
t=t_init:dt:tf;
y = zeros(length(t),1);
y(1) = y_init;


UmPasso(t, y, tf, dt)
plot (t, y, 'Linewidth', 3)
hold on
clear t y;

% Arrumando plot grid on
legend({'dt=0.1', 'dt=0.01', 'Exata'}, 'Fontsize', 12)
xlabel('t', 'Fontsize', 20)
ylabel('y (t) ', 'Fontsize', 20)
set(figura_handler, 'Color', [1 1 1])
print(figura_handler, '-dpng')
