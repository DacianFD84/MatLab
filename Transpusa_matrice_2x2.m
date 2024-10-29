% Cerem utilizatorului să introducă elementele matricei 2x2
A = zeros(2, 2); % Inițializăm matricea 2x2

disp('Introduceti elementele matricei 2x2:');
for i = 1:2
    for j = 1:2
        A(i, j) = input(['Elementul [' num2str(i) ',' num2str(j) ']: ']);
    end
end

% Calculăm transpusa matricei
A_transpusa = A';

% Afișăm matricea originală și transpusa
disp('Matricea originală:');
disp(A);
disp('Transpusa matricei:');
disp(A_transpusa);
