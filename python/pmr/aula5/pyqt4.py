#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 17 15:02:34 2017

@author: thiago
"""

import sys
from PyQt5.QtGui import QPalette
from PyQt5.QtWidgets import QApplication, QMainWindow, QToolBar, QWidget, QPushButton, QLabel, QTextEdit
from PyQt5.QtCore import Qt, QThread, QRunnable


def adeus(x):
    print("Adeus")
    trabalhador.terminate()
    app.quit()
    
def trabalho():
    while True:
        QThread.msleep(500)
        print("Trabalhando...")
        
def processa_acao(acao):
    if id(acao1)==id(acao):
        print("Ação 1")
    print("Botão pressionado:" + acao.text())

app = QApplication(sys.argv)
window = QMainWindow()
window.setFixedSize(640,480)
window.setWindowTitle("Janela Azul")
cores = QPalette(app.palette(window))
cores.setColor(QPalette.Window, Qt.darkRed)

barra = window.addToolBar("")
# cria o text box
window.setCentralWidget(QTextEdit())
window.centralWidget().setAutoFillBackground(True)

trabalhador = QThread()
trabalhador.run = trabalho
trabalhador.start()

acao1 = barra.addAction("Nome")
barra.addAction("Sobrenome")
barra.addAction("NUSP")
barra.actionTriggered.connect(processa_acao)
window.show()
# Insire a string relativa a acao atraves de append
barra.actionTriggered.connect(lambda acao : window.centralWidget().append(acao.text()+'\n'))

window.closeEvent = adeus
app.exec()
 