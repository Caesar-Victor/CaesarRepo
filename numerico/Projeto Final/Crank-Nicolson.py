# Universidade de São Paulo - USP
# Instituto de Matemática e Estatística - IME
# Departamento de Matemática Aplicada - MAP
# Curso: Bacharelado em Matemática Aplicada e Computacional - BMAC
# Disciplina: Métodos Numéricos em Equações Diferenciais II - MAP2320
# Professor: Dr. Luiz Carlos de Castro Santos
# Aluno: Jonatan de Sena Silva                      nUSP: 6820402
# Aluno: Mateus Jingi Chou                          nUSP: 11221352
# Aluno: Nathanaell Vinícius de Camargos Welter     nUSP: 10809021

# Projeto Final
# EDP Parabólica - Crank-Nicholson

######################################################

# Importa Bibliotecas
from tkinter import ttk
import numpy as np
from numpy.linalg import norm
# np.set_printoptions(precision=4)
np.set_printoptions(linewidth=150)
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
from prettytable import PrettyTable
import scipy.linalg
import scipy.sparse as ss
import scipy.sparse.linalg
import time

######################################################

# Constantes
a = 1                               # Constante de difusividade términa = unitário
alpha = 0.9                         # Parâmetro da solução manufaturada

# Domínio
x_0 = -0.5                          # Extremidade inferior de x
x_L = 0.5                           # Extremidade superior de x
y_0 = -0.5                          # Extremidade inferior de y
y_L = 0.5                           # Extremidade superior de y
t_0 = 0                             # Tempo inicial
t_T = np.ceil((3/alpha)*np.log(10)) # Tempo final

# Número de divisões
nx = 2**5                           # Tamanho do passo em x
ny = 2**5                           # Tamanho do passo em y
nt = [2**i for i in range(7,13)]    # Tamanho do passo em t

######################################################

# Solução manufaturada
utxy = lambda t,x,y,alpha=alpha: x*y*np.e**(-alpha*t) + np.sin(np.pi*x)*np.cos(np.pi*y)

# Termo forçante
g = lambda t,x,y,alpha=alpha: 2*(np.pi**2)*np.sin(np.pi*x)*np.cos(np.pi*y) - alpha*x*y*(np.e**(-alpha*t))

######################################################

# Crank-Nicholson Bidimensional
def cn(x_0,x_L,y_0,y_L,t_0,t_T,a,alpha,nx,ny,nt,tipo):

    # Início do tempo
    ti = time.time()

    # Tamanho dos espaçamentos
    dx = (x_L - x_0)/nx             # Tamanho em x
    dy = (y_L - y_0)/ny             # Tamanho em y
    dt = (t_T - t_0)/nt             # Tamanho no tempo

    # Lambda
    Lambda = (a*dt/(dx**2))
    
    # Partições
    x = np.linspace(x_0,x_L,nx+1)   # Partição em x
    y = np.linspace(y_0,y_L,ny+1)   # Partição em y
    t = np.linspace(t_0,t_T,nt+1)   # Partição no tempo

    # Meshgrid
    X, Y = np.meshgrid(x,y)

    # Condições iniciais
    W0 = utxy(t[0],X,Y)
    
    # Constroi as matrizes A e B da equação: Aw^{n+1} = Bw^{n}
    n = (nx+1)*(ny+1)
    def Matriz(Lambda, n, ny, const):
        
        D_d = (1 + const*2*Lambda) * np.ones(n)         # Diagonal principal
        D_d[::ny+1] = 1                                 # OESTE
        D_d[ny::ny+1] = 1                               # LESTE
        D_d[:ny+1] = 1                                  # SUL
        D_d[-(ny+1)::] = 1                              # NORTE

        D_b = (-const*Lambda/2) * np.ones(n-1)          # Diagonal inferior
        D_b[ny::ny+1] = 0                               # OESTE
        D_b[ny-1::ny+1] = 0                             # LESTE
        D_b[:ny+1] = 0                                  # SUL
        D_b[-(ny+1)::] = 0                              # NORTE

        D_b_ny = (-const*Lambda/2) * np.ones(n-(ny+1))  # Diagonal inferior defasada de ny
        D_b_ny[ny::ny+1] = 0                            # OESTE
        D_b_ny[::ny+1] = 0                              # LESTE
        D_b_ny[-(ny+1)::] = 0                           # NORTE

        D_c = (-const*Lambda/2) * np.ones(n-1)          # Diagonal superior
        D_c[::ny+1] = 0                                 # OESTE
        D_c[ny::ny+1] = 0                               # LESTE
        D_c[:ny+1] = 0                                  # SUL
        D_c[-(ny)::] = 0                                # NORTE

        D_c_ny = (-const*Lambda/2) * np.ones(n-(ny+1))  # Diagonal superior defasada de ny
        D_c_ny[::ny+1] = 0                              # OESTE
        D_c_ny[ny::ny+1] = 0                            # LESTE
        D_c_ny[:ny+1] = 0                               # SUL

        return (D_d, D_b, D_b_ny, D_c, D_c_ny)

    # Diagonais das matrizes A e B da equação: Aw^{n+1} = Bw^{n}
    elem_A = Matriz(Lambda, n, ny, const=1)
    elem_B = Matriz(Lambda, n, ny, const=-1)

    # Matrizes A e B da equação: Aw^{n+1} = Bw^{n}
    if tipo.upper() == "CHEIA":
        A_cheia = np.diag(elem_A[2],-(ny+1)) + np.diag(elem_A[1],-1) + np.diag(elem_A[0]) + np.diag(elem_A[3],1) + np.diag(elem_A[4],(ny+1))
        B_cheia = np.diag(elem_B[2],-(ny+1)) + np.diag(elem_B[1],-1) + np.diag(elem_B[0]) + np.diag(elem_B[3],1) + np.diag(elem_B[4],(ny+1))
    if tipo.upper() == "ESPARSA":
        A_esparsa = ss.diags([elem_A[0], elem_A[3], elem_A[1], elem_A[4], elem_A[2]], [0, 1, -1, ny+1, -(nx+1)], format='csc')
        B_esparsa = ss.diags([elem_B[0], elem_B[3], elem_B[1], elem_B[4], elem_B[2]], [0, 1, -1, ny+1, -(nx+1)], format='csc')
   
    # Transforma uma matriz em um vetor C-B
    def ordenar_CB(matriz):
        vet = []
        for i in range(len(matriz)):
            for j in range(len(matriz[i])):
                vet.append(matriz[i][j])
        return vet

    # Loop temporal
    w_sol = []
    w = ordenar_CB(W0)
    w_sol.append(w)
    xx = ordenar_CB(X)
    yy = ordenar_CB(Y)
    for i in range(1,nt+1):
        vetG = []
        for j in range(n):
            dtgg = dt*0.5*(g(t[i-1],xx[j],yy[j]) + g(t[i],xx[j],yy[j]))
            vetG.append(dtgg)
        
        # Zera o termo forçante no contorno
        for k in range(ny+1):                       # SUL
            vetG[k] = 0
        for k in range(-(ny+1),0):                  # NORTE
            vetG[k] = 0
        for k in range((ny+1),len(vetG),ny+1):      # OESTE
            vetG[k] = 0
        for k in range(ny,len(vetG),ny+1):          # LESTE
            vetG[k] = 0
        
        # Resolve matriz cheia ou esparsa
        if tipo.upper() == "CHEIA":
            w_novo = scipy.linalg.solve(A_cheia, B_cheia @ w_sol[-1] + vetG)
        if tipo.upper() == "ESPARSA":
            w_novo = scipy.sparse.linalg.spsolve(A_esparsa, B_esparsa @ w_sol[-1] + vetG)

        # Dirichlet no contorno
        for k in range(ny+1):                       # SUL
            w_novo[k] = utxy(t[i],xx[k],yy[k])
        for k in range(-(ny+1),0):                  # NORTE
            w_novo[k] = utxy(t[i],xx[k],yy[k])
        for k in range((ny+1),len(w_novo),ny+1):    # OESTE
            w_novo[k] = utxy(t[i],xx[k],yy[k])
        for k in range(ny,len(w_novo),ny+1):        # LESTE
            w_novo[k] = utxy(t[i],xx[k],yy[k])

        w = w_novo
        w_sol.append(w)
    
    # Solução final 
    w_sol_p = []
    for i in range(len(w_sol)):                 # Numérica
        val = np.reshape(w_sol[i],(nx+1,ny+1))  # vetor >> matriz
        w_sol_p.append(val)
    WFINAL = utxy(t[-1],X,Y)                    # Analitica   

    # Erro
    erro = np.linalg.norm(w_sol_p[-1]-WFINAL)

    # Tempo
    tempo = time.time() - ti

    return [w_sol_p,X,Y,nx,ny,nt,dx,dy,dt,Lambda,erro,tempo]

######################################################

# Figura com "t" mais refinado
def fig1(result):
    X, Y = result[-1][1], result[-1][2]
    
    WFINAL = utxy(1,X,Y)        # Analitica
    wfinal = result[-1][0][-1]  # Numérica
    
    # Plota as soluções
    fig = plt.figure()
    fig.suptitle(f"Crank-Nicolson\nSoluções Notáveis")
    for i in range(3):
        if i == 0:
            ax = fig.add_subplot(1,3,i+1, projection='3d',alpha=0.75)
            ax.plot_surface(X,Y,WFINAL,cmap="viridis",label="Analítico")
            cset = ax.contour(X,Y,WFINAL,zdir='x',offset=x_0, cmap="viridis")
            cset = ax.contour(X,Y,WFINAL,zdir='y',offset=y_L, cmap="viridis")
            cset = ax.contour(X,Y,WFINAL,zdir='z',offset=-1, cmap="viridis")
            ax.set(title=f"Analítica\nnx = {result[-1][3]}, ny = {result[-1][4]}, nt = {result[-1][5]}",\
            xlabel='X', ylabel='Y', zlabel='T',\
            xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))
        if i == 1:
            ax = fig.add_subplot(1,3,i+1, projection='3d')
            ax.plot_surface(X,Y,wfinal,cmap="inferno", label="Crank-Nicholson",alpha=0.75)
            cset = ax.contour(X,Y,wfinal,zdir='x',offset=x_0, cmap="inferno")
            cset = ax.contour(X,Y,wfinal,zdir='y',offset=y_L, cmap="inferno")
            cset = ax.contour(X,Y,wfinal,zdir='z',offset=-1, cmap="inferno")
            ax.set(title=f"Manufaturada\nnx = {result[-1][3]}, ny = {result[-1][4]}, nt = {result[-1][5]}",\
            xlabel='X', ylabel='Y', zlabel='T',\
            xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))
        if i == 2:
            ax = fig.add_subplot(1,3,i+1,projection="3d")
            ax.plot_surface(X,Y,WFINAL,cmap="viridis",label="Analítico",alpha=0.75)
            cset = ax.contour(X,Y,WFINAL,zdir='x',offset=x_0, cmap="viridis")
            cset = ax.contour(X,Y,WFINAL,zdir='y',offset=y_L, cmap="viridis")
            cset = ax.contour(X,Y,WFINAL,zdir='z',offset=-1, cmap="viridis")
            ax.plot_surface(X,Y,wfinal,cmap="inferno", label="Crank-Nicholson",alpha=0.75)
            cset = ax.contour(X,Y,wfinal,zdir='x',offset=x_0, cmap="inferno")
            cset = ax.contour(X,Y,wfinal,zdir='y',offset=y_L, cmap="inferno")
            cset = ax.contour(X,Y,wfinal,zdir='z',offset=-1, cmap="inferno")
            ax.set(title=f"Analítica e Manufaturada\nnx = {result[-1][3]}, ny = {result[-1][4]}, nt = {result[-1][5]}",\
            xlabel='X', ylabel='Y', zlabel='T',\
            xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))
    
    plt.tight_layout()
    plt.subplots_adjust(wspace=0.25,hspace=0.225,right=0.95)
    plt.show()

# Figura comparando variação dos "t"
def fig2(result):
    fig = plt.figure()
    fig.suptitle(f"Crank-Nicolson")
    
    # Solução Manufaturada
    X1, Y1 = result[-1][1], result[-1][2]
    ax1 = fig.add_subplot(1,4,1, projection='3d')
    ax1.plot_surface(X1, Y1, result[-1][0][-1], cmap="viridis",alpha=0.75)
    cset = ax1.contour(X1, Y1, result[-1][0][-1], zdir='x', offset=x_0, cmap="viridis")
    cset = ax1.contour(X1, Y1, result[-1][0][-1], zdir='y', offset=y_L, cmap="viridis")
    cset = ax1.contour(X1, Y1, result[-1][0][-1], zdir='z', offset=-1, cmap="viridis")
    ax1.set(title=f"Manufaturada\nnx = {result[-1][3]}, ny = {result[-1][4]}, nt = {result[-1][5]}",\
            xlabel='X', ylabel='Y', zlabel='T',\
            xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))

    # Soluções Numéricas
    for i in range(len(result)):
        X, Y = result[i][1], result[i][2]
        if i in (0,1,2):
            ax = fig.add_subplot(2,4,i+2, projection='3d')
        if i in (3,4,5):
            ax = fig.add_subplot(2,4,i+3, projection='3d')
        ax.plot_surface(X, Y, result[i][0][-1], cmap="inferno",alpha=0.75)
        cset = ax.contour(X, Y, result[i][0][-1], zdir='x', offset=x_0, cmap="inferno")
        cset = ax.contour(X, Y, result[i][0][-1], zdir='y', offset=y_L, cmap="inferno")
        cset = ax.contour(X, Y, result[i][0][-1], zdir='z', offset=-1, cmap="inferno")
        ax.set(title=f"nx = {result[i][3]}, ny = {result[i][4]}, nt = {result[i][5]}",\
               xlabel="X", ylabel="Y", zlabel="T",\
               xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))

    plt.tight_layout()
    plt.subplots_adjust(wspace=0.25,hspace=0.225,right=0.95)
    plt.show()

######################################################

# Animação
def ani(x_0,x_L,y_0,y_L,nx,ny,alpha):
    
    # Função manufaturada: u(t,x,y)
    def func(x, y, t):
        return x*y*np.e**(-alpha*t) + np.sin(np.pi*x)*np.cos(np.pi*y)

    # Regime permanente
    t_rp = 8

    # Dados para aplicar na animação
    x = np.linspace(x_0,x_L,nx)
    y = np.linspace(y_0,y_L,ny)
    tt = []
    for i in range(t_rp):
        tt.append(i*t_rp/101)
    for i in range(t_rp,t_0,-1):
        tt.append(i*t_rp/101)

    # Grid
    xx, yy = np.meshgrid(x,y)

    # Define a superfície
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1,projection="3d")

    # Função periódica
    def update(i):
        ww = func(xx,yy,tt[i])
        ax.clear()
        ax.plot_surface(xx,yy,ww,cmap="viridis")
        cset = ax.contour(xx,yy,ww,zdir="x",offset=x_0,cmap="viridis")
        cset = ax.contour(xx,yy,ww,zdir="y",offset=y_L,cmap="viridis")
        cset = ax.contour(xx,yy,ww,zdir="z",offset=-1,cmap="viridis")
        ax.set(title=f"Solução Manufaturada\n0<t<8 (regime permanente)",\
               xlabel="X", ylabel="Y", zlabel="T",\
               xlim3d=(x_0,x_L), ylim3d=(y_0,y_L), zlim3d=(-1,1))

    # Plotagem para chamar a função update() periodicamente
    anim = FuncAnimation(fig, update,np.arange(len(tt)))

    plt.show()

    # # Salvar
    # writer = PillowWriter(fps=5)
    # anim.save(f"ani3.gif", writer=writer)

######################################################

# Tabela - Resultados Notáveis
def tab1(result):
    print(f"Crank-Nicolson")
    tabela = PrettyTable()
    tabela.field_names = ["nx","ny","nt","dx","dy","dt", "Lambda ", "Erro", "Tempo","Ordem"]
    for i in range(len(result)):

        # Ordem de convergência
        if i == 0 or i == 1:
            ordem = 0
        else:
            ordem = np.log2((result[i-2][10]-result[i-1][10])/(result[i-1][10]-result[i][10]))

        tabela.add_row([result[i][3],result[i][4],result[i][5],result[i][6],result[i][7],\
                        result[i][8],result[i][9],f"{result[i][10]:.4e}",f"{result[i][11]:.4e}",f"{ordem:.4e}"])
    print(tabela)

######################################################

# Função resulados
def Q2(x_0,x_L,y_0,y_L,t_0,t_T,a,alpha,nx,ny,nt,tipo):
    resultados = []
    for i in range(len(nt)):
        resultados.append(cn(x_0,x_L,y_0,y_L,t_0,t_T,a,alpha,nx,ny,nt[i],tipo))

    # Figuras
    fig1(resultados)    # Figura com "t" mais refinado
    fig2(resultados)    # Figura comparando variação dos "t"

    # Animação
    ani(x_0,x_L,y_0,y_L,nx,ny,alpha)

    # Tabela
    tab1(resultados)

######################################################

# Chama a função
Q2(x_0,x_L,y_0,y_L,t_0,t_T,a,alpha,nx,ny,nt,tipo="esparsa")

######################################################

print("Fim")