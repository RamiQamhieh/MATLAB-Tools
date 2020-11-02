function fx = NewtonPInterp(xk,yk,x)
%% Construct matrix M
n=length(xk);
y=zeros(1,length(x));
M = zeros(n);
M(:,1)=yk;
z=xk;
for i=2:n
   num = diff(M(1:n-i+2,i-1));
   z(1)=[];
   den = z - xk(1:length(z));
   M(1:n-i+1,i) = num./den';
end
a = M(1,:);
p=ones(n,1);
for i=1:length(x)
    for j=2:n
        p(j) = x(i)-xk(j-1);
    end
    p=cumprod(p);
    y(i)=a*p;
end
fx=y;
end
