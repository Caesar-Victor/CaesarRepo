syms X t s                   % Defina as variáveis simbólicas​

x0=0;                        % i.b.c. ​
dx0=0;
                     % i.b.c.​
f1 = 3*exp(-2*t) ;                 % Defina o lado direito da função​
f2 = 5*sin(2*t);
f3 = 8;

F1 = laplace(f1,t,s);          % Encontre a transformada de Laplace do rhs​
F2 = laplace(f2,t,s);
F3 = laplace(f3,t,s);


X1=s*X-x0;                   % Transf Laplace y'(t) : Y1 = s Y - y(0)​
X2 = s*X1 - dx0;             % Transf Laplace y''(t) : Y2 = s Y1 - y'(0)​

% Defina a transformada Laplace do lado esquerdo menos o lado direito​
% ... para resolver em Y:​

function Sol(F)
Sol_s1=F;
Sol_s1=simplify(Sol_s1)        % Simplifique a expressão​               ​
Sol_t1=ilaplace(Sol_s1)        % Solução no domínio do tempo
figure        ​
fh=ezplot(Sol_t1,[0,5]); set(fh,'Color','r','LineWidth',4);
% plot Sol_t(t) no domínio de 0-5s​
input("Aperte Enter para continuar")
endfunction

Sol(solve(2*X2-4*X1+5*X-F1,X));
Sol(solve(X2+2*X1-2*X-F2,X));
Sol(solve(5*X2+0.5*X1-X-F3,X));

