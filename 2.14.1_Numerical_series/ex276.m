% Investigate the convergence of the series
% 1/2+2/5+3/8+...+n/(3*n-1)+...

syms n;
u(n)=n/(3*n-1)
S=symsum(u(n),1,inf)
% Inf
lm=limit(u(n),n,inf)
% 1/3 /= 0