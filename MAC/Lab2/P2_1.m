n = 4;
M = zeros(n);

for i = 1:n
    for j = 1:n
        M(i,j) = (i * j) / (i + j - 1);
    end
end

disp('Matricea M: ');
disp(M);

A = zeros(4,5);

for i = 1:4
    for j = 1:5
        if i == j
            A(i,j) = 3;
        elseif abs(i - j) == 2
            A(i,j) = -3;
        elseif i + j == 3
            A(i,j) = 1;
        else
            A(i,j) = 0;
        end
    end
end

disp('Matricea A: ');
disp(A);