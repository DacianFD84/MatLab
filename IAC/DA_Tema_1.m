% MATLAB code to analyze the convergence of the series Σ(1/(3n + 4)) * x_n
% using the D'Alembert criterion with user input for each x_n

% Explicăm utilizatorului scopul calculului
fprintf('Acest program determină convergența unei serii de forma Σ(1/(3n + 4)) * x_n\n');
fprintf('prin aplicarea criteriului D''Alembert, care utilizează raportul termenilor succesivi.\n');
fprintf('Veți introduce valorile pentru x_n pentru fiecare termen din serie.\n');

% Solicităm numărul de termeni pentru analiză
num_terms = input('Introduceți numărul de termeni pe care doriți să-i analizați (n >= 2): ');
while num_terms < 2
    fprintf('Numărul de termeni trebuie să fie cel puțin 2 pentru a aplica criteriul D''Alembert.\n');
    num_terms = input('Introduceți din nou numărul de termeni (n >= 2): ');
end

% Inițializăm un vector pentru valorile x_n introduse de utilizator
x_values = zeros(1, num_terms);

% Solicităm utilizatorului să introducă fiecare valoare x_n
for n = 1:num_terms
    x_values(n) = input(['Introduceți valoarea lui x_' num2str(n) ': ']);
    fprintf('Ați introdus x_%d = %.2f\n', n, x_values(n));
end

% Informăm utilizatorul despre pasul următor: calculul raportului D'Alembert
fprintf('\nAcum vom calcula raportul D''Alembert pentru a determina dacă seria este convergentă sau divergentă.\n');
fprintf('Raportul D''Alembert între doi termeni succesivi este dat de limita |a_{n+1} / a_n|, unde a_n = (1/(3n + 4)) * x_n.\n');

% Inițializăm variabila pentru calculul limitei
limit_ratio = 0;

% Calculăm raportul D'Alembert pentru termenii succesivi până la num_terms - 1
for n = 1:num_terms - 1
    % Calculăm a_n și a_{n+1}
    a_n = (1 / (3 * n + 4)) * x_values(n);
    a_n_plus_1 = (1 / (3 * (n + 1) + 4)) * x_values(n + 1);
    
    % Calculăm raportul |a_{n+1} / a_n|
    ratio = abs(a_n_plus_1 / a_n);
    fprintf('Raportul |a_{%d+1} / a_%d| = |%.4f / %.4f| = %.4f\n', n, n, a_n_plus_1, a_n, ratio);
    
    % Actualizăm valoarea maximă a raportului găsit
    if ratio > limit_ratio
        limit_ratio = ratio;
    end
end

% Afișăm valoarea calculată a raportului limita
fprintf('\nRaportul limită calculat (criteriul D''Alembert) este: %.4f\n', limit_ratio);

% Interpretarea rezultatului
if limit_ratio < 1
    fprintf('Concluzie: Seria este convergentă pe baza criteriului D''Alembert, deoarece raportul este mai mic decât 1.\n');
elseif limit_ratio > 1
    fprintf('Concluzie: Seria este divergentă pe baza criteriului D''Alembert, deoarece raportul este mai mare decât 1.\n');
else
    fprintf('Concluzie: Criteriul D''Alembert este inconcludent pentru această serie deoarece raportul este exact 1.\n');
end
