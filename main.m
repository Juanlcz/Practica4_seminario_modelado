clear; clc;
% Simulación Disco Rodante con Resorte
% theta = 0 rad, theta_punto = 2 rad/s
clear; clc;

T = [0 10]; % Tiempo 

% Condiciones iniciales
theta0 = 0;      % Posición inicial dada 
theta_dot0 = 2;  % Velocidad inicial dada 
x0 = [theta0; theta_dot0]; % [pos. angular (theta); vel. angular (theta_punto)]

% Llamar al ODE
[t, x] = ode45(@Disco, T, x0);

% Graficar solo Theta y Theta_punto por separado
figure(1)
subplot(2,1,1)   % Arriba
plot(t, x(:,1))
ylabel('Ángulo \theta (rad)')
title('Posición Angular (\theta)')
grid on

subplot(2,1,2)   % Abajo
plot(t, x(:,2))
ylabel('Vel. Angular (rad/s)')
xlabel('Tiempo (s)')
title('Velocidad Angular (\theta-punto) ')
grid on

% Graficar todos los estados juntos
figure(2) % Crea una ventana 
plot(t, x) % 'x' grafica las 2 columnas de un solo golpe
grid on;
title('Todos los Estados Juntos');
xlabel('Tiempo (s)');
legend('\theta', '\theta-punto');