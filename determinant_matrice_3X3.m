% Definirea matricei A 3x3
A = zeros(3, 3);  % Inițializarea matricei

% Citirea valorilor pentru matricea A
disp('Introduceți valorile pentru matricea A (3x3):');
for i = 1:3
    for j = 1:3
        A(i, j) = input(sprintf('A[%d][%d]: ', i, j));
    end
end

% Calculul determinantului pentru matricea 3x3
determinant = ...
      A(1,1) * (A(2,2) * A(3,3) - A(2,3) * A(3,2)) ...
    - A(1,2) * (A(2,1) * A(3,3) - A(2,3) * A(3,1)) ...
    + A(1,3) * (A(2,1) * A(3,2) - A(2,2) * A(3,1));

% Afișarea expresiei utilizate pentru a calcula determinantul
fprintf('Calculul determinantului se face folosind:\n');
fprintf('D = A(1,1) * (A(2,2) * A(3,3) - A(2,3) * A(3,2))\n');
fprintf('  - A(1,2) * (A(2,1) * A(3,3) - A(2,3) * A(3,1))\n');
fprintf('  + A(1,3) * (A(2,1) * A(3,2) - A(2,2) * A(3,1))\n');

% Afișarea matricei A în format LaTeX
fprintf('\nMatricea A în format LaTeX:\n');
fprintf('A = \\begin{bmatrix} %d & %d & %d \\\\\n', A(1,1), A(1,2), A(1,3));
fprintf('      %d & %d & %d \\\\\n', A(2,1), A(2,2), A(2,3));
fprintf('      %d & %d & %d \\end{bmatrix}\n', A(3,1), A(3,2), A(3,3));

% Afișarea formulei de calcul pentru determinant
disp('Determinantul se calculează folosind formula:');
fprintf('D = a_{11} \\cdot (a_{22} \\cdot a_{33} - a_{23} \\cdot a_{32}) - a_{12} \\cdot (a_{21} \\cdot a_{33} - a_{23} \\cdot a_{31}) + a_{13} \\cdot (a_{21} \\cdot a_{32} - a_{22} \\cdot a_{31})\n');
fprintf('D = %d \\cdot (%d \\cdot %d - %d \\cdot %d) - %d \\cdot (%d \\cdot %d - %d \\cdot %d) + %d \\cdot (%d \\cdot %d - %d \\cdot %d) = %d\n', ...
    A(1,1), A(2,2), A(3,3), A(2,3), A(3,2), ...
    A(1,2), A(2,1), A(3,3), A(2,3), A(3,1), ...
    A(1,3), A(2,1), A(3,2), A(2,2), A(3,1), ...
    determinant);

% Afișarea rezultatului final
fprintf('Determinantul este: D = %d\n', determinant);
