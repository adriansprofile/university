% Definirea matricei A
A = [
    3 1 0 -2 -9;
    0 -5 4 8 10;
    6 6 1 -5 7;
    11 -2 6 9 4;
    -8 0 0 0 1
];

% Factorizarea QR
[Q, R] = qr(A);

% Verificarea ortogonalității lui Q (Q^T * Q = I)
ortho_check = norm(Q' * Q - eye(size(Q, 1)));

% Afișarea rezultatelor pentru QR
disp('Matricea Q (ortogonală): ');
disp(Q);
disp('Matricea R (triunghiulară superioară): ');
disp(R);

disp(['Verificarea ortogonalității lui Q: ', num2str(ortho_check)]);

% Factorizarea LU
[L, U, P] = lu(A);

% Afișarea rezultatelor pentru LU
disp('Matricea P (permutare): ');
disp(P);
disp('Matricea L (triunghiulară inferioară): ');
disp(L);
disp('Matricea U (triunghiulară superioară): ');
disp(U);