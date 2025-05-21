% Definirea matricei A
A = [
    3 1 0 -2 -9;
    0 -5 4 8 10;
    6 6 1 -5 7;
    11 -2 6 9 4;
    -8 0 0 0 1
];

% Transpusa matricei
A_transpusa = A.';
disp('Transpusa matricei A: ');
disp(A_transpusa);

% Rangul matricei
rang_A = rank(A);
disp(['Rangul matricei A: ', num2str(rang_A)]);

% Determinantul matricei
det_A = det(A);
disp(['Determinantul matricei A: ', num2str(det_A)]);

% Verificare inversabilitate
if det_A ~= 0
    disp('Matricea A este inversabila.');
    A_inversa = inv(A);
    disp('Inversa matricei A: ');
    disp(A_inversa);
else
    disp('Matricea A NU este inversabila (determinantul este zero).');
end