pkg load symbolic
syms X t s                   % Defina as variáveis simbólicas​

x0=0;                        % i.b.c. ​
dx0=0;
                     % i.b.c.​
f = 200*cos(10*t) ;                 % Defina o lado direito da função​

F = laplace(f,t,s);          % Encontre a transformada de Laplace do rhs​


X1=s*X-x0;                   % Transf Laplace y'(t) : Y1 = s Y - y(0)​
X2 = s*X1 - dx0;             % Transf Laplace y''(t) : Y2 = s Y1 - y'(0)​

% Defina a transformada Laplace do lado esquerdo menos o lado direito​
% ... para resolver em Y:​

function Sol(F)
Sol_s=F;
Sol_s=simplify(Sol_s)        % Simplifique a expressão​               ​
Sol_t=ilaplace(Sol_s)        % Solução no domínio do tempo
figure        ​
fh=ezplot(Sol_t,[0,15]); set(fh,'Color','r','LineWidth',3);
% plot Sol_t(t) no domínio de 0-5s​
input("Aperte Enter para continuar")
endfunction

Sol(solve(10*X2+40*X1+4000*X-F,X))

