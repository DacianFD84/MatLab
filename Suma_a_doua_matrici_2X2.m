% Suma_a_doua_matrici_2X2.m
% Program pentru calculul sumei a două matrice de ordinul 2 și afișare formatată

% Solicită utilizatorului să introducă elementele primei matrice
disp('Introduceti elementele primei matrice de ordin 2:');
A = zeros(2, 2);
for i = 1:2
    for j = 1:2
        A(i, j) = input(sprintf('Elementul A(%d, %d): ', i, j));
    end
end

% Solicită utilizatorului să introducă elementele celei de-a doua matrice
disp('Introduceti elementele celei de-a doua matrice de ordin 2:');
B = zeros(2, 2);
for i = 1:2
    for j = 1:2
        B(i, j) = input(sprintf('Elementul B(%d, %d): ', i, j));
    end
end

% Calculăm suma celor două matrice
S = A + B;

% Afișăm rezultatul formatat pentru aspect de manual
fprintf('Suma celor doua matrice este:\n');
for i = 1:2
    fprintf('   ');
    for j = 1:2
        fprintf('%6.2f', S(i, j));  % Precizie de 2 zecimale pentru un aspect ordonat
    end
    fprintf('\n');
end
