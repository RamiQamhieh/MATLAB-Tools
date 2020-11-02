function [a E] = LSQPoly(x,y,n)
if n<=0
    error("n must be greater than zero")
end
for i = 1:n
    if i == 1
        XMAT(:,i) = ones(length(x),1);
    end
    XMAT(:,i+1) = (x.^(i))';

end
a = XMAT\y';
fx = polyval(flipud(a),x);
E = sum((fx-y).^2);
end
