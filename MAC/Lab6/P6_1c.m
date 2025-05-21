% c) 2^(-sin(x)) + 4 - x * ln(x) = 0, x ∈ [3.1, 5]
fprintf("c) Soluția ecuației 2^(-sin(x)) + 4 - x * ln(x) = 0, în [3.1, 5]:\n");
f = @(x) 2.^(-sin(x)) + 4 - x .* log(x);
if f(3.1)*f(5) < 0
    sol_c = fzero(f, [3.1, 5]);
    fprintf("   Soluția este x = %.6f\n\n", sol_c);
else
    fprintf("   Nu există o soluție în intervalul dat.\n\n");
end