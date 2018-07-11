% Investigate the series S=sum(n=1:inf)n/(n^2+1) on convergence.

syms n;
u(n)=n/(n^2+1)

syms x;
S=int(u(x),x,1,inf)
% Inf => S diverges