function temperatura_in_timp()
    % Introducerea valorilor input de către utilizator
    Tm = input('Introduceți valoarea temperaturii medii Tm (Grade Celsius): ');
    Ti_0 = input('Introduceți valoarea temperaturii inițiale Ti(0) (Grade Celsius): ');

    % Pasul 1: Reorganizarea ecuației
    fprintf('\nPasul 1: Reorganizarea ecuației.\n');
    fprintf('Ecuatia initiala: 2 (dTi/dt) + Ti = Tm \n');
    fprintf('Reorganizata: dTi/dt = (Tm - Ti) / 2 \n\n');

    % Pasul 2: Soluția ecuației diferențiale
    fprintf('Pasul 2: Solutia ecuației diferențiale.\n');
    fprintf('Aceasta este o ecuație diferențială de ordinul întâi, care poate fi rezolvată prin metoda variabilelor separate.\n');
    fprintf('Reorganizăm: dTi/dt = (Tm) / 2 - (Ti) / 2 \n\n');

    % Pasul 3: Integrarea ecuației
    fprintf('Pasul 3: Integrarea ecuației.\n');
    fprintf('Integram ambele părți:\n');
    fprintf('int(dTi / (Tm / 2 - Ti / 2)) = int(dt) \n\n');

    % Pasul 4: Factorul de integrare
    fprintf('Pasul 4: Factorul de integrare.\n');
    fprintf('Aplicăm formula soluției pentru ecuația liniară de tipul Ti'' + pTi = q.\n');
    fprintf('Factorul de integrare este: mu(t) = exp(-int(1/2 dt)) = exp(-t/2) \n\n');

    % Soluția generală
    fprintf('Solutia generală:\n');
    fprintf('Ti(t) = mu(t) * int(mu(t) * q dt) + C * mu(t) \n\n');

    % Pasul 5: Aplicarea condiției inițiale
    fprintf('Pasul 5: Aplicarea condiției inițiale.\n');
    fprintf('Folosind Ti(0) = %.2f, determinăm C.\n', Ti_0);

    % Calculul constantei C și soluția finală
    C = Ti_0;  % C este determinat de condiția inițială
    fprintf('Pasul 6: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: Ti(t) = (Tm / 2) * (1 - exp(-t/2)) + C * exp(-t/2)\n');
    fprintf('Unde C = %.2f\n', C);

    % Afisarea în format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('2 (dTi/dt) + Ti = Tm \n');
    fprintf('Reorganizata: dTi/dt = (Tm - Ti) / 2 \n\n');

    fprintf('Pasul 2: Soluția ecuației:\n');
    fprintf('dTi/dt = (Tm) / 2 - (Ti) / 2 \n\n');

    fprintf('Pasul 3: Integrarea:\n');
    fprintf('int(dTi / (Tm / 2 - Ti / 2)) = int(dt) \n\n');

    fprintf('Pasul 4: Factorul de integrare:\n');
    fprintf('mu(t) = exp(-int(1/2 dt)) = exp(-t/2) \n\n');

    fprintf('Pasul 5: Aplicarea condiției inițiale:\n');
    fprintf('Folosind Ti(0) = %.2f, determinăm C\n\n', Ti_0);

    fprintf('Pasul 6: Rezultatul final:\n');
    fprintf('Ti(t) = (Tm / 2) * (1 - exp(-t/2)) + C * exp(-t/2) \n\n');

    % Cod LaTeX final
    fprintf('Cod LaTeX final:\n');
    fprintf('Raspunsul in timp: Ti(t) = (Tm / 2) * (1 - exp(-t/2)) + C * exp(-t/2)\n');
end
