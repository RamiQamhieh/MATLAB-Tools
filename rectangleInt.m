function intfx = rectangleInt(x, fx, N)
% Function that Numerically Integrates function fx over the interval x using using
% N number of points
%% Create Vector xx of N+1 Points From Interval x
xx = linspace(x(1),x(end),N+1);
intfx = 0;
for i=1:N
    h = xx(i+1)-xx(i);
    intfx = intfx + h*fx( .5*(xx(i)+xx(i+1)) );
end
