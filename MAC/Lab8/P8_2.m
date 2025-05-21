% Datele de timp și viteză
t = [0 1 2 3 4 5 6];
v = [15 30 75 60 60 40 55];

% Interval de timp pentru grafic
t_dense = linspace(min(t), max(t), 500);

% Punctele unde estimăm viteza
t_estim = [0.5, 3.2, 5.7];

% Estimări punctuale (pentru tabel)
v_lin_est       = interp1(t, v, t_estim, 'linear');
v_lagrange_est  = P8_1_F(t, v, t_estim);
v_hermite_est   = interp1(t, v, t_estim, 'pchip');
v_spline_est    = interp1(t, v, t_estim, 'spline');
p2              = polyfit(t, v, 2);
v_parabolic_est = polyval(p2, t_estim);
p5              = polyfit(t, v, 5);
v_leastsq_est   = polyval(p5, t_estim);

% Curbe pentru grafic
v_lin_curve       = interp1(t, v, t_dense, 'linear');
v_lagrange_curve  = P8_1_F(t, v, t_dense);
v_hermite_curve   = interp1(t, v, t_dense, 'pchip');
v_spline_curve    = interp1(t, v, t_dense, 'spline');
v_parabolic_curve = polyval(p2, t_dense);
v_leastsq_curve   = polyval(p5, t_dense);

% Afișare rezultate
fprintf('Estimări ale vitezei în momentele [0.5, 3.2, 5.7] sec:\n');
fprintf('------------------------------------------------------\n');
fprintf('Metoda\t\t\tv(0.5)\tv(3.2)\tv(5.7)\n');
fprintf('------------------------------------------------------\n');
fprintf('Liniară\t\t\t%.2f\t%.2f\t%.2f\n', v_lin_est);
fprintf('Lagrange\t\t%.2f\t%.2f\t%.2f\n', v_lagrange_est);
fprintf('Hermite (pchip)\t\t%.2f\t%.2f\t%.2f\n', v_hermite_est);
fprintf('Spline cubic\t\t%.2f\t%.2f\t%.2f\n', v_spline_est);
fprintf('Regresie grad 2\t\t%.2f\t%.2f\t%.2f\n', v_parabolic_est);
fprintf('Polinom grad 5\t\t%.2f\t%.2f\t%.2f\n', v_leastsq_est);

% Grafic comparativ
figure;
hold on; grid on; box on;

% Punctele originale
plot(t, v, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Puncte tabel');

% Curbele interpolate/approximative
plot(t_dense, v_lin_curve, 'b-', 'DisplayName', 'a) Liniară');
plot(t_dense, v_lagrange_curve, 'm--', 'DisplayName', 'b) Lagrange');
plot(t_dense, v_hermite_curve, 'g-', 'DisplayName', 'c) Hermite (pchip)');
plot(t_dense, v_spline_curve, 'r-', 'DisplayName', 'd) Spline cubic');
plot(t_dense, v_parabolic_curve, 'c--', 'DisplayName', 'e) Regresie grad 2');
plot(t_dense, v_leastsq_curve, 'k-.', 'DisplayName', 'f) Polinom grad 5');

xlabel('Timp [sec]');
ylabel('Viteză [m/s]');
title('Interpolări și aproximări ale vitezei');
legend('Location', 'south');