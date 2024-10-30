function metoda_lui_cramer_3X3_B()
    % Introducerea coeficientilor matricei 3x3
    A = zeros(3, 3);  % Matricea coeficientilor
    B = zeros(3, 1);  % Termenii liberi

    % Cererea de coeficienti pentru matricea A
    fprintf('Introduceti coeficientii matricei 3x3:\n');
    for i = 1:3
        for j = 1:3
            A(i, j) = input(sprintf('Coeficient [rând %d, coloană %d]: ', i, j));
        end
    end

    % Cererea de termeni liberi
    fprintf('Introduceti termenii liberi:\n');
    for i = 1:3
        B(i) = input(sprintf('Termen liber [rând %d]: ', i));
    end

    % Afisarea matricei A in format LaTeX
    fprintf('\\text{Matricea A în format LaTeX: } A = \\begin{bmatrix}\n');
    for i = 1:3
        fprintf('%.0f & ', A(i, 1:3));
        fprintf('\\end{bmatrix} \\text{ pentru rândul %d}\n', i);
    end

    % Calcularea determinantului D
    D = determinant(A);
    fprintf('\\text{Determinantul D este: } D = %.0f \n', D);

    % Afișarea formulei pentru determinant
    fprintf('\\text{Calculul determinantului D:}\n');
    fprintf('\\text{D} = a_{11}(a_{22}a_{33} - a_{23}a_{32}) - a_{12}(a_{21}a_{33} - a_{23}a_{31}) + a_{13}(a_{21}a_{32} - a_{22}a_{31})\n');
    fprintf('\\text{unde: }\n');
    fprintf('a_{11} = %.0f, a_{12} = %.0f, a_{13} = %.0f\n', A(1,1), A(1,2), A(1,3));
    fprintf('a_{21} = %.0f, a_{22} = %.0f, a_{23} = %.0f\n', A(2,1), A(2,2), A(2,3));
    fprintf('a_{31} = %.0f, a_{32} = %.0f, a_{33} = %.0f\n', A(3,1), A(3,2), A(3,3));
    fprintf('\\text{Calculul efectiv: } D = %.0f\n', D);

    % Calcularea determinantilor D1, D2, D3
    D1 = determinant(substituteColumn(A, B, 1));
    D2 = determinant(substituteColumn(A, B, 2));
    D3 = determinant(substituteColumn(A, B, 3));

    fprintf('\\text{Determinantul D1 este: } D1 = %.0f \n', D1);
    fprintf('\\text{Determinantul D2 este: } D2 = %.0f \n', D2);
    fprintf('\\text{Determinantul D3 este: } D3 = %.0f \n', D3);

    % Afișarea formulelor pentru determinanții D1, D2, D3
    fprintf('\\text{Calculul determinantului D1 (substituind coloana 1):}\n');
    displaySubstitutedDeterminant(A, B, 1);
    fprintf('\\text{Calculul determinantului D2 (substituind coloana 2):}\n');
    displaySubstitutedDeterminant(A, B, 2);
    fprintf('\\text{Calculul determinantului D3 (substituind coloana 3):}\n');
    displaySubstitutedDeterminant(A, B, 3);

    % Verificarea determinantului D pentru soluții unice
    if D ~= 0
        % Calcularea solutiilor
        x1 = D1 / D;
        x2 = D2 / D;
        x3 = D3 / D;

        fprintf('\\text{Soluțiile sistemului sunt:}\n');
        fprintf('x_1 = %.2f\n', x1);
        fprintf('x_2 = %.2f\n', x2);
        fprintf('x_3 = %.2f\n', x3);
        
        % Afișarea calculului soluțiilor
        fprintf('\\text{Calculul soluțiilor:}\n');
        fprintf('x_1 = \\frac{D_1}{D} = \\frac{%.0f}{%.0f} = %.2f\n', D1, D, x1);
        fprintf('x_2 = \\frac{D_2}{D} = \\frac{%.0f}{%.0f} = %.2f\n', D2, D, x2);
        fprintf('x_3 = \\frac{D_3}{D} = \\frac{%.0f}{%.0f} = %.2f\n', D3, D, x3);
    else
        fprintf('Determinantul este 0. Sistemul nu are soluții unice.\n');
    end

    % Afișarea sistemului de ecuații
    fprintf('Sistemul de ecuații este:\n');
    fprintf('1. %.0fx_1 + %.0fx_2 + %.0fx_3 = %.0f\n', A(1,1), A(1,2), A(1,3), B(1));
    fprintf('2. %.0fx_1 + %.0fx_2 + %.0fx_3 = %.0f\n', A(2,1), A(2,2), A(2,3), B(2));
    fprintf('3. %.0fx_1 + %.0fx_2 + %.0fx_3 = %.0f\n', A(3,1), A(3,2), A(3,3), B(3));

    % Afisarea formulelor finale in format LaTeX
    fprintf('\\text{Formulele finale: }\n');
    fprintf('\\text{Matricea A: } A = \\begin{bmatrix} %.0f & %.0f & %.0f \\\\ %.0f & %.0f & %.0f \\\\ %.0f & %.0f & %.0f \\end{bmatrix}\n', ...
            A(1,1), A(1,2), A(1,3), ...
            A(2,1), A(2,2), A(2,3), ...
            A(3,1), A(3,2), A(3,3));
    fprintf('\\text{Termenii liberi B: } B = \\begin{bmatrix} %.0f \\\\ %.0f \\\\ %.0f \\end{bmatrix}\n', ...
            B(1), B(2), B(3));
    fprintf('\\text{Determinantul D: } D = %.0f, D1 = %.0f, D2 = %.0f, D3 = %.0f\n', D, D1, D2, D3);
    fprintf('\\text{Soluțiile: } x_1 = %.2f, x_2 = %.2f, x_3 = %.2f\n', x1, x2, x3);
end

function D = determinant(A)
    D = A(1,1) * (A(2,2) * A(3,3) - A(2,3) * A(3,2)) - ...
        A(1,2) * (A(2,1) * A(3,3) - A(2,3) * A(3,1)) + ...
        A(1,3) * (A(2,1) * A(3,2) - A(2,2) * A(3,1));
end

function newMatrix = substituteColumn(A, B, col)
    newMatrix = A;  % Matricea nouă va fi copia matricei originale A
    newMatrix(:, col) = B;  % Se înlocuiește coloana specificată cu vectorul B
end

function displaySubstitutedDeterminant(A, B, column)
    newMatrix = substituteColumn(A, B, column);
    fprintf('\\text{Matricea cu coloana %d substituită este: } \\begin{bmatrix}\n', column);
    for i = 1:3
        fprintf('%.0f & ', newMatrix(i, 1:3));
        fprintf('\\end{bmatrix}\n');
    end
    D_substituted = determinant(newMatrix);
    fprintf('\\text{Calculul efectiv: } D = %.0f\n', D_substituted);
end
