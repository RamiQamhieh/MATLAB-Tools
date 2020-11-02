function intfx = intSimpson38(x, fx, N)
k1 = 2:3:N-1;
k2 = 4:3:N-2;
xx = linspace(x(1), x(end), N+1);
h = xx(2)-xx(1);
intfx = 3/8*h*(fx(xx(1)) + 3*sum(fx(xx(k1))+fx(xx(k1+1))) + 2*sum(fx(xx(k2))) + fx(xx(end)));
