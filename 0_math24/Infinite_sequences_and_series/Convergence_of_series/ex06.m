% Investigate the series 
% sum(n=1:inf)n/(n^2-2*n-3)
% on convergence

syms n;
u(n)=n/(n^2-2*n-3)

v(n)=1/n
L=limit(u(n)/v(n),n,inf)
% 1
% v(n) diverges => u(n) diverges