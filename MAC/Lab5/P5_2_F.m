function solutii_reale = P5_2_F(coeficienti)
    % Verifică dacă intrarea este un vector de coeficienți
    if ~isvector(coeficienti)
        error('Intrarea trebuie să fie un vector.');
    end

    % Calculează toate rădăcinile (complexe și reale)
    radacini = roots(coeficienti);
    
    % Selectează doar soluțiile reale (cu parte imaginară aproape de zero)
    prag = 1e-10; % toleranță numerică
    solutii_reale = radacini(abs(imag(radacini)) < prag);
    
    % Sortează soluțiile reale (opțional)
    solutii_reale = sort(real(solutii_reale));
end