function [sigma_min, sigma_max, cond_nr] = P5_6_F(A)
    % Verifică dacă matricea este pătratică
    [m, n] = size(A);
    if m ~= n
        error('Matricea trebuie să fie pătratică.');
    end

    % Calculează valorile singulare
    S = svd(A); % returnează valorile în ordine descrescătoare

    % Extrage valoarea maximă și minimă
    sigma_max = S(1);
    sigma_min = S(end);

    % Numărul de condiționare în raport cu inversarea
    cond_nr = sigma_max / sigma_min;

    % Afișare opțională
    fprintf('Valoare singulară maximă: %.6f\n', sigma_max);
    fprintf('Valoare singulară minimă: %.6f\n', sigma_min);
    fprintf('Număr de condiționare (inversare): %.6f\n', cond_nr);
end