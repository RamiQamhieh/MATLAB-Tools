function [a0, a1, E] = LSQLinear(x, y)
a = [ones(length(x),1) x']\y';
a0 = a(1);
a1 = a(2);
fx = a0 + a1*x;
E = sum((fx - y).^2);
end
