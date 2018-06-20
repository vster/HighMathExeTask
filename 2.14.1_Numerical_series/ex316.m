% Investigate the convergence of the series
% 10/7+100/9+1000/11+...+10^n/(2n+5)+...

syms n;
u(n)=10^n/(2*n+5);

L=limit(u(n),n,inf)
% Inf
S=symsum(u(n),n,1,inf)
% NaN
% series is diverges
