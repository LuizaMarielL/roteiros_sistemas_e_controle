% Script para calcular a Transformada Inversa de Laplace de duas funções
% utilizando a Symbolic Math Toolbox.

clc;
clearvars;
close all;

% Define as variáveis simbólicas s (frequência) e t (tempo)
syms s t;

%% Problema a

% Define o numerador e o denominador da função G(s)
num_a = (s^2 + 3*s + 10)*(s + 5);
den_a = (s + 3)*(s + 4)*(s^2 + 2*s + 100);
G_a = num_a / den_a;

% Calcula a Transformada Inversa de Laplace
g_a = ilaplace(G_a, s, t);

% Exibe o resultado de forma simplificada e legível
disp('a. A transformada inversa de Laplace para G(s) é:');
pretty(simplify(g_a));


%% Problema b

% Define o numerador e o denominador da função G(s)
num_b = s^3 + 4*s^2 + 2*s + 6;
den_b = (s + 8)*(s^2 + 8*s + 3)*(s^2 + 5*s + 7);
G_b = num_b / den_b;

% Calcula a Transformada Inversa de Laplace
g_b = ilaplace(G_b, s, t);

% Exibe o resultado de forma simplificada e legível
disp('b. A transformada inversa de Laplace para G(s) é:');
pretty(simplify(g_b));