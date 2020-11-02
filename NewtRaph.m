function [x,n] = NewtRaph(f,df,x,tolerance,M)
% Usage: [x,n] = NewtRaph(f,df,x,tolerance,M)
% Takes in a function f and its derivative df and computes a solutions to f
% (i.e. when f(x)=0) using the Newton-Rhapson method. Function tolerance 
% and the max number of iterations M can also be specified. If they aren't,
% the default values will take effect

if nargin < 5
    M = 50;
end
if nargin < 4
    tolerance = 1*10^-6;
end
%% Solve
for i=1:M
    n=i;
    if abs(f(x))<tolerance
        break;
    end
    x=x-(f(x)/df(x));
end
end
