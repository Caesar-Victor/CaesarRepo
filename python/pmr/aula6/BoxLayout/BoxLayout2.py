import sys
from PyQt5.QtWidgets import QWidget, QLabel, QPushButton, QHBoxLayout, QVBoxLayout, QApplication
from PyQt5 import QtCore
class Janela(QWidget):   
    def __init__(self):
        super(Janela, self).__init__()   
        self.initUI()
        
    def initUI(self):        
        box1 = QVBoxLayout()
       
        lbl1 = QLabel('label1')
        lbl2 = QLabel('label2')     
   
        box1.addWidget(lbl1)
        box1.addWidget(lbl2)
        box1.setAlignment(QtCore.Qt.AlignCenter)
         
        box2 = QHBoxLayout()
        
        button1 = QPushButton('botao1')
        button2 = QPushButton('botao2')
        
        box2.addWidget(button1)
        box2.addWidget(button2)
        box2.setAlignment(QtCore.Qt.AlignCenter)
        
        mainbox = QVBoxLayout()
        mainbox.addLayout(box1)
        mainbox.addLayout(box2)
        
        self.setLayout(mainbox)
        
        self.setGeometry(300, 300, 450, 450)
        self.setWindowTitle('Class BoxLayout')    
        self.show()       

if __name__ == '__main__':
 
    if not QApplication.instance():
       app = QApplication(sys.argv)
    else:
       app = QApplication.instance()  
    
    x = Janela()
    app.exec_()    