import sys
from PyQt5.QtWidgets import QWidget, QLabel, QApplication

class Janela(QWidget):    
    def __init__(self):
        super(Janela, self).__init__()
        
        self.initUI()
        
    def initUI(self):
        
        lbl1 = QLabel('label1', self)
        lbl1.move(15, 10)
       
        lbl2 = QLabel('label2', self)
        lbl2.move(35, 40)
        
        lbl3 = QLabel('label3', self)
        lbl3.move(55, 70)        
        
        self.setGeometry(300, 300, 250, 150)
        self.setWindowTitle('Absolute')    
        self.show()

if __name__ == '__main__':
    if not QApplication.instance():
       app = QApplication(sys.argv)
    else:
       app = QApplication.instance()  
    
    x = Janela()
    app.exec_()