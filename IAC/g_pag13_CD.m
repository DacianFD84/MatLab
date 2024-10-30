% Introducere valori de la utilizator
P = input('Introduceți valoarea pentru presiunea constantă P (bar): ');
P_star_initial = input('Introduceți valoarea inițială a presiunii P*(0) (bar): ');

% Pasul 1: Definirea variabilelor simbolice
syms P_star(t)
dPdt = diff(P_star, t);

% Pasul 2: Definirea ecuației diferențiale
% Ecuația de rezolvat: 0.5 * dP*/dt + P* = P
eqn = 0.5 * dPdt + P_star == P;

% Pasul 3: Reorganizarea ecuației în funcția dP*/dt
reorganized_eqn = isolate(eqn, dPdt);
disp('Pasul 3: Ecuația reorganizată în funcție de dP*/dt:')
pretty(reorganized_eqn)

% Rezolvăm și afișăm rezultatul pentru dP*/dt
dPdt_solution = simplify(reorganized_eqn);
disp('Rezultatul pentru dP*/dt:')
disp(dPdt_solution)

% Pasul 4: Factorul de integrare
% Factorul de integrare pentru ecuația liniară
mu_t = exp(-int(2, t));  % p(t) = 2
disp('Pasul 4: Factorul de integrare, mu(t) =')
pretty(mu_t)

% Pasul 5: Obținerea soluției generale
general_solution = dsolve(eqn);
disp('Pasul 5: Soluția generală:')
pretty(general_solution)

% Rezultatul soluției generale
C = sym('C');  % Constantă de integrare
general_solution_with_C = C * mu_t + (P - C * mu_t);
disp('Rezultatul soluției generale:')
disp(general_solution_with_C)

% Pasul 6: Aplicarea condiției inițiale
% Folosim P*(0) = P_star_initial pentru a determina constanta de integrare
specific_solution = dsolve(eqn, P_star(0) == P_star_initial);
disp('Pasul 6: Soluția particulară cu condiția inițială aplicată:')
pretty(specific_solution)

% Afișarea rezultatelor într-un format lizibil
fprintf('\n--- Rezultate ---\n');
fprintf('1. Ecuația reorganizată: dP*/dt = %.2f - 2 * P*\n', double(P));
fprintf('2. Factorul de integrare: mu(t) = e^{-2t}\n');
fprintf('3. Soluția generală: C * e^{-2t} + %.2f\n', double(P));
fprintf('4. Soluția particulară: P*(t) = %s\n', latex(specific_solution));
fprintf('5. Valoarea inițială aplicată: P*(0) = %.2f\n', double(P_star_initial));
fprintf('--- Cod LaTeX final ---\nRaspunsul in timp: P*(t) = %s\n', latex(specific_solution));
