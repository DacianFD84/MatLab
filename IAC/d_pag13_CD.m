function raspuns_timp()
    % Introducerea inputului utilizatorului
    Qc = input('Introduceti valoarea fluxului Qc (m3/h): ');
    T0 = input('Introduceti temperatura initiala T(0) (Grade Celsius): ');

    % Pasul 1: Reorganizarea ecuatiei
    fprintf('\nPasul 1: Reorganizarea ecuatiei.\n');
    fprintf('Ecuatia initiala: 4 (dT/dt) + T = 0.35 * Qc \n');
    fprintf('Reorganizata: dT/dt = (0.35 * Qc - T) / 4 \n\n');

    % Pasul 2: Solutia ecuației diferențiale
    fprintf('Pasul 2: Solutia ecuației diferențiale.\n');
    fprintf('Aceasta este o ecuație diferențială de ordinul întâi, care poate fi rezolvată prin metoda variabilelor separate.\n');
    fprintf('Reorganizăm: dT/dt = (0.35 * Qc) / 4 - (T) / 4 \n\n');

    % Pasul 3: Integrarea ecuației
    fprintf('Pasul 3: Integrarea ecuației.\n');
    fprintf('Integram ambele părți:\n');
    fprintf('int(dT / (0.35 * Qc / 4 - T / 4)) = int(dt) \n\n');

    % Pasul 4: Factorul de integrare
    fprintf('Pasul 4: Factorul de integrare.\n');
    fprintf('Aplicăm formula soluției pentru ecuația liniară de tipul T'' + pT = q.\n');
    fprintf('Factorul de integrare este: mu(t) = exp(-int(1/4 dt)) = exp(-t/4) \n\n');

    % Rezolvarea ecuației
    fprintf('Solutia generală:\n');
    fprintf('T(t) = mu(t) * int(mu(t) * q dt) + C * mu(t) \n\n');

    % Pasul 5: Aplicarea condiției inițiale
    fprintf('Pasul 5: Aplicarea condiției inițiale.\n');
    fprintf('Folosind T(0) = %.2f, determinăm C.\n', T0);

    % Calculează C folosind T(0)
    mu0 = exp(0);  % mu(0) = 1
    C = T0 / mu0;

    % Pasul 6: Rezultatul final
    fprintf('Pasul 6: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: T(t) = (0.35 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4)\n');
    fprintf('Unde C = %.2f\n', C);

    % Afisarea in format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('4 (dT/dt) + T = 0.35 * Qc \n');
    fprintf('Reorganizata: dT/dt = (0.35 * Qc - T) / 4 \n\n');

    fprintf('Pasul 2: Soluția ecuației:\n');
    fprintf('dT/dt = (0.35 * Qc) / 4 - (T) / 4 \n\n');

    fprintf('Pasul 3: Integrarea:\n');
    fprintf('int(dT/(0.35 * Qc / 4 - T / 4)) = int(dt) \n\n');

    fprintf('Pasul 4: Factorul de integrare:\n');
    fprintf('mu(t) = exp(-int(1/4 dt)) = exp(-t/4) \n\n');

    fprintf('Pasul 5: Aplicarea condiției inițiale:\n');
    fprintf('Folosind T(0) = %.2f, determinăm C \n\n', T0);

    fprintf('Pasul 6: Rezultatul final:\n');
    fprintf('T(t) = (0.35 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4)\n\n');

    % LaTeX merged code
    fprintf('Cod LaTeX final:\n');
    fprintf('Raspunsul in timp: T(t) = (0.35 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4)\n');
end
