% Puncte cunoscute
xi = [0 1 2 3 4];
yi = [1 3 7 13 21];

% Puncte pentru aproximare
vx = 0:0.1:4;

% Apelează funcția
[vy_lin, vy_cubic] = P8_4_F(xi, yi, vx);

% Afișare grafică
figure; hold on; grid on; box on;
plot(xi, yi, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Puncte cunoscute');
plot(vx, vy_lin, 'b-', 'DisplayName', 'Interpolare liniară');
plot(vx, vy_cubic, 'r--', 'DisplayName', 'Regresie cubică');
legend('Location', 'northwest');
xlabel('x'); ylabel('f(x)');
title('Interpolare liniară și regresie cubică');