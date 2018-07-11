% Determine whether the series converges or diverges
% u(n)=1/(n*sqrt(n+1))

syms n;
u(n)=1/(n*sqrt(n+1))

v(n)=1/n^(3/2)
L=limit(u(n)/v(n),n,inf)