function [vy_interp, vy_regress] = P8_4_F(xi, yi, vx)
    % Interpolare liniară
    vy_interp = interp1(xi, yi, vx, 'linear');

    % Regresie cubică (polinom de grad 3)
    p = polyfit(xi, yi, 3);         % coeficienții polinomului de grad 3
    vy_regress = polyval(p, vx);   % evaluarea polinomului în punctele vx
end