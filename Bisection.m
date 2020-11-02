function [x, n, ab] = Bisection(f, a, b, tolerance, M)
%Written by Garrett Ailts
% Takes in a function f and the bounds of an interval a b and finds the
% solutions to f (i.e. when f(x)=0) using the Bisection method. Function tolerance delta_f and the max
% number of iterations M can also be specified. If they aren't, the default
% values below will take effect
if nargin < 5
    M = 50;
end
if nargin < 4
    tolerance = 1*10^-6;
end
for i=1:M
    n=i;
    x=(a+b)/2; %find midpoint of interval [a b]
    if abs(f(x))<tolerance
        break;
    elseif f(a)*f(x)<0
        b=x;
    elseif f(b)*f(x)<0
        a=x;
    else
        error("Solution not within interval");
    end
end
ab=[a b];
end
