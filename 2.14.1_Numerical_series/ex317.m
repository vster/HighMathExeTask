% Investigate the convergence of the series
% 1/2+3/4+5/6+...+(2*n-1)/(2*n)+...

syms n;
u(n)=(2*n-1)/(2*n);

L=limit(u(n),n,inf)
% 1
S=symsum(u(n),n,1,inf)
% Inf
% series is diverges