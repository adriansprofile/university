% Definirea matricei A
A = [
    3 1 0 -2 -9;
    0 -5 4 8 10;
    6 6 1 -5 7;
    11 -2 6 9 4;
    -8 0 0 0 1
];

% Definirea vectorului u (1x5) și w (6x1)
u = [14 9 -7 0 1];
w = [5; 0; -5; 0; 3; 2];

% Concatenarea lui u ca o linie la matricea A
A_concat1 = [A; u];

% Concatenarea lui w ca o coloană la matricea A_concat1
A_final = [A_concat1, w];

% Afișează rezultatul
disp(A_final);