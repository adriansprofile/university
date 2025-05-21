% Definirea funcției
f = @(x) exp(cos(x)) - (sin(x) + 1);

% Reprezentare grafică pentru a identifica soluții
fplot(f, [-10, 10]);
grid on;
xlabel('x'); ylabel('f(x)');
title('Graficul funcției f(x) = e^{cos(x)} - (sin(x)+1)');
line([-10 10], [0 0], 'Color', 'k', 'LineStyle', '--');

% Căutarea numerică a două soluții cu |x1| ≠ |x2|
x1 = fzero(f, 0);     % soluție în jurul lui 0
x2 = fzero(f, 3);     % soluție în dreapta
x3 = fzero(f, -3);    % soluție în stânga (altă valoare absolută)

fprintf('Soluția 1: x = %.6f, |x| = %.6f\n', x1, abs(x1));
fprintf('Soluția 2: x = %.6f, |x| = %.6f\n', x3, abs(x3));