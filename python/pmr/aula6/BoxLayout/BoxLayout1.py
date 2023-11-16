import sys
from PyQt5.QtWidgets import QWidget, QLabel, QHBoxLayout, QVBoxLayout, QApplication
class Example(QWidget):
    def __init__(self):
        super(Example, self).__init__()       
        self.initUI()
        
    def initUI(self):
        
        hbox1 = QHBoxLayout()        
        vbox1 = QVBoxLayout()
       
        lbl1 = QLabel('label1')
        lbl2 = QLabel('label2')     
        lbl3 = QLabel('label3')
        lbl4 = QLabel('label4')
        lbl5 = QLabel('label5')     
        lbl6 = QLabel('label6')      
 
        hbox1.addWidget(lbl1)
        hbox1.addWidget(lbl2)
        hbox1.addWidget(lbl3)
        
        vbox1.addWidget(lbl4)
        vbox1.addWidget(lbl5)
        vbox1.addWidget(lbl6)
        
        vbox2 = QVBoxLayout(self)
        vbox2.addLayout(hbox1)
        vbox2.addLayout(vbox1)
        
        self.setLayout(vbox2)
        
        self.setGeometry(300, 300, 450, 450)
        self.setWindowTitle('Absolute')    
        self.show()

if __name__ == '__main__':
    if not QApplication.instance():
       app = QApplication(sys.argv)
    else:
       app = QApplication.instance()  
    
    x = Example()
    app.exec_()        