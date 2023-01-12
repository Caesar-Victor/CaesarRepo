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
# EDP Hiperbólica - Leapfrog

######################################################

# Importa Bibliotecas
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
from prettytable import PrettyTable
import time

######################################################

"""
                    COMO USAR
-----------------------------------------------------
Lambda = 1.0                        const = 1.00
Lambda = 0.8                        const = 1.25
Lambda = 0.5                        const = 2.00
Lambda = 0.4                        const = 2.50
Lambda = 0.2                        const = 5.00

"""

# Parâmetro do Lambda
const = 1.00

######################################################

# Parâmetros da função
a = 1               # Constante

x_0 = -1            # Extremidade inferior do domínio
x_L = 1             # Extremidade superior do domínio

t_0 = 0             # Tempo inicial
t_T = (x_L-x_0)/a   # Tempo final

m = [2**i for i in range(5,11)] # Quantidade de espaçamentos na direção x
n = [int(const*i) for i in m]   # Quantidade de espaçamentos na direção t

######################################################

# Velocidade inicial da onda
omega = 2*np.pi
v = lambda x: np.sin(omega*x)

######################################################

# Figura 1 - Ondas Separadas
def fig1(result):
    fig = plt.figure()
    fig.suptitle(f"Leapfrog - Ondas Notáveis")
    for i in range(9):
        ax = fig.add_subplot(3,3,i+1)
        t = (t_T-t_0)/8 * i
        ax.plot(result[-1][0][int(result[-1][3]/8 * i)],label=f"t={t:.3}")
        ax.legend(loc="upper right")
        ax.set(xlabel="Posição", ylabel='Amplitude')
        pos_x= [result[-1][2]/8*i for i in range(9)]
        eixo_x = [r"$-2\pi$",r"$-\frac{3\pi}{2}$",r"$-\pi$",r"$-\frac{\pi}{2}$","0",r"$\frac{\pi}{2}$",r"$\pi$",r"$\frac{3\pi}{2}$",r"$2\pi$"]
        plt.xticks(pos_x, eixo_x)
    plt.tight_layout()
    plt.show()

# Figura 2 - Ondas Sobrepostas
def fig2(result):
    fig= plt.figure()
    fig.suptitle(f"Leapfrog - Ondas Sobrepostas")
    for i in range(len(result)):
        if i <=3:
            ax = fig.add_subplot(2,3,i+1)
        if i > 3:
            ax = fig.add_subplot(2,3,i+1)
        for k in range(result[i][3]):
            ax.plot(result[i][0][k])
        plt.xticks([],[])
        ax.set(title=f"m = {result[i][2]}, n = {result[i][3]}", xlabel="Posição", ylabel="Amplitude")
    plt.tight_layout()
    plt.show()

# Figura 3 - Ondas 3D
def fig3(result):
    fig = plt.figure()
    fig.suptitle(f"Leapfrog - Ondas 3D")
    for i in range(len(result)):
        x = np.linspace(x_0,x_L,result[i][2]+1)
        y = [j*result[i][5] for j in range(result[i][3]+1)]
        X,Y = np.meshgrid(x,y)
        W = np.array(result[i][0])
        ax = fig.add_subplot(2,3,i+1,projection='3d')
        ax.plot_surface(X,Y,W,cmap="jet")
        pos_x= [-1+j*1/4 for j in range(9)]
        eixo_x = [r"$-2\pi$",r"$-\frac{3\pi}{2}$",r"$-\pi$",r"$-\frac{\pi}{2}$","0",r"$\frac{\pi}{2}$",r"$\pi$",r"$\frac{3\pi}{2}$",r"$2\pi$"]
        plt.xticks(pos_x, eixo_x)
        ax.set(title=f"m = {result[i][2]}, n = {result[i][3]}",\
               xlabel="Posição", ylabel="Tempo", zlabel="Amplitude")
        plt.subplots_adjust(hspace=0.3)
    plt.show()

######################################################

# Animação
def ani(result):
    val = result[-1][0][::]    # primeiro nível já é config. inicial de anim
    fig = plt.figure()  
    ax = plt.axes(title="Animação\nLeapfrog",
                  xlim=(-1,1),ylim=(-1,1),
                  xlabel="Posição",ylabel="Amplitude")   
    line, = ax.plot([], [])
    
    # Função Inicializadora
    def init():  
        line.set_data([],[])
        return line,

    # Animar
    def animate(i):
        x = np.linspace(-1,1,len(val))
        y = val[i]
        line.set_data(x,y)
        return line,
    
    # Animação
    anim = FuncAnimation(fig,animate,np.arange(len(val)),init_func=init,interval=5,blit=True)
    
    plt.show()

    # # Salvar
    # writer = PillowWriter(fps=5)
    # anim.save(f"ani2.gif", writer=writer)

######################################################

# Tabela - Resultados Notáveis
def tab1(result):
    print(f"Leapfrog")
    tabela = PrettyTable()
    tabela.field_names = ["m ", "n ", "h ", "k ", "Lambda ", "Erro", "Tempo", "Ordem"]
    for i in range(len(result)):
        
        # Ordem de convergência
        if i == 0:
            ordem = 0
        else:
            ordem = np.log2(abs(result[i-1][7]/result[i][7]))
        
        tabela.add_row([result[i][2],result[i][3],result[i][4],result[i][5],result[i][6],\
                        f"{result[i][7]:.4e}",f"{result[i][8]:.4e}",f"{ordem:.4e}"])
    print(tabela)

######################################################

# Leapfrog
def lf(x_0,x_L,t_0,t_T,m,n,a,v):

    # Tempo
    ti = time.time()

    # Passo 1
    h = (x_L - x_0)/m   # Número de espaçamento dos pontos na direção x
    k = (t_T - t_0)/n   # Número de espaçamento dos pontos na direção t
    Lambda = a*k/h

    # Passo 2
    x = np.linspace(x_0,x_L,m+1)    # Partição do espaço   

    # Passo 3
    u1 = v(x)
    u2 = v(x+k)
    sol = []
    sol.append(u1)          # Armazena primeiro nível                        
    sol.append(u2)          # Armazena segundo nível
    for _ in range(2,n+1):
        u0 = np.copy(u1)
        u1 = np.copy(u2)
        u2[1:-1] = u0[1:-1] - Lambda*(u1[2::] - u1[:-2])
        u2[0]    = u0[0]    - Lambda*(u1[1] - u1[-2])
        u2[-1]   = u2[0]
        u = u2.copy()
        sol.append(u)

    # Solução exata
    ue = v(x+k*n)

    # Erro
    erro = max(abs(sol[-1]-ue))

    # Tempo
    tempo = time.time() - ti

    # Resultados
    resultado = (sol,x,m,n,h,k,Lambda,erro,tempo)   # Vetor resultados

    return (resultado)

######################################################

# executa o programa
def Q1p2():
    
    # diferentes valores de "h"
    result = []
    for i in range(len(m)):
        result.append(lf(x_0,x_L,t_0,t_T,m[i],n[i],a,v))

    # Plota os Gráficos
    fig1(result)
    fig2(result)
    fig3(result)
    
    # Animação
    if const == 1:
        ani(result)
    
    # Plota a Tabela
    tab1(result)

# Chamada da função
Q1p2()

######################################################

print("Fim")
