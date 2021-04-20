#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  7 11:48:23 2020

@author: maruyama
"""

import sys
from PyQt5.QtWidgets import QWidget, QRadioButton, QLabel, QGroupBox, QHBoxLayout, QVBoxLayout, QApplication
from PyQt5 import QtCore

class Radiodemo(QWidget):            # Radiodemo é sub-classe de QWidget    
   def __init__(self):
      QWidget.__init__(self)         # Inicializacao da super-classe
               
      self.mainlayout = QVBoxLayout()     # layout principal do tipo vertical
      
      # Arrays de groupbox
      # Os groupboxes agrupam os radio buttons relativos a mesma pergunta
      # de forma que um radio button de um groupbox nao interfere no comportamento
      # de outros radio buttons em outros groupboxes
      # Atribui-se um label que no caso e' a pergunta
      self.Perguntas=[None,None, None]
      self.Perguntas[0] = QGroupBox('1-) 1 + 1 = ?')
      self.Perguntas[1] = QGroupBox('2-) 12 - 3 = ?')        
      self.Perguntas[2] = QGroupBox('3-) 10 - 10 = ?')        

      # As alternativas para cada questao formam um groupbox horizontal 
      self.LayoutDasAlternativas1 = QHBoxLayout()            
      self.LayoutDasAlternativas2 = QHBoxLayout()  
      self.LayoutDasAlternativas3 = QHBoxLayout()  
 
      # Arrays de radio buttons de cada pergunta
      self.MatrixRadioButtons1=[None,None]
      self.MatrixRadioButtons2=[None,None]    
      self.MatrixRadioButtons3=[None,None]    

      self.MatrixRadioButtons1[0] = QRadioButton("(a) 2")    # Cria opcao abacaxi
      self.MatrixRadioButtons1[1]= QRadioButton("(b) 0")    # Cria opcao abacaxi

      self.MatrixRadioButtons2[0]= QRadioButton("(a) 15")    # Cria opcao cafe
      self.MatrixRadioButtons2[1]= QRadioButton("(b) 9")    # Cria opcao cha
           
      self.MatrixRadioButtons3[0]= QRadioButton("(a) 0")    # Cria opcao cafe
      self.MatrixRadioButtons3[1]= QRadioButton("(b) -1")      
      
      # RadioButtons sao inseridos no Groupbox
      self.LayoutDasAlternativas1.addWidget(self.MatrixRadioButtons1[0])
      self.LayoutDasAlternativas1.addWidget(self.MatrixRadioButtons1[1])
    
      self.LayoutDasAlternativas2.addWidget(self.MatrixRadioButtons2[0])
      self.LayoutDasAlternativas2.addWidget(self.MatrixRadioButtons2[1])   
      
      self.LayoutDasAlternativas3.addWidget(self.MatrixRadioButtons3[0])
      self.LayoutDasAlternativas3.addWidget(self.MatrixRadioButtons3[1])  

      # layout horizontal contendo radio buttons sao colocados nos groupboxes
      self.Perguntas[0].setLayout(self.LayoutDasAlternativas1)            
      self.Perguntas[1].setLayout(self.LayoutDasAlternativas2) 
      self.Perguntas[2].setLayout(self.LayoutDasAlternativas3)              
             
 
      # groupboxes sao colocados no layout principal
      # groupboxes sao widgets
      self.mainlayout.addWidget(self.Perguntas[0])
      self.mainlayout.addWidget(self.Perguntas[1])
      self.mainlayout.addWidget(self.Perguntas[2])


      # coloca o main layout na janela
      self.setLayout(self.mainlayout)        
      self.setWindowTitle("Teste de Aritimetica")     # Titulo da janela
      self.setFixedSize(320,240)                   # Dimensoes da janela 
        
   def closeEvent(self,event):
      cont=0
      for i in range(0,2):
         if self.MatrixRadioButtons1[i].isChecked() == True and self.MatrixRadioButtons1[i].text()[1]=='a' :
            cont+=1
         if self.MatrixRadioButtons2[i].isChecked() == True and self.MatrixRadioButtons2[i].text()[1]=='b' :
            cont+=1
         if self.MatrixRadioButtons3[i].isChecked() == True and self.MatrixRadioButtons3[i].text()[1]=='a' :
            cont+=1
      print("Acertou", cont, "questao(oes).")         
                
if __name__ == '__main__':                     
   if not QApplication.instance(): # Verifica se ja existe uma instancia de QApplication
       app = QApplication(sys.argv)
   else:
       app = QApplication.instance()  
       
   x = Radiodemo()
   x.show()
   app.exec_()