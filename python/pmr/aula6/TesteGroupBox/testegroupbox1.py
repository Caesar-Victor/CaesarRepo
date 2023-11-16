import sys
from PyQt5.QtWidgets import QWidget,QMainWindow,QRadioButton, QLabel, QGroupBox, QHBoxLayout, QVBoxLayout, QApplication
from PyQt5 import QtCore

def adeus(x):
    for i in range(0,2):
        if x[i].isChecked() == True:
           print("A minha fruta escolhida e: ",x[i].text())
           
class Radiodemo(QWidget):            # Radiodemo é sub-classe de QWidget    
#class Radiodemo(QWidget):            # Radiodemo é sub-classe de QWidget    
   def __init__(self):
      QWidget.__init__(self)         # Inicializacao da super-classe
               
      self.mainlayout = QVBoxLayout()     # layout principal do tipo vertical
    
      # Ha apenas uma pergunta mas se existissem N perguntas -> Perguntas[0..N-1]
      self.Perguntas=[None]
      self.Perguntas[0] = QLabel('1- Qual fruta prefere ?')
                    
      # As alternativas para cada questao formam um groupbox horizontal
      # Se N perguntas -> [0..N-1]
      self.LayoutDasAlternativas    = [None]
      self.LayoutDasAlternativas[0] = QHBoxLayout()            # layout horizontal
    
      # Matrix de radio buttons
      # Pre-alocacao com elementos vazios
      # Se N perguntas -> [0..N-1,0..N-1]
      # Por exemplo se 2 perguntas -> MatrixRadioButtons[[None,None],[None,None]]
      self.MatrixRadioButtons=[None,None]
        
      self.MatrixRadioButtons[0]= QRadioButton("Abacaxi")    # Cria opcao abacaxi
      self.MatrixRadioButtons[0].setChecked(True)            # Resposta default
      self.MatrixRadioButtons[0].toggled.connect(lambda:self.btnstate(self.MatrixRadioButtons[0]))
                                                 # Acao associada a essa opcao - btnstate()
 
      self.MatrixRadioButtons[1]= QRadioButton("Pera")    # Cria opcao abacaxi
      self.MatrixRadioButtons[1].toggled.connect(lambda:self.btnstate(self.MatrixRadioButtons[1]))
                                                 # Acao associada a essa opcao - btnstate()  
      # RadioButtons sao inseridos no Groupbox
      self.LayoutDasAlternativas[0].addWidget(self.MatrixRadioButtons[0])
      self.LayoutDasAlternativas[0].addWidget(self.MatrixRadioButtons[1]) 


      # Construcao do layout principal
      self.mainlayout.addWidget(self.Perguntas[0])  # Label da pergunta    
      self.mainlayout.addLayout(self.LayoutDasAlternativas[0]) # group box das alternativas

      # coloca o main layout na janela
      self.setLayout(self.mainlayout)        
      self.setWindowTitle("Frutas Preferidas")    # Titulo da janela
      self.setFixedSize(200,50)                   # Dimensoes da janela

   def btnstate(self,b): # Identifica o estado dos RadioButtons True/False
          if b.text() == "Abacaxi":
             if b.isChecked() == True:
                print(b.text()+" foi selecionada")
             else:
                print(b.text()+" foi desselecionada")              
          if b.text() == "Pera":
             if b.isChecked() == True:
                print(b.text()+" foi selecionada")
             else:
                print(b.text()+" foi desselecionada")
                    
   def closeEvent(self, event): # Definicao da funcao que executa se fechar a janela
       for i in range(0,2):
           if self.MatrixRadioButtons[i].isChecked() == True:
              print("A minha fruta escolhida e: ",self.MatrixRadioButtons[i].text())                                    

if __name__ == '__main__':                     
   if not QApplication.instance(): # Verifica se ja existe uma instancia de QApplication
       app = QApplication(sys.argv)
   else:
       app = QApplication.instance()         
   x = Radiodemo()
   x.show()
   app.exec_()   