function fx = LagrangeTerm(xk,yk,x)
 for i = 1:length(xk)
       k = setdiff(1:length(xk) ,i);
       num(i) = prod(x - xk(k));
       den(i) = prod(xk(i) - xk(k));
       L(i) = num(i)/den(i);
 end
 fx = sum(yk.*L);
