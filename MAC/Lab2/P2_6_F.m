function [d, A_inv] = P2_6_F(A)
    % Verificare dacă matricea este pătratică
    [m, n] = size(A);
    if m ~= n
        error('Matricea trebuie să fie pătratică!');
    end

    % Calculul determinantului
    d = det(A);

    % Verificare dacă matricea este nesingulară (det ≠ 0)
    if d == 0
        error('Matricea este singulară (determinantul este 0), deci nu are inversă.');
    end

    % Calculul inversei
    A_inv = inv(A);
end