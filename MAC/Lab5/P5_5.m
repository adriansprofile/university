A = [1 -1; 3 2];

% 1. Calculăm valorile proprii și vectorii proprii
[vec_proprii, val_proprii] = eig(A);

% Extragem valorile proprii într-un vector
valori = diag(val_proprii);

fprintf('Valorile proprii ale matricei A sunt: \n');
disp(valori);

% 2. Pentru fiecare valoare proprie, afișăm vectorii proprii asociați
for i = 1:length(valori)
    fprintf('\nPentru valoarea proprie λ = %.4f: \n', valori(i));
    
    v = vec_proprii(:,i); % vector propriu asociat
    fprintf('Un vector propriu: \n');
    disp(v);

    % Generăm 3 vectori proprii (combinații liniare ale vectorului)
    fprintf('Alți vectori proprii (combinații liniare): \n');
    disp(2*v);
    disp(-v);
    disp(0.5*v);
    
    % Soluția spațiului nul pentru (A - λI)*x = 0 determină câți vectori liniar independenți sunt
    null_spatiu = null(A - valori(i)*eye(size(A)));
    fprintf('Dimensiunea spațiului propriu (vectori liniar independenți): %d \n', size(null_spatiu,2));
end