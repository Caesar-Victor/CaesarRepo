import sys
from PyQt5.QtWidgets import QWidget, QLabel, QHBoxLayout, QVBoxLayout, QApplication
from PyQt5 import QtCore

class Janela(QWidget):   
    def __init__(self):
        super(Janela, self).__init__()   
        self.initUI()
                
    def initUI(self):
        
        #box = QHBoxLayout()
        box = QVBoxLayout()
       
        lbl1 = QLabel('label1')
        lbl2 = QLabel('label2')     
   
        box.addWidget(lbl1)
        box.addWidget(lbl2)
      
        self.setLayout(box)
        
        #box.setAlignment(QtCore.Qt.AlignTop)        
        #box.setAlignment(QtCore.Qt.AlignBottom)
        box.setAlignment(QtCore.Qt.AlignCenter)
        #box.setAlignment(QtCore.Qt.AlignHCenter)
        #box.setAlignment(QtCore.Qt.AlignVCenter)
        #box.setAlignment(QtCore.Qt.AlignLeft)
        #box.setAlignment(QtCore.Qt.AlignRight)        

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
