function ecuatii_metoda_lui_gauss()
    % Citirea coeficientilor
    A = zeros(3, 3); % Matricea coeficientilor
    b = zeros(3, 1); % Termenii liberi

    for i = 1:3
        for j = 1:3
            A(i, j) = input(['Coeficient [rând ', num2str(i), ', coloană ', num2str(j), ']: ']);
        end
        b(i) = input(['Termen liber [rând ', num2str(i), ']: ']);
    end

    % Afișarea matricei A
    disp('Matricea A:');
    disp(A);
    
    % Matricea extinsă inițială
    augmentedMatrix = [A, b];
    disp('Matricea extinsă inițială:');
    disp(augmentedMatrix);
    
    % Pasul 1: Normalizarea rândului 1
    augmentedMatrix(1, :) = augmentedMatrix(1, :) / augmentedMatrix(1, 1);
    disp('Matricea extinsă după normalizarea rândului 1:');
    disp(augmentedMatrix);
    
    % Pasul 2: Eliminarea coeficientului din rândurile 2 și 3
    for i = 2:3
        factor = augmentedMatrix(i, 1); % Coeficientul de eliminat
        augmentedMatrix(i, :) = augmentedMatrix(i, :) - factor * augmentedMatrix(1, :);
        fprintf('Rând %d: R_{%d} = R_{%d} - %.2f * R_{1}\n', i, i, 1, factor);
    end
    disp('Matricea extinsă după eliminările din rândurile 2 și 3:');
    disp(augmentedMatrix);
    
    % Pasul 3: Normalizarea rândului 2
    augmentedMatrix(2, :) = augmentedMatrix(2, :) / augmentedMatrix(2, 2);
    disp('Matricea extinsă după normalizarea rândului 2:');
    disp(augmentedMatrix);

    % Eliminarea coeficientului din rândul 3
    factor = augmentedMatrix(3, 2); % Coeficientul de eliminat
    augmentedMatrix(3, :) = augmentedMatrix(3, :) - factor * augmentedMatrix(2, :);
    fprintf('Rând 3: R_{3} = R_{3} - %.2f * R_{2}\n', factor);
    
    disp('Matricea extinsă finală:');
    disp(augmentedMatrix);

    % Extragem soluțiile
    x3 = augmentedMatrix(3, end) / augmentedMatrix(3, 3);
    x2 = augmentedMatrix(2, end) - augmentedMatrix(2, 3) * x3;
    x1 = augmentedMatrix(1, end) - augmentedMatrix(1, 2) * x2 - augmentedMatrix(1, 3) * x3;

    % Afișăm soluțiile
    fprintf('Soluțiile sistemului sunt:\n');
    fprintf('x_1 = %.2f\n', x1);
    fprintf('x_2 = %.2f\n', x2);
    fprintf('x_3 = %.2f\n', x3);

    % Afișăm sistemul de ecuații
    fprintf('Sistemul de ecuații este:\n');
    for i = 1:3
        eq = sprintf('%.0fx_1 + %.0fx_2 + %.0fx_3 = %.0f\n', A(i, 1), A(i, 2), A(i, 3), b(i));
        fprintf(eq);
    end

    % Afișăm formulările finale
    fprintf('Formulările finale:\n');
    fprintf('Matricea A:\n');
    disp(augmentedMatrix(:, 1:end-1));
    fprintf('Termenii liberi B:\n');
    disp(augmentedMatrix(:, end));
end
