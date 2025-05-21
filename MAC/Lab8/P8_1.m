xi = [1 2 3];
yi = [2 3 5];         % f(xi) = yi
vx = linspace(1, 3, 100);
vy = P8_1_F(xi, yi, vx);

% Grafic
plot(xi, yi, 'ro', 'MarkerFaceColor', 'r'); hold on;
plot(vx, vy, 'b-', 'LineWidth', 2);
xlabel('x'); ylabel('f(x)');
title('Interpolare Lagrange');
grid on;