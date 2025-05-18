% Definirea matricei A
A = [
    3 1 0 -2 -9;
    0 -5 4 8 10;
    6 6 1 -5 7;
    11 -2 6 9 4;
    -8 0 0 0 1
];

% Extrage linia a 3-a
linie3 = A(3, :);
disp('Linia a 3-a: ');
disp(linie3);

% Extrage ultima coloana
ultima_coloana = A(:, end);
disp('Ultima coloana: ');
disp(ultima_coloana);

% Extrage ultima linie
ultima_linie = A(end, :);
disp('Ultima linie: ');
disp(ultima_linie);

% Extrage submatricea determinata de liniile 2-4 si coloanele 1-3
submatrice = A(2:4, 1:3);
disp('Submatricea (liniile 2-4, coloanele 1-3): ');
disp(submatrice);