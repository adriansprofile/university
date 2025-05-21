% b) e^(-x^2) = ln(1 - x + x^2/3), x0 = -3, precizie 1e-6
fprintf("b) Soluția ecuației e^(-x^2) = ln(1 - x + x^2/3):\n");
f = @(x) exp(-x.^2) - log(1 - x + x.^2/3);
tol = 1e-6;
max_iter = 100;
x = -3;
iter = 0;
while abs(f(x)) > tol && iter < max_iter
    h = 1e-6;
    df = (f(x + h) - f(x - h)) / (2 * h); % derivata numerică
    x = x - f(x)/df;
    iter = iter + 1;
end
fprintf("   Soluția este x = %.6f, obținută în %d iterații\n\n", x, iter);