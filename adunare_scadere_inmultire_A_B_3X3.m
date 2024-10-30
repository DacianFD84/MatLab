function operatii_matrici_A_B_3X3()
    % Introducerea elementelor matricei A
    disp('Introduceti elementele matricei A:');
    A = zeros(3, 3);
    for i = 1:3
        for j = 1:3
            A(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
        end
    end

    % Introducerea elementelor matricei B
    disp('Introduceti elementele matricei B:');
    B = zeros(3, 3);
    for i = 1:3
        for j = 1:3
            B(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
        end
    end

    % Calculul matricelor C (A + B), D (A - B) si E (A * B)
    C = A + B; % Adunare
    D = A - B; % Scadere
    E = A * B; % Inmultire

    % Afisarea rezultatelor
    disp('Matricea A:');
    disp(A);
    disp('Matricea B:');
    disp(B);
    disp('Matricea C (A + B):');
    disp(C);
    disp('Matricea D (A - B):');
    disp(D);
    disp('Matricea E (A * B):');
    disp(E);
    
    % Prezentarea in format LaTeX
    fprintf('\nMatricea A:\nA = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', A.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('Matricea B:\nB = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', B.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('Formula de calcul:\nC = A + B = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', C.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('D = A - B = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', D.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('E = A \\times B = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', E.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('\\text{Formulele finale: }\nA = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', A.');
    fprintf('\\end{bmatrix}, B = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', B.');
    fprintf('\\end{bmatrix}, C = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', C.');
    fprintf('\\end{bmatrix}, D = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', D.');
    fprintf('\\end{bmatrix}, E = \\begin{bmatrix}\n');
    fprintf('%d & %d & %d \\\\\n', E.');
    fprintf('\\end{bmatrix}\n');
end
