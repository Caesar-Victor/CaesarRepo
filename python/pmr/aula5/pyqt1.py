#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 17 15:02:34 2017

@author: thiago
"""

import sys
from PyQt5.QtGui import QPalette
from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.QtCore import Qt

def adeus(x):
    print("Adeus")
    app.quit()

app = QApplication(sys.argv)
# Criando uma janela
window = QMainWindow()
window.setFixedSize(640,480)
window.setWindowTitle("Janela Azul")
# Setando as cores
cores = QPalette(app.palette(window))
cores.setColor(QPalette.Window, Qt.blue)
window.setPalette(cores)
# Tornando a janela visivel
window.show()
# Setando o que ocorre no fechamento da janela
window.closeEvent = adeus
# finaliza a interface
app.exec()