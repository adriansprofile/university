% Definirea vectorilor v și w
v = [2 -1 3];
w = [0 3 -2];

% Normele euclidiene
norm_v = norm(v);
norm_w = norm(w);

% Produsul scalar
dot_product = dot(v, w);

% Cosinusul unghiului dintre v și w
cos_theta = dot_product / (norm_v * norm_w);

% Unghiul în radiani și grade
theta_rad = acos(cos_theta);         % în radiani
theta_deg = rad2deg(theta_rad);      % în grade

% Produsul vectorial
cross_product = cross(v, w);

% Afișare rezultate
fprintf('Norma lui v: %.4f\n', norm_v);
fprintf('Norma lui w: %.4f\n', norm_w);
fprintf('Produsul scalar: %.4f\n', dot_product);
fprintf('Cosinusul unghiului: %.4f\n', cos_theta);
fprintf('Unghiul dintre vectori (grade): %.4f\n', theta_deg);
fprintf('Produsul vectorial v × w: [%.4f %.4f %.4f]\n', cross_product);