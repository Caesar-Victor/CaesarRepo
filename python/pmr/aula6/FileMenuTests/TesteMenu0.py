import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QAction
from PyQt5.QtGui import QIcon
 
class App(QMainWindow):
 
    def __init__(self):
        super().__init__()
        self.title    = 'Menus'
        self.left     = 10
        self.top      = 10
        self.width    = 640
        self.height   = 400
        self.initUI()
 
    def initUI(self):
        self.setWindowTitle( self.title ) 
        self.setGeometry( self.left, self.top, self.width, self.height )
 
        mainMenu   = self.menuBar( ) 
        fileMenu   = mainMenu.addMenu( 'File' )
        editMenu   = mainMenu.addMenu( 'Edit' )
        viewMenu   = mainMenu.addMenu( 'View' )
        searchMenu = mainMenu.addMenu( 'Search' )
        toolsMenu  = mainMenu.addMenu( 'Tools' )
        helpMenu   = mainMenu.addMenu( 'Help' )
        
        openButton = QAction( QIcon('openfile.png'), 'Open', self )
        openButton.setShortcut( 'Ctrl+O' )
        openButton.setStatusTip( 'Open File' )
        # openButton.triggered.connect(self.close)
        fileMenu.addAction(openButton)

        saveButton = QAction( QIcon('savefile.png'), 'Save', self )
        saveButton.setShortcut( 'Ctrl+S' )
        saveButton.setStatusTip( 'Save File' )
        # saveButton.triggered.connect( ?? )
        fileMenu.addAction( saveButton )

        exitButton = QAction( QIcon('exit.png'), 'Exit', self )
        exitButton.setShortcut( 'Ctrl+Q' )
        exitButton.setStatusTip( 'Exit application' )
        exitButton.triggered.connect( self.close )
        fileMenu.addAction( exitButton )        
        
        self.show()
 
if __name__ == '__main__':
    
    if not QApplication.instance():
       app = QApplication(sys.argv)
    else:
       app = QApplication.instance()  
    
    x = App()
    app.exec_()