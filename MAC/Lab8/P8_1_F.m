function vy = P8_1_F(xi, yi, vx)
    % Verificare dimensiuni
    if length(xi) ~= length(yi)
        error('Vectorii xi și yi trebuie să aibă aceeași lungime.');
    end

    n = length(xi);        % numărul de puncte de interpolare
    m = length(vx);        % numărul de puncte în care se evaluează
    vy = zeros(size(vx));  % inițializare vector rezultat

    % Pentru fiecare punct vx(k) calculăm valoarea aproximată
    for k = 1:m
        x = vx(k);
        s = 0; % suma pentru L(x)
        for i = 1:n
            % Calculul bazei Lagrange L_i(x)
            L = 1;
            for j = 1:n
                if j ~= i
                    L = L * (x - xi(j)) / (xi(i) - xi(j));
                end
            end
            % Adăugare la suma totală
            s = s + yi(i) * L;
        end
        vy(k) = s;
    end
end