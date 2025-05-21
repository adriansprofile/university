function solutii_complexe = P5_3_F(coeficienti)
    % Verificare validitate input
    if ~isvector(coeficienti)
        error('Intrarea trebuie să fie un vector.');
    end

    % Calculează toate rădăcinile (soluții ale ecuației)
    radacini = roots(coeficienti);
    
    % Selectează doar soluțiile de modul strict mai mare decât 1
    solutii_complexe = radacini(abs(radacini) > 1);
end