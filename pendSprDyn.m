function xDot = pendSprDyn(t,x,params)
%% Extract Parameters
s0 = params.s0;
k = params.k;
g = params.g;
m = params.m;
%% Calculate Derivative of State Dynamics
xDot = zeros(length(x),1);
s=norm(x(1:3));
delta_s = s-s0;
W=[0;0;m*g];
F=[-k*delta_s*(x(1)/s); -k*delta_s*(x(2)/s); -k*delta_s*(x(3)/s)];
xDot(1:3) = x(4:6);
xDot(4:6) = (F+W)/m;
end
