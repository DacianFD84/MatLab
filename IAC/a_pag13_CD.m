function raspuns_timp()
    % Introducerea inputului utilizatorului
    u = input('Introduceti valoarea constantei de intrare u: ');

    % Pasul 1: Reorganizarea ecuatiei
    fprintf('\nPasul 1: Reorganizarea ecuatiei.\n');
    fprintf('Ecuatia initiala: 4 \\frac{dy}{dt} = u \n');
    fprintf('Reorganizata: \\frac{dy}{dt} = \\frac{u}{4} \n\n');

    % Pasul 2: Integrarea ecuatiei
    fprintf('Pasul 2: Integrarea ecuatiei.\n');
    fprintf('Integram \\frac{dy}{dt} = \\frac{u}{4}\n');
    fprintf('\\int dy = \\int \\frac{u}{4} dt \n');
    fprintf('y(t) = \\frac{u}{4} t + C \n\n');

    % Pasul 3: Aplicarea conditiei initiale
    fprintf('Pasul 3: Aplicarea conditiei initiale.\n');
    fprintf('y(0) = 0 => C = 0\n');
    fprintf('Deci, y(t) = \\frac{u}{4} t\n\n');

    % Pasul 4: Rezultatul final
    fprintf('Pasul 4: Rezultatul final.\n');
    fprintf('Raspunsul in timp este: y(t) = \\frac{u}{4} t\n');

    % Afisarea in format LaTeX
    fprintf('\nCod LaTeX:\n');
    fprintf('Pasul 1: Ecuatia initiala:\n');
    fprintf('4 \\frac{dy}{dt} = u \n');
    fprintf('Reorganizata: \\frac{dy}{dt} = \\frac{u}{4} \n\n');

    fprintf('Pasul 2: Integrarea:\n');
    fprintf('\\int dy = \\int \\frac{u}{4} dt \n');
    fprintf('y(t) = \\frac{u}{4} t + C \n\n');

    fprintf('Pasul 3: Aplicarea conditiei initiale:\n');
    fprintf('y(0) = 0 => C = 0 \n');
    fprintf('y(t) = \\frac{u}{4} t \n\n');

    fprintf('Pasul 4: Rezultatul final:\n');
    fprintf('y(t) = \\frac{u}{4} t \n\n');

    % LaTeX merged code
    fprintf('Cod LaTeX final:\n');
    fprintf('\\text{Raspunsul in timp: } y(t) = \\frac{u}{4} t\n');
end
