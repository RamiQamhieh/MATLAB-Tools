function xDot = projectileDyn(t,x,params,rhoFun)
%% Extract Parameters
mu = params.mu;
Re = params.Re;
B = params.B;
%% Calculate Flight Path Angle, Drag Force per Unit Mass, Altitude, and Gravitational Field Strength
gamma = atan(x(4)/x(3));
D_m = (1/2/B)*rhoFun(x(2))*norm(x(3:4))^2;
g = (mu*1000^3)/(Re*1000+x(2))^2;
%% Calculate Derivative of State Dynamics
xDot = zeros(length(x),1);
xDot(1:2) = x(3:4);
xDot(3:4) = [-D_m*cos(gamma); -D_m*sin(gamma)-g];

end
