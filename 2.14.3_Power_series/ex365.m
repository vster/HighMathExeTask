% Investigate the convergence of the series
% sum (n=1:inf) x^(n*(n-1)/2)/factorial(n)

syms x n;
u(x,n)=x^(n*(n-1)/2)/factorial(n)

d=abs(u(x,n+1)/u(x,n))
d=simplify(d)
% (abs(x^n)*factorial(n))/factorial(n + 1)
d=x^n/(n+1)

assume(-1<=x<=1)
L=limit(d,n,inf)
% 0

assume(x>1)
L=limit(d,n,inf)
% Inf

assume(x<-1)
L=limit(d,n,inf)
% NaN

% |x|<1 => -1<=x<=1
