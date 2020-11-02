% Damped Oscillators
% 
clear vars, close all
%% Define Constants
k = 400; % N/m
m=1; % kg
b = [200 20 1]; % kg/s
C1 = 0.5;
C2 = 1;

%% Compute Function Constituents
r1 = (-b(1)+sqrt(b(1)^2-4*m*k))/2/m;
r2 = (-b(1)-sqrt(b(1)^2-4*m*k))/2/m;
omega = sqrt(4*m*k-b(3)^2)/2/m;

%% Define Homogenous Solutions for Damped Oscillators
xover = @(t,r1,r2) C1*exp(r1*t)+C2*exp(r2*t);
xcrit = @(t,m,b) (C1+C2*t).*exp((-b(2)/2/m)*t);
xunder = @(t,omega,m,b) exp(-(b(3)/2/m)*t).*(C1*cos(omega*t)+C2*sin(omega*t));

%% Get Vectors
t = linspace(0,5,500);
xo = xover(t,r1,r2);
xc = xcrit(t,m,b);
xu = xunder(t,omega,m,b);

%% Plot Cases
figure(1), plot(t,xo,'b'),xlabel('Time (s)'),ylabel('Position (m)'),
title('Over Damped Oscillator'),

figure(2), plot(t,xc,'k'),xlabel('Time (s)'),ylabel('Position (m)'),
title('Critically Damped Oscillator'),

figure(3), plot(t,xu,'r'),xlabel('Time (s)'),ylabel('Position (m)'),
title('Under Damped Oscillator'),
