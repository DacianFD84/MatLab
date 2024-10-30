% Initializare matrice 3x3
A = zeros(3, 3);

% Introducerea valorilor pentru matricea 3x3
fprintf('Introduceți valorile pentru matricea 3x3, element cu element:\n');
for i = 1:3
    for j = 1:3
        prompt = sprintf('Introduceți elementul A[%d][%d]: ', i, j);
        A(i, j) = input(prompt);
    end
end

% Verificăm dacă dimensiunile matricei introduse sunt 3x3
if ~isequal(size(A), [3, 3])
    error('Dimensiunile matricei sunt incorecte. Introduceți o matrice 3x3.');
end

% Matricea inițială în format LaTeX
fprintf('\nMatricea A în format LaTeX:\n');
fprintf('A = \\begin{bmatrix} %.2f & %.2f & %.2f \\\\ %.2f & %.2f & %.2f \\\\ %.2f & %.2f & %.2f \\end{bmatrix}\n\n', A');

% Inițializarea pentru forma extinsă (adăugăm o coloană zero pentru RREF)
Augmented = [A, zeros(3, 1)];

% Calcularea rangului și afișarea fiecărui pas
rank = 0;
for col = 1:3
    % Căutăm un pivot nenul în coloana curentă
    pivotRow = rank + 1;
    while pivotRow <= 3 && Augmented(pivotRow, col) == 0
        pivotRow = pivotRow + 1;
    end
    
    % Dacă am găsit un pivot
    if pivotRow <= 3
        if pivotRow ~= rank + 1
            % Schimbăm rândurile dacă pivotul nu e pe poziția așteptată
            Augmented([rank + 1, pivotRow], :) = Augmented([pivotRow, rank + 1], :);
            fprintf('\nAm schimbat rândurile %d și %d pentru a aduce pivotul la poziția corectă:\n', rank + 1, pivotRow);
            disp(Augmented)
        end
        
        % Normalizăm pivotul
        pivot = Augmented(rank + 1, col);
        Augmented(rank + 1, :) = Augmented(rank + 1, :) / pivot;
        fprintf('\nAm normalizat rândul %d astfel încât pivotul să fie egal cu 1:\n', rank + 1);
        disp(Augmented)
        
        % Eliminăm elementele de sub pivot
        for row = (rank + 2):3
            factor = Augmented(row, col);
            Augmented(row, :) = Augmented(row, :) - factor * Augmented(rank + 1, :);
            fprintf('\nAm eliminat elementul de sub pivot din rândul %d:\n', row);
            disp(Augmented)
        end
        
        % Incrementăm rangul
        rank = rank + 1;
    end
end

% Afișarea rangului final
fprintf('\nReducerea la forma RREF și calculul rangului s-au finalizat:\n');
disp(Augmented)
fprintf('\\text{Rangul matricei este: } %d\n', rank);
