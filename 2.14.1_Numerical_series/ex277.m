% Investigate the convergence of the series
% 0.6+0.51+0.501+...+(05+0.1^n)+...

syms n;
u(n)=05+0.1^n
lm=limit(u(n),n,inf)
% 5
S=symsum(u(n),1,inf)
% Inf