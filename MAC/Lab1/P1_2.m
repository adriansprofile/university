% Definirea matricei Z
Z = [2 - 3i -i; 5 + 7i 5];

% Transpunerea standard (cu conjugare complexă)
Z_transposed_conjugated = Z';

% Transpunerea fără conjugare (doar schimbarea rândurilor și coloanelor)
Z_transposed_no_conjugation = Z.';

% Afișarea rezultatelor
disp('Transpunerea standard (cu conjugare): ');
disp(Z_transposed_conjugated);

disp('Transpunerea fără conjugare (doar rânduri și coloane): ');
disp(Z_transposed_no_conjugation);
