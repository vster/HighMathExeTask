% Determine whether the series converges or diverges
% u(n)=(3*n-1)/(2*n^3-4*n+5)

syms n;
u(n)=(3*n-1)/(2*n^3-4*n+5)

v(n)=1/n^2

L=limit(u(n)/v(n),n,inf)
% 3/2 < inf
% v(n) converges => u(n) converges