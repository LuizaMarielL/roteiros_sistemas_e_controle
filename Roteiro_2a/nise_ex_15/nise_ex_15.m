% Script para calcular a expansão em frações parciais de uma função F(s).

clc;
clearvars;
close all;

%% 1. Definir os polinômios do numerador e denominador

% --- Numerador: 10^4 * (s+5) * (s+70) ---
k = 10^4;
num_factors = conv([1 5], [1 70]); % Multiplica (s+5) por (s+70)
num = k * num_factors;             % Aplica o ganho

% --- Denominador: s*(s+45)*(s+55)*(s^2+7s+110)*(s^2+6s+95) ---
den1 = conv([1 0], [1 45]);             % s*(s+45)
den2 = conv(den1, [1 55]);              % ...*(s+55)
den3 = conv(den2, [1 7 110]);           % ...*(s^2+7s+110)
den = conv(den3, [1 6 95]);             % ...*(s^2+6s+95)

%% 2. Calcular a expansão em frações parciais

[R, P, K] = residue(num, den);

%% 3. Exibir os resultados de forma organizada

disp('Expansão em Frações Parciais para F(s):');
disp(' ');
disp('A expansão tem a forma: F(s) = R(1)/(s-P(1)) + R(2)/(s-P(2)) + ... + K');
disp('----------------------------------------------------------------------');

% Exibe cada par de Resíduo (R) e Polo (P)
for i = 1:length(R)
    fprintf('Resíduo R(%d) = %f + (%f)i\n', i, real(R(i)), imag(R(i)));
    fprintf('   Polo P(%d) = %f + (%f)i\n\n', i, real(P(i)), imag(P(i)));
end

% Exibe o termo direto K (se não for vazio ou zero)
if ~isempty(K) && K ~= 0
    disp('Termo Direto K:');
    disp(K);
else
    disp('Termo Direto K = 0');
end