import numpy as np
from matplotlib import pyplot as plt
import random as rand
from AleatorioAlunos import fexp

if __name__ == "__main__":
      lambdacliente = 40/3600  # Taxa de chegadas por seg
      duracaoexpediente = 6*3600    # Duracao do expediente em seg
      Dtev1 = fexp(lambdacliente,duracaoexpediente)
          
      plt.title("Somatoria Dtev1 = %d; Expediente 6h = %d" 
            %(sum(Dtev1), duracaoexpediente))
      # Histograma com 20 setores
      plt.hist(Dtev1,20)
      plt.show()   
