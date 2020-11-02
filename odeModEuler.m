function x = odeModEuler(rhs,time,x0)
% MATLAB function that takes in a first order ODE representing the change
% of state of a dynamical system, a vector of discrete time, and an initial 
% state x0 as a column vector. The function then returns the state at every
% time step using a modified euler numerical integration method
%
% Function can except a state vector of any length, provided the passed 
% change of state equation can operate on all the state variables
%
%% Initialize State
x = zeros(length(x0),length(time));
x(:,1) = x0;
%% Propagate State Using Modified Euler Method
for i=1:length(time)-1
    h = time(i+1)-time(i);
    K1 = rhs(time(i),x(:,i));
    K2 = rhs(time(i+1),x(:,i)+K1*h);
    x(:,i+1) = x(:,i) + h*(K1+K2)/2;
end
    
