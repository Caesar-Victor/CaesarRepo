#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 17 15:02:34 2017

@author: thiago
"""

import sys
from PyQt5.QtGui import QPalette
from PyQt5.QtWidgets import QApplication, QMainWindow, QToolBar, QWidget, QPushButton, QLabel
from PyQt5.QtCore import Qt, QThread, QRunnable

def adeus(x):
    print("Adeus")
    trabalhador.terminate()
    app.quit()
    
def trabalho():
    while True:
        QThread.msleep(500)
        print("Trabalhando...")

app = QApplication(sys.argv)
# define janela e cores
window = QMainWindow()
window.setFixedSize(640,480)
window.setWindowTitle("Janela Azul")
cores = QPalette(app.palette(window))
cores.setColor(QPalette.Window, Qt.blue)
# cria um ToolBar, associa QWidget a Window, seta cores
barra = window.addToolBar("")
window.setCentralWidget(QWidget())
window.centralWidget().setPalette(cores)
window.centralWidget().setAutoFillBackground(True)
# define uma thread nova
trabalhador = QThread()
trabalhador.run = trabalho
trabalhador.start()
# adiciona um  botão
barra.addAction("Novo Botão")
barra.addAction("Outro Botão")
window.show()
window.closeEvent = adeus
app.exec()
