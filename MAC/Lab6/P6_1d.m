% d) (x - 3)^2 + 5 - cos(|x|) = 0, interval ales [0, 4]
fprintf("d) Soluția ecuației (x - 3)^2 + 5 - cos(|x|) = 0, într-un interval ales:\n");
f = @(x) (x - 3).^2 + 5 - cos(abs(x));
try
    sol_d = fzero(f, [0, 4]);
    fprintf("   Soluția este x = %.6f\n\n", sol_d);
catch
    fprintf("   Nu s-a găsit soluție în intervalul ales.\n\n");
end