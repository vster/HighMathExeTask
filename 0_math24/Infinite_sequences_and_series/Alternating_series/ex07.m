% Determine whether the series 
% S=sum(n=1:inf)(-1)^n/sqrt(n*(n+1))
% is absolutely convergent, conditionally convergent or divergent?

syms n;
a(n)=(-1)^n/sqrt(n*(n+1))

% First we apply the Leibniz test:
L=limit(abs(a(n)),n,inf)
% 0 => series converges

% We use the limiting sign of comparison and compare the 
% corresponding series of modules

a1(n)=1/sqrt(n*(n+1))
v(n)=1/n

L2=limit(a1(n)/v(n),n,inf)
% 1 => the original alternating series is conditionally convergent