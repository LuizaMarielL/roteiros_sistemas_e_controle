%% Parâmetros para o Exemplo 1.7: Queda Livre com Resistência do Ar

clc;
clearvars;
close all;

%% Parâmetros Físicos
g = 9.81;  % Aceleração da gravidade (m/s^2) 
b = 0.3;   % Coeficiente de resistência do ar (kg/m)

%% Cenários de Simulação (escolha um)

% Cenário a) Objeto pesado
m = 5;     % Massa do objeto (kg)
% Cenário b) Objeto leve - Para usar, comente a linha m=5 acima e 
% descomente a linha abaixo.
% m = 0.45;  % Massa do objeto (kg)