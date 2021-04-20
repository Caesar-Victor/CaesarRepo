import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QAction, QFileDialog, QTextEdit
from PyQt5.QtGui import QIcon
 
class App(QMainWindow):
    def __init__(self):
        super().__init__()
        self.title = 'Menus'
        self.left = 10
        self.top = 10
        self.width = 640
        self.height = 400
        self.initUI()
        
    # Create an Editor Widget
    def editor(self):
        self.textEdit = QTextEdit()
        self.setCentralWidget(self.textEdit)

    # launches File Dialog Widget
    def file_open(self):        
        options  = QFileDialog.DontUseNativeDialog
        filenames = QFileDialog.getOpenFileName( self,'Open File','','text files (*.txt)',None,options )
        name = filenames[0]
        file = open(name,'r+')
        with file:
            text = file.read()
            self.textEdit.setText( text )
        file.close()

    def file_save(self):
        options  = QFileDialog.DontUseNativeDialog
        filenames = QFileDialog.getSaveFileName( self,'Open File','','text files (*.txt)',None,options )
        name = filenames[0]
        file = open(name,'w')
        file.write( str(self.textEdit.toPlainText()) )
        file.close()

    def initUI( self ):
        self.setWindowTitle( self.title )
        self.setGeometry( self.left, self.top, self.width, self.height )
 
        mainMenu   = self.menuBar( ) 
        fileMenu   = mainMenu.addMenu( 'File' )
        editMenu   = mainMenu.addMenu( 'Edit' )
        viewMenu   = mainMenu.addMenu( 'View' )
        searchMenu = mainMenu.addMenu( 'Search' )
        toolsMenu  = mainMenu.addMenu( 'Tools' )
        helpMenu   = mainMenu.addMenu( 'Help' )
        
        openButton = QAction( QIcon('openfile.png'),'Open', self )
        openButton.setShortcut( 'Ctrl+O' )
        openButton.setStatusTip( 'Open File' )
        openButton.triggered.connect( self.file_open )
        fileMenu.addAction( openButton )

        saveButton = QAction( QIcon('savefile.png'), 'Save', self )
        saveButton.setShortcut( 'Ctrl+S' )
        saveButton.setStatusTip( 'Save File' )
        saveButton.triggered.connect( self.file_save )
        fileMenu.addAction( saveButton )

        exitButton = QAction( QIcon('exit.png'), 'Exit', self )
        exitButton.setShortcut( 'Ctrl+Q' )
        exitButton.setStatusTip( 'Exit application' )
        exitButton.triggered.connect( self.close )
        fileMenu.addAction( exitButton )

        self.editor()
        self.show()

if __name__ == '__main__':
    
    if not QApplication.instance():
       app = QApplication(sys.argv)
    else:
       app = QApplication.instance()  
       
    x = App()
    app.exec_() 