pkg load symbolic
pkg load control
pkg load signal
close all; clear all; clc;

syms t s

K = 200;
tal = 0.01;
Fs = tf(K, [tal 1])
K = 1/20;
tal = 0.5;
Gs = tf(K, [tal 1])
Ys = Gs * Fs
step(Ys)
