% Find the radius and the interval of convergence of the power series
% S=sum(n=0:inf)(-1)^n*(x-2)^n/n^2

% u=x-2
% S=sum(n=0:inf)(-1)^n*u^n/n^2

syms n;
a(n)=(-1)^n/n^2

R=limit(abs(a(n)/a(n+1)),n,inf)
% 1

% u=-1
% S=sum()(-1)^n*(-1)^n/n^2=sum()1/n^2 - series converges

% u=1
% S=sum()(-1)^n/n^2 - series converges
% series converges at -1<=u<=1 => 1<=x<=3