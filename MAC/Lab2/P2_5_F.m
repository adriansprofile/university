function P2_5_F(A)
    % Verificare dacă matricea este pătratică
    [m, n] = size(A);
    if m ~= n
        error('Matricea trebuie să fie pătratică!');
    end

    % Transpusa matricei
    T = A';

    % Rangul matricei
    r = rank(A);

    % Determinantul matricei
    d = det(A);

    % Afișarea rezultatelor
    disp('Transpusa matricei este:');
    disp(T);

    fprintf('Rangul matricei este: %d\n', r);
    fprintf('Determinantul matricei este: %.4f\n', d);
end