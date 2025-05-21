% a) x^2 - 3 = sin(x) + sqrt(|x|), x0 = 1
fprintf("a) Soluția ecuației x^2 - 3 = sin(x) + sqrt(|x|):\n");
f = @(x) x^2 - 3 - sin(x) - sqrt(abs(x));
x0 = 1;
sol_a = fzero(f, x0);
fprintf("   Soluția este x = %.6f\n\n", sol_a);