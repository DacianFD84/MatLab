% Inițializarea matricei
A = zeros(2, 2);

% Citire valori pentru matricea A
disp('Introduceți valorile pentru matricea A (2x2):');
for i = 1:2
    for j = 1:2
        A(i, j) = input(sprintf('A[%d][%d]: ', i, j));
    end
end

% Afișarea matricei A în format LaTeX
disp('Matricea A în format LaTeX:');
fprintf('A = \\begin{bmatrix} %.2f & %.2f \\\\ %.2f & %.2f \\end{bmatrix}\n', A(1, 1), A(1, 2), A(2, 1), A(2, 2));

% Calcularea determinantului
determinant = A(1, 1) * A(2, 2) - A(1, 2) * A(2, 1);

% Afișarea formulei de calcul pentru determinant
disp('Determinantul se calculează folosind formula:');
fprintf('D = a_{11} \\cdot a_{22} - a_{12} \\cdot a_{21}\n');

% Afișarea calculelor
fprintf('D = %.2f \\cdot %.2f - %.2f \\cdot %.2f = %.2f\n', A(1, 1), A(2, 2), A(1, 2), A(2, 1), determinant);

% Afișarea determinantului
disp('Determinantul este:');
fprintf('D = %.2f\n', determinant);

% Afișarea formulei complete în LaTeX
disp('Toate formulele într-un singur bloc LaTeX:');
fprintf('\\[\n');
fprintf('\\text{Matricea A în format LaTeX: } A = \\begin{bmatrix} %.2f & %.2f \\\\ %.2f & %.2f \\end{bmatrix} \\\\\n', A(1, 1), A(1, 2), A(2, 1), A(2, 2));
fprintf('\\text{Determinantul se calculează folosind formula: } D = a_{11} \\cdot a_{22} - a_{12} \\cdot a_{21} \\\\\n');
fprintf('D = %.2f \\cdot %.2f - %.2f \\cdot %.2f = %.2f \\\\\n', A(1, 1), A(2, 2), A(1, 2), A(2, 1), determinant);
fprintf('\\text{Determinantul este: } D = %.2f\n', determinant);
fprintf('\\]\n');
