function xDot = rocketDyn(t,x,params,rhoFun)
%% Extract Parameters
mu = params.mu;
Re = params.Re;
uE = params.uE;
T = params.thrust;
Cd = params.Cd;
A = params.A;
%% Calculate Unknown Forces on the Rocket
D = 0.5*rhoFun(x(2))*x(3)^2*Cd*A;
g_e = (mu*1000^3)/(Re*1000+x(2))^2;
%% Calculate State Derivatives
xDot = zeros(length(x),1);
xDot(1) = x(3)*cos(x(4));
xDot(2) = x(3)*sin(x(4));
xDot(3) = (T-D)/x(5)-g_e*sin(x(4));
xDot(4) = -g_e*cos(x(4))/x(3)+x(3)*cos(x(4))/(Re*1000+x(2));
xDot(5) = -T/uE;
end
