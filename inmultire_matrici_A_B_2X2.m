function inmultire_matrici_A_B_2X2()
    % Introducerea elementelor matricei A
    disp('Introduceti elementele matricei A:');
    A = zeros(2, 2);
    for i = 1:2
        for j = 1:2
            A(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
        end
    end

    % Introducerea elementelor matricei B
    disp('Introduceti elementele matricei B:');
    B = zeros(2, 2);
    for i = 1:2
        for j = 1:2
            B(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
        end
    end

    % Calculul matricei C (A * B)
    C = A * B;

    % Afisarea rezultatelor
    disp('Matricea A:');
    disp(A);
    disp('Matricea B:');
    disp(B);
    disp('Matricea C (A * B):');
    disp(C);
    
    % Prezentarea in format LaTeX
    fprintf('\nMatricea A:\nA = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', A.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('Matricea B:\nB = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', B.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('Formula de calcul:\nC = A \\times B = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', C.');
    fprintf('\\end{bmatrix}\n\n');

    fprintf('\\text{Formulele finale: }\nA = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', A.');
    fprintf('\\end{bmatrix}, B = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', B.');
    fprintf('\\end{bmatrix}, C = \\begin{bmatrix}\n');
    fprintf('%d & %d \\\\\n', C.');
    fprintf('\\end{bmatrix}\n');
end
