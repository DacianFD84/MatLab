% Introducerea elementelor matricei 2x2
disp('Introduceți valorile pentru matricea 2x2:');
matrix = zeros(2, 2); % Inițializarea matricei

for i = 1:2
    for j = 1:2
        matrix(i, j) = input(sprintf('Element [%d][%d]: ', i, j));
    end
end

% Calculul determinantului
determinant = matrix(1, 1) * matrix(2, 2) - matrix(1, 2) * matrix(2, 1);

% Determinarea rangului
if determinant ~= 0
    rank = 2; % Rangul este 2 dacă determinantul este diferit de zero
else
    % Verificăm dacă oricare linie este non-zero pentru a stabili rangul 1
    if any(matrix(:) ~= 0)
        rank = 1; % Rangul este 1 dacă există cel puțin un element non-zero
    else
        rank = 0; % Rangul este 0 dacă toate elementele sunt zero
    end
end

% Afisarea matricei in format LaTeX
fprintf('Matricea A în format LaTeX:\nA = \\begin{bmatrix} %g & %g \\\\ %g & %g \\end{bmatrix}\n', matrix(1,1), matrix(1,2), matrix(2,1), matrix(2,2));

% Calculul determinantului în format LaTeX
fprintf('\nCalculul determinantului se face folosind:\nD = a_{11} \\cdot a_{22} - a_{12} \\cdot a_{21}\n');
fprintf('D = %g \\cdot %g - %g \\cdot %g = %g\n', matrix(1,1), matrix(2,2), matrix(1,2), matrix(2,1), determinant);

% Afisarea rangului in format LaTeX
if rank == 2
    fprintf('\nRangul matricei este: \\text{2 (deoarece determinantul este diferit de zero)}\n');
elseif rank == 1
    fprintf('\nRangul matricei este: \\text{1 (deoarece există cel puțin un element non-zero)}\n');
else
    fprintf('\nRangul matricei este: \\text{0 (deoarece toate elementele sunt zero)}\n');
end

% Toate formulele într-un singur bloc LaTeX
fprintf('\nToate formulele într-un singur bloc LaTeX:\n');
fprintf('\\[\n');
fprintf('\\text{Matricea A în format LaTeX: } A = \\begin{bmatrix} %g & %g \\\\ %g & %g \\end{bmatrix} \\\\\n', matrix(1,1), matrix(1,2), matrix(2,1), matrix(2,2));
fprintf('\\text{Determinantul se calculează folosind formula: } D = a_{11} \\cdot a_{22} - a_{12} \\cdot a_{21} \\\\\n');
fprintf('D = %g \\cdot %g - %g \\cdot %g = %g \\\\\n', matrix(1,1), matrix(2,2), matrix(1,2), matrix(2,1), determinant);
fprintf('\\text{Rangul matricei este: } %d\n', rank);
fprintf('\\]\n');
