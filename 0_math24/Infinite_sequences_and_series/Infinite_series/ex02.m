% Investigate the convergence of the series
% sum(n=1:inf)exp(n)/n^2

syms n;
u(n)=exp(n)/n^2

L=limit(u(n),n,inf)
% Inf => series diverges