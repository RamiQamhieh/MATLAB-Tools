function fx = LagrangePInterp(xk,yk,x)
fx = zeros(1,length(x));
for i = 1:length(x)
    fx(i) = LagrangeTerm(xk,yk,x(i));
end
