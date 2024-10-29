% Introducerea valorilor pentru matricea 2x2
matrix = zeros(2,2);
disp('Introduceți valorile pentru matricea 2x2:');
for i = 1:2
    for j = 1:2
        matrix(i,j) = input(['Element [' num2str(i) '][' num2str(j) ']: ']);
    end
end

% Calculul determinantului
determinant = matrix(1,1) * matrix(2,2) - matrix(1,2) * matrix(2,1);

% Afișarea matricei în format LaTeX
fprintf('\nMatricea A în format LaTeX:\n');
fprintf('A = \\begin{bmatrix} %g & %g \\\\ %g & %g \\end{bmatrix}\n', matrix(1,1), matrix(1,2), matrix(2,1), matrix(2,2));

% Verificarea inversabilității
if determinant == 0
    disp('Matricea nu este inversabilă (determinantul este 0).');
else
    % Calculul inversului matricei
    inverse = (1/determinant) * [matrix(2,2) -matrix(1,2); -matrix(2,1) matrix(1,1)];

    % Afișarea rezultatului
    disp('\nMatricea inversă este:');
    fprintf('%g %g \n', inverse(1,1), inverse(1,2));
    fprintf('%g %g \n', inverse(2,1), inverse(2,2));

    % Calcularea produsului dintre matricea inițială și inversa
    product = matrix * inverse;

    % Afișarea produsului
    disp('\nProdusul dintre matricea originală și matricea inversă este:');
    fprintf('%g %g \n', product(1,1), product(1,2));
    fprintf('%g %g \n', product(2,1), product(2,2));
    
    % Afișarea calculului determinantului
    fprintf('\nCalculul determinantului se face folosind:\n');
    fprintf('D = A(1,1) * A(2,2) - A(1,2) * A(2,1)\n');
    fprintf('D = %g * %g - %g * %g = %g\n', matrix(1,1), matrix(2,2), matrix(1,2), matrix(2,1), determinant);

    % Afișarea calculului inversului
    fprintf('\nMatricea inversă se calculează folosind:\n');
    fprintf('A^{-1} = \\frac{1}{D} \\begin{bmatrix} A(2,2) & -A(1,2) \\\\ -A(2,1) & A(1,1) \\end{bmatrix}\n');
    fprintf('A^{-1} = \\frac{1}{%g} \\begin{bmatrix} %g & %g \\\\ %g & %g \\end{bmatrix}\n', determinant, matrix(2,2), -matrix(1,2), -matrix(2,1), matrix(1,1));
    
    % Verificarea inversabilității
    disp('Verificarea inversabilității: Matricea este inversabilă deoarece determinantul este diferit de zero.');
end
