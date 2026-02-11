function dx = Disco(t, x)
% Parámetros
m = 10;     % Masa (kg)
k = 100;    % resorte (N/m)
r = 0.05;   % Radio (m)

% 2 estados 
dx = zeros(2,1);

% x1punto = x_2 (Velocidad angular)
dx(1) = x(2);

% x2punto 
dx(2) = (-2*k* x(1) ) / (3* m);

end