function raspuns_timp()
    % Introducerea inputului utilizatorului
    u = input('Introduceti valoarea constantei de intrare u: ');

    % Pasul 1: Reorganizarea ecuației
    fprintf('\nPasul 1: Reorganizarea ecuatiei.\n');
    fprintf('Ecuatia initiala: 2 dy/dt + y = 2u \n');
    fprintf('Reorganizata: dy/dt = (2u - y)/2 \n\n');

    % Pasul 2: Soluția ecuației diferențiale
    fprintf('Pasul 2: Solutia ecuației diferențiale.\n');
    fprintf('Aceasta este o ecuație diferențială de ordinul întâi, care poate fi rezolvată prin metoda variabilelor separate.\n');
    fprintf('Reorganizăm: dy/dt = u - (y/2) \n\n');

    % Pasul 3: Integrarea ecuației
    fprintf('Pasul 3: Integrarea ecuației.\n');
    fprintf('Integram ambele părți:\n');
    fprintf('int(dy/(u - y/2)) = int(dt) \n\n');

    % Pasul 4: Factorul de integrare
    fprintf('Pasul 4: Factorul de integrare.\n');
    fprintf('Aplicăm formula soluției pentru ecuația liniară de tipul y'' + py = q.\n');
    fprintf('Factorul de integrare este: mu(t) = exp(-int(1/2 dt)) = exp(-t/2) \n\n');

    % Rezolvarea ecuației
    fprintf('Solutia generală:\n');
    fprintf('y(t) = mu(t) * int(mu(t) * q dt) + C * mu(t) \n\n');

    % Pasul 5: Aplicarea condiției inițiale
    fprintf('Pasul 5: Aplicarea condiției inițiale.\n');
    fprintf('Folosind y(0) = 0, determinăm C.\n');
    
    % Pasul 6: Rezultatul final
    fprintf('Pasul 6: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: y(t) = u * (1 - exp(-t/2)) \n');

    % Afisarea in format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('2 dy/dt + y = 2u \n');
    fprintf('Reorganizata: dy/dt = (2u - y)/2 \n\n');

    fprintf('Pasul 2: Soluția ecuației:\n');
    fprintf('dy/dt = u - (y/2) \n\n');

    fprintf('Pasul 3: Integrarea:\n');
    fprintf('int(dy/(u - y/2)) = int(dt) \n\n');

    fprintf('Pasul 4: Factorul de integrare:\n');
    fprintf('mu(t) = exp(-int(1/2 dt)) = exp(-t/2) \n\n');

    fprintf('Pasul 5: Aplicarea condiției inițiale:\n');
    fprintf('Folosind y(0) = 0, determinăm C \n\n');

    fprintf('Pasul 6: Rezultatul final:\n');
    fprintf('y(t) = u * (1 - exp(-t/2)) \n\n');

    % LaTeX merged code
    fprintf('Cod LaTeX final:\n');
    fprintf('Raspunsul in timp: y(t) = u * (1 - exp(-t/2))\n');
end
