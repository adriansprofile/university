% Vectorul v
v = [2 3 1 9 2 -1 -3 5];

produs = 1;
i = 1;

while i <= length(v) && v(i) >= 0
    produs = produs * v(i);
    i = i + 1;
end

disp('Ultimul produs calculat pentru v: ');
disp(produs);