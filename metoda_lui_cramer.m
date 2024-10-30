function solve_system_3x3()
    % Introducerea coeficientilor matricei 3x3
    A = zeros(3, 3); % Matricea coeficientilor
    B = zeros(3, 1); % Termenii liberi

    disp('Introduceti coeficientii matricei 3x3:');
    for i = 1:3
        for j = 1:3
            A(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
        end
    end

    % Introducerea termenilor liberi
    disp('Introduceti termenii liberi:');
    for i = 1:3
        B(i) = input(['Termen liber [rând ' num2str(i) ']: ']);
    end

    % Calculul determinantului
    D = determinant(A);
    disp(['Determinantul matricei A este: D = ' num2str(D)]);

    % Matricea D1 pentru x1
    D1 = A;
    D1(:, 1) = B; % Înlocuim prima coloană cu termenii liberi
    D1_value = determinant(D1);
    disp(['Determinantul D1 (cu prima coloană înlocuită) este: D1 = ' num2str(D1_value)]);

    % Matricea D2 pentru x2
    D2 = A;
    D2(:, 2) = B; % Înlocuim a doua coloană cu termenii liberi
    D2_value = determinant(D2);
    disp(['Determinantul D2 (cu a doua coloană înlocuită) este: D2 = ' num2str(D2_value)]);

    % Matricea D3 pentru x3
    D3 = A;
    D3(:, 3) = B; % Înlocuim a treia coloană cu termenii liberi
    D3_value = determinant(D3);
    disp(['Determinantul D3 (cu a treia coloană înlocuită) este: D3 = ' num2str(D3_value)]);

    % Calcularea soluțiilor
    if D ~= 0
        x1 = D1_value / D;
        x2 = D2_value / D;
        x3 = D3_value / D;

        disp('Soluțiile sistemului sunt:');
        disp(['x1 = ' num2str(x1)]);
        disp(['x2 = ' num2str(x2)]);
        disp(['x3 = ' num2str(x3)]);
    else
        disp('Determinantul este 0. Sistemul nu are soluții unice.');
    end

    % Afișarea formulelor LaTeX
    latexOutput = sprintf(['\\text{Matricea A în format LaTeX: } A = \\begin{bmatrix} %s \\\\ %s \\\\ %s \\end{bmatrix} \n' ...
        '\\text{Determinantul se calculează folosind formula:} \n' ...
        'D = a_{11} (a_{22}a_{33} - a_{23}a_{32}) - a_{12} (a_{21}a_{33} - a_{23}a_{31}) + a_{13} (a_{21}a_{32} - a_{22}a_{31}) \n' ...
        'D = %.2f \n' ...
        '\\text{Determinantele D1, D2, D3 se calculează similar:} \n' ...
        'D1 = %.2f, D2 = %.2f, D3 = %.2f \n' ...
        '\\text{Soluțiile sistemului sunt:} \n' ...
        'x1 = %.2f, x2 = %.2f, x3 = %.2f'], ...
        num2str(A(1, :), '%.2f'), ...
        num2str(A(2, :), '%.2f'), ...
        num2str(A(3, :), '%.2f'), ...
        D, D1_value, D2_value, D3_value, x1, x2, x3);

    disp(latexOutput);
end

function d = determinant(matrix)
    % Funcția pentru calcularea determinantului unei matrice 3x3
    d = matrix(1,1) * (matrix(2,2) * matrix(3,3) - matrix(2,3) * matrix(3,2)) - ...
        matrix(1,2) * (matrix(2,1) * matrix(3,3) - matrix(2,3) * matrix(3,1)) + ...
        matrix(1,3) * (matrix(2,1) * matrix(3,2) - matrix(2,2) * matrix(3,1));
end
