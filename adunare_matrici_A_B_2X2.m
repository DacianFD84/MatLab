% Inițializare matrici de ordin 2
A = zeros(2, 2);
B = zeros(2, 2);

% Input pentru matricea A
disp('Introduceti elementele matricei A:');
for i = 1:2
    for j = 1:2
        A(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
    end
end

% Input pentru matricea B
disp('Introduceti elementele matricei B:');
for i = 1:2
    for j = 1:2
        B(i, j) = input(['Coeficient [rând ' num2str(i) ', coloană ' num2str(j) ']: ']);
    end
end

% Calculul sumei
C = A + B;

% Afișarea rezultatelor
disp('Matricea A:');
disp(A);
disp('Matricea B:');
disp(B);
disp('Matricea C (A + B):');
disp(C);

% Generarea outputului în format LaTeX
fprintf('\nMatricea A:\n');
fprintf('A = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', A(i, 1), A(i, 2));
end
fprintf('\\end{bmatrix}\n');

fprintf('\nMatricea B:\n');
fprintf('B = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', B(i, 1), B(i, 2));
end
fprintf('\\end{bmatrix}\n');

fprintf('\nFormula de calcul:\n');
fprintf('C = A + B = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', C(i, 1), C(i, 2));
end
fprintf('\\end{bmatrix}\n');

% Merged block for LaTeX output
fprintf('\n\\text{Formulele finale: }\n');
fprintf('A = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', A(i, 1), A(i, 2));
end
fprintf('\\end{bmatrix}, B = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', B(i, 1), B(i, 2));
end
fprintf('\\end{bmatrix}, C = \\begin{bmatrix}\n');
for i = 1:2
    fprintf('%g & %g \\\\\n', C(i, 1), C(i, 2));
end
fprintf('\\end{bmatrix}\n');
