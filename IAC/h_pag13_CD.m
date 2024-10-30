% Introducere valori de la utilizator
Q1 = input('Introduceți valoarea pentru Q1 (m^3 pe oră): ');
H_initial = input('Introduceți valoarea inițială a înălțimii H(0) (m): ');

% Pasul 1: Definirea variabilelor simbolice
syms H(t)
dHdt = diff(H, t);

% Pasul 2: Definirea ecuației diferențiale
% Ecuația de rezolvat: 0.3 * dH/dt + H = 3 * Q1
eqn = 0.3 * dHdt + H == 3 * Q1;

% Pasul 3: Reorganizarea ecuației în funcția dH/dt
reorganized_eqn = isolate(eqn, dHdt);
disp('Pasul 3: Ecuația reorganizată în funcție de dH/dt:')
pretty(reorganized_eqn)

% Rezolvăm și afișăm rezultatul pentru dH/dt
dHdt_solution = simplify(reorganized_eqn);
disp('Rezultatul pentru dH/dt:')
disp(dHdt_solution)

% Pasul 4: Factorul de integrare
% Factorul de integrare pentru ecuația liniară
mu_t = exp(-int(1/0.3, t));  % p(t) = 1/0.3
disp('Pasul 4: Factorul de integrare, mu(t) =')
pretty(mu_t)

% Pasul 5: Obținerea soluției generale
general_solution = dsolve(eqn);
disp('Pasul 5: Soluția generală:')
pretty(general_solution)

% Rezultatul soluției generale
C = sym('C');  % Constantă de integrare
general_solution_with_C = C * mu_t + (3 * Q1 - C * mu_t);
disp('Rezultatul soluției generale:')
disp(general_solution_with_C)

% Pasul 6: Aplicarea condiției inițiale
% Folosim H(0) = H_initial pentru a determina constanta de integrare
specific_solution = dsolve(eqn, H(0) == H_initial);
disp('Pasul 6: Soluția particulară cu condiția inițială aplicată:')
pretty(specific_solution)

% Afișarea rezultatelor într-un format lizibil
fprintf('\n--- Rezultate ---\n');
fprintf('1. Ecuația reorganizată: dH/dt = %.2f - 3H\n', 3 * Q1);
fprintf('2. Factorul de integrare: mu(t) = e^{-3.33t}\n'); % 3.33 este 1/0.3
fprintf('3. Soluția generală: C * e^{-3.33t} + %.2f\n', 3 * Q1);
fprintf('4. Soluția particulară: H(t) = %s\n', latex(specific_solution));
fprintf('5. Valoarea inițială aplicată: H(0) = %.2f m\n', double(H_initial));
fprintf('--- Cod LaTeX final ---\nRaspunsul in timp: H(t) = %s\n', latex(specific_solution));
