% Script para calcular a Transformada de Laplace de duas funções
% utilizando a Symbolic Math Toolbox.

clc;
clearvars;
close all;

% Define as variáveis simbólicas t (tempo) e s (frequência)
syms t s;

%% Problema a: f(t) = 8*t^2*cos(3*t + 45°)

% Define a função f(t). É necessário converter o ângulo de 45 graus para radianos.
% Conversão: 45 graus = pi/4 radianos.
f_a = 8*t^2*cos(3*t + pi/4);

% Calcula a Transformada de Laplace
F_a = laplace(f_a, t, s);

% Exibe o resultado de forma simplificada e legível
disp('a. A transformada de Laplace para f(t) = 8*t^2*cos(3*t + 45°) é:');
pretty(simplify(F_a));


%% Problema b: f(t) = 3*t*exp(-2*t)*sin(4*t + 60°)

% Define a função f(t). É necessário converter o ângulo de 60 graus para radianos.
% Conversão: 60 graus = pi/3 radianos.
f_b = 3*t*exp(-2*t)*sin(4*t + pi/3);

% Calcula a Transformada de Laplace
F_b = laplace(f_b, t, s);

% Exibe o resultado de forma simplificada e legível
disp('b. A transformada de Laplace para f(t) = 3*t*exp(-2*t)*sin(4*t + 60°) é:');
pretty(simplify(F_b));