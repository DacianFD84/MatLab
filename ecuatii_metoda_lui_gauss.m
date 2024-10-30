function metoda_lui_gauss_3X3_B()
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

    % Afișarea matricei A în format LaTeX
    fprintf('\\text{Matricea A în format LaTeX: } A = \\begin{bmatrix}\n');
    for i = 1:3
        fprintf('%.0f & ', A(i, 1:3));
        fprintf('\\end{bmatrix} \\text{ pentru rândul %d}\n', i);
    end

    % Formarea matricei extinse
    augmentedMatrix = [A B]; % Matrice extinsă

    % Aplicarea metodei lui Gauss pentru eliminare
    n = size(A, 1); % Numărul de rânduri
    for k = 1:n-1
        % Mărește coeficientul principal la 1 (dacă nu este deja)
        if augmentedMatrix(k,k) == 0
            error('Elementul principal este zero. Alegeți o altă matrice.');
        end

        for i = k+1:n
            % Calcularea factorului de eliminare
            factor = augmentedMatrix(i,k) / augmentedMatrix(k,k);
            % Scăderea rândului k din rândul i
            augmentedMatrix(i,:) = augmentedMatrix(i,:) - factor * augmentedMatrix(k,:);
        end
    end

    % Afișarea matricei transformate
    disp('Matricea extinsă după eliminarea Gauss:');
    disp(augmentedMatrix);

    % Substituția înapoi pentru a găsi soluțiile
    x = zeros(n, 1); % Inițializare vector soluții
    for i = n:-1:1
        x(i) = (augmentedMatrix(i,end) - augmentedMatrix(i,1:n) * x) / augmentedMatrix(i,i);
    end

    % Afișarea soluțiilor
    disp('Soluțiile sistemului sunt:');
    disp(x);

    % Afișarea formulelor finale
    fprintf('\\text{Soluțiile sistemului sunt:}\n');
    for i = 1:n
        fprintf('x_%d = %.2f\n', i, x(i));
    end

    % Afișarea sistemului de ecuații
    fprintf('Sistemul de ecuații este:\n');
    for i = 1:n
        fprintf('%.0fx_1 + %.0fx_2 + %.0fx_3 = %.0f\n', A(i,1), A(i,2), A(i,3), B(i));
    end

    % Afișarea formulelor finale în format LaTeX
    fprintf('\\text{Formulele finale: }\n');
    fprintf('\\text{Matricea A: } A = \\begin{bmatrix} %.0f & %.0f & %.0f \\\\ %.0f & %.0f & %.0f \\\\ %.0f & %.0f & %.0f \\end{bmatrix}\n', ...
            A(1,1), A(1,2), A(1,3), ...
            A(2,1), A(2,2), A(2,3), ...
            A(3,1), A(3,2), A(3,3));
    fprintf('\\text{Termenii liberi B: } B = \\begin{bmatrix} %.0f \\\\ %.0f \\\\ %.0f \\end{bmatrix}\n', ...
            B(1), B(2), B(3));
end
