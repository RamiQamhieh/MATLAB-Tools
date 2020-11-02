function intfx = intTrapezoid(x, fx, N)
intfx = 0;
xx = linspace(x(1), x(end), N+1);
for i=1:N
    h = xx(i+1)-xx(i);
    intfx = intfx + h*fx( xx(i) ) + .5*h*(fx(xx(i+1))-fx(xx(i)));
end
