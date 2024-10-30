function raspuns_timp()
    % Introducerea inputului utilizatorului
    i = input('Introduceti valoarea constantei de intrare i: ');

    % Pasul 1: Reorganizarea ecuatiei
    fprintf('\nPasul 1: Reorganizarea ecuatiei.\n');
    fprintf('Ecuatia initiala: 5 dy/dt + y = i \n');
    fprintf('Reorganizata: dy/dt = (i - y)/5 \n\n');

    % Pasul 2: Solutia ecuației diferențiale
    fprintf('Pasul 2: Solutia ecuației diferențiale.\n');
    fprintf('Aceasta este o ecuație diferențială de ordinul întâi, care poate fi rezolvată prin metoda variabilelor separate.\n');
    fprintf('Reorganizăm: dy/dt = (i)/5 - (y)/5 \n\n');

    % Pasul 3: Integrarea ecuației
    fprintf('Pasul 3: Integrarea ecuației.\n');
    fprintf('Integram ambele părți:\n');
    fprintf('int(dy/(i/5 - y/5)) = int(dt) \n\n');

    % Pasul 4: Factorul de integrare
    fprintf('Pasul 4: Factorul de integrare.\n');
    fprintf('Aplicăm formula soluției pentru ecuația liniară de tipul y'' + py = q.\n');
    fprintf('Factorul de integrare este: mu(t) = exp(-int(1/5 dt)) = exp(-t/5) \n\n');

    % Rezolvarea ecuației
    fprintf('Solutia generală:\n');
    fprintf('y(t) = mu(t) * int(mu(t) * q dt) + C * mu(t) \n\n');

    % Pasul 5: Aplicarea condiției inițiale
    fprintf('Pasul 5: Aplicarea condiției inițiale.\n');
    fprintf('Folosind y(0) = 0, determinăm C.\n');
    
    % Pasul 6: Rezultatul final
    fprintf('Pasul 6: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: y(t) = (i/5) * (1 - exp(-t/5)) \n');

    % Afisarea in format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('5 dy/dt + y = i \n');
    fprintf('Reorganizata: dy/dt = (i - y)/5 \n\n');

    fprintf('Pasul 2: Soluția ecuației:\n');
    fprintf('dy/dt = (i)/5 - (y)/5 \n\n');

    fprintf('Pasul 3: Integrarea:\n');
    fprintf('int(dy/(i/5 - y/5)) = int(dt) \n\n');

    fprintf('Pasul 4: Factorul de integrare:\n');
    fprintf('mu(t) = exp(-int(1/5 dt)) = exp(-t/5) \n\n');

    fprintf('Pasul 5: Aplicarea condiției inițiale:\n');
    fprintf('Folosind y(0) = 0, determinăm C \n\n');

    fprintf('Pasul 6: Rezultatul final:\n');
    fprintf('y(t) = (i/5) * (1 - exp(-t/5)) \n\n');

    % LaTeX merged code
    fprintf('Cod LaTeX final:\n');
    fprintf('Raspunsul in timp: y(t) = (i/5) * (1 - exp(-t/5))\n');
end
