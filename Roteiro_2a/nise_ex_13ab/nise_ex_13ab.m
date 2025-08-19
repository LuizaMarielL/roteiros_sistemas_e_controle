% Script para gerar uma função de transferência de duas maneiras:
% a. Como uma razão de fatores (modelo Zero-Polo-Ganho)
% b. Como uma razão de polinômios (modelo de Função de Transferência)

clc;
clearvars;
close all;

%% a. Gerar a função como uma razão de fatores (modelo ZPK)

% Zeros (raízes do numerador)
z = [-15; -26; -72];

% Polos (raízes do denominador)
% Polos dos termos (s), (s+55), (s+56)
p1 = [0; -55; -56];
% Polos do termo quadrático (s^2 + 5s + 30)
p2 = roots([1 5 30]);
% Polos do termo quadrático (s^2 + 27s + 52)
p3 = roots([1 27 52]);
% Combina todos os polos em um único vetor
p = [p1; p2; p3];

% Ganho
k = 5;

% Cria o modelo Zero-Polo-Ganho (ZPK)
G_zpk = zpk(z, p, k);

disp('a. Função de Transferência como razão de fatores (ZPK):');
G_zpk


%% b. Gerar a função como uma razão de polinômios (modelo TF)

% Converte o modelo ZPK para o modelo de Função de Transferência (TF)
G_tf = tf(G_zpk);

disp('b. Função de Transferência como razão de polinômios (TF):');
G_tf