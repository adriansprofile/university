function P2_3_F(mat)
    % Verifică dacă matricea are cel puțin 4 linii și 4 coloane
    [rows, cols] = size(mat);
    if rows < 4 || cols < 4
        error('Matricea trebuie să aibă cel puțin 4 linii și 4 coloane.');
    end

    % 1. Linia a 3-a
    disp('Linia a 3-a: ');
    disp(mat(3, :));

    % 2. Ultima coloană
    disp('Ultima coloană: ');
    disp(mat(:, end));

    % 3. Ultima linie
    disp('Ultima linie: ');
    disp(mat(end, :));

    % 4. Submatricea determinată de liniile 2-4 și coloanele 1-3
    disp('Submatricea (liniile 2-4, coloanele 1-3): ');
    disp(mat(2:4, 1:3));
end