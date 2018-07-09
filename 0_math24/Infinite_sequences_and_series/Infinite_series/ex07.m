% Investigate the convergence of the series
% sum(n=0:inf)log((n+2)/(n+1))

syms n;
u(n)=log((n+2)/(n+1))

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% Inf
