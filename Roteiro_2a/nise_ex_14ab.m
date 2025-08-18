% Script para gerar a função de transferência G(s) nas formas
% de Fatores (ZPK) and Polinômios (TF).

clc;
clearvars;
close all;

%% Definindo a Função de Transferência (TF) a partir dos polinômios

% Coeficientes do polinômio do numerador
num = [1 25 20 15 42];

% Coeficientes do polinômio do denominador
den = [1 13 9 37 35 50];

% Cria o objeto de função de transferência (TF)
G_tf = tf(num, den);


%% a. Exibindo como uma razão de fatores (ZPK)

% Converte o modelo TF para o modelo Zero-Polo-Ganho (ZPK)
G_zpk = zpk(G_tf);

disp('a. Função de Transferência como razão de fatores (ZPK):');
G_zpk


%% b. Exibindo como uma razão de polinômios (TF)

disp('b. Função de Transferência como razão de polinômios (TF):');
G_tf