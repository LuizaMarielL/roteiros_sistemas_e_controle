% Script para formar objetos LTI nas formas polinomial (tf) e fatorada (zpk)
% usando as toolboxes Symbolic Math e Control System.

clc;
clearvars;
close all;

% Define 's' como uma variável simbólica
syms s;

%% Problema a

fprintf('------------------- Problema a -------------------\n\n');

% Define a expressão simbólica para G(s)
num_a_sym_expr = 45 * (s^2 + 37*s + 74) * (s^3 + 28*s^2 + 32*s + 16);
den_a_sym_expr = (s + 39) * (s + 47) * (s^2 + 2*s + 100) * (s^3 + 27*s^2 + 18*s + 15);
G_a_sym = num_a_sym_expr / den_a_sym_expr;

% --- Passo de Conversão (Correção) ---
% 1. Extrai o numerador e o denominador simbólicos da fração
[num_sym, den_sym] = numden(G_a_sym);
% 2. Converte os polinômios simbólicos para vetores de coeficientes numéricos
num_a_coeffs = sym2poly(num_sym);
den_a_coeffs = sym2poly(den_sym);

% --- Forma Polinomial (tf) ---
% 3. Cria o objeto tf usando os vetores de coeficientes
G_a_tf = tf(num_a_coeffs, den_a_coeffs);
disp('Forma Polinomial (TF):');
G_a_tf

% --- Forma Fatorada (zpk) ---
% Cria o objeto zpk a partir do objeto tf
G_a_zpk = zpk(G_a_tf);
disp('Forma Fatorada (ZPK):');
G_a_zpk


%% Problema b

fprintf('\n------------------- Problema b -------------------\n\n');

% Define a expressão simbólica para G(s)
num_b_sym_expr = 56 * (s + 14) * (s^3 + 49*s^2 + 62*s + 53);
den_b_sym_expr = (s^3 + 81*s^2 + 76*s + 65) * (s^2 + 88*s + 33) * (s^2 + 56*s + 77);
G_b_sym = num_b_sym_expr / den_b_sym_expr;

% --- Passo de Conversão (Correção) ---
[num_sym, den_sym] = numden(G_b_sym);
num_b_coeffs = sym2poly(num_sym);
den_b_coeffs = sym2poly(den_sym);

% --- Forma Polinomial (tf) ---
G_b_tf = tf(num_b_coeffs, den_b_coeffs);
disp('Forma Polinomial (TF):');
G_b_tf

% --- Forma Fatorada (zpk) ---
G_b_zpk = zpk(G_b_tf);
disp('Forma Fatorada (ZPK):');
G_b_zpk