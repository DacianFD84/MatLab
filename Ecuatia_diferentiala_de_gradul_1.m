% EcDifGr1.m
k = input('Introduceti valoarea lui k: ');
C = input('Introduceti valoarea initiala y(0): ');
x_val = input('Introduceti valoarea lui x: ');

y = k * x_val + C;
fprintf('Valoarea lui y pentru x = %.2f este: y = %.2f\n', x_val, y);

fplot(@(x) k*x + C, [0, 10]);
xlabel('x');
ylabel('y');
title('Graficul soluției y = kx + C');
grid on;