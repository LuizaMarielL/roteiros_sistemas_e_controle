%% Parâmetros para o Exemplo 1.8: Pêndulo

clc;
clearvars;
close all;

%% Parâmetros Físicos do Pêndulo
m = 1.2;      % Massa (kg) [cite: 795]
r = 0.10;     % Raio (m) [cite: 795]
l = 1.5;      % Comprimento da haste (m) [cite: 795]
b = 1.5;      % Coeficiente de atrito (kg/m) [cite: 795]
g = 9.81;     % Aceleração da gravidade (m/s^2) [cite: 795]

% Cálculo do momento de inércia (J) [cite: 797]
J = (m*r^2)/2 + m*l^2;

%% Condições Iniciais e de Simulação
theta0_graus = 30;               % Posição inicial em graus [cite: 798, 799]
theta0_rad = deg2rad(30);        % Posição inicial em radianos

%% Cenários de Simulação (escolha um)

% Cenário a) Sem torque de controle
Tc = 0;      % Torque de controle (N*m) [cite: 798]

% Cenário b) Com torque de controle - Para usar, comente a linha Tc=0 
% acima e descomente a linha abaixo.
% Tc = 7.7;  % Torque de controle (N*m) [cite: 799]