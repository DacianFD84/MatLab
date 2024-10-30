function temperatura_in_timp()
    % Introducerea valorilor input de către utilizator
    Qc = input('Introduceți valoarea fluxului Qc (metri cubi pe oră): ');
    T0 = input('Introduceți temperatura inițială T(0) (Grade Celsius): ');

    % Pasul 1: Reorganizarea ecuației
    fprintf('\nPasul 1: Reorganizarea ecuației.\n');
    fprintf('Ecuatia initiala: 4 (dT/dt) + T = 2 * Qc \n');
    fprintf('Reorganizata: dT/dt = (2 * Qc - T) / 4 \n\n');

    % Pasul 2: Soluția ecuației diferențiale
    fprintf('Pasul 2: Solutia ecuației diferențiale.\n');
    fprintf('Aceasta este o ecuație diferențială de ordinul întâi, care poate fi rezolvată prin metoda variabilelor separate.\n');
    fprintf('Reorganizăm: dT/dt = (2 * Qc) / 4 - (T) / 4 \n\n');

    % Pasul 3: Integrarea ecuației
    fprintf('Pasul 3: Integrarea ecuației.\n');
    fprintf('Integram ambele părți:\n');
    fprintf('int(dT / ((2 * Qc) / 4 - T / 4)) = int(dt) \n\n');

    % Pasul 4: Factorul de integrare
    fprintf('Pasul 4: Factorul de integrare.\n');
    fprintf('Aplicăm formula soluției pentru ecuația liniară de tipul T'' + pT = q.\n');
    fprintf('Factorul de integrare este: mu(t) = exp(-int(1/4 dt)) = exp(-t/4) \n\n');

    % Soluția generală
    fprintf('Solutia generală:\n');
    fprintf('T(t) = mu(t) * int(mu(t) * q dt) + C * mu(t) \n\n');

    % Pasul 5: Aplicarea condiției inițiale
    fprintf('Pasul 5: Aplicarea condiției inițiale.\n');
    fprintf('Folosind T(0) = %.2f, determinăm C.\n', T0);

    % Calculul constantei C și soluția finală
    C = T0;  % C este determinat de condiția inițială
    fprintf('Pasul 6: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: T(t) = (2 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4)\n');
    fprintf('Unde C = %.2f\n', C);

    % Afisarea în format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('4 (dT/dt) + T = 2 * Qc \n');
    fprintf('Reorganizata: dT/dt = (2 * Qc - T) / 4 \n\n');

    fprintf('Pasul 2: Soluția ecuației:\n');
    fprintf('dT/dt = (2 * Qc) / 4 - (T) / 4 \n\n');

    fprintf('Pasul 3: Integrarea:\n');
    fprintf('int(dT / ((2 * Qc) / 4 - T / 4)) = int(dt) \n\n');

    fprintf('Pasul 4: Factorul de integrare:\n');
    fprintf('mu(t) = exp(-int(1/4 dt)) = exp(-t/4) \n\n');

    fprintf('Pasul 5: Aplicarea condiției inițiale:\n');
    fprintf('Folosind T(0) = %.2f, determinăm C \n\n', T0);

    fprintf('Pasul 6: Rezultatul final:\n');
    fprintf('T(t) = (2 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4) \n\n');

    % Cod LaTeX final
    fprintf('Cod LaTeX final:\n');
    fprintf('Raspunsul in timp: T(t) = (2 * Qc / 4) * (1 - exp(-t/4)) + C * exp(-t/4)\n');
end
