% Determine whether the series converges or diverges
% u(n)=1/(n*(n+1))

syms n;
u(n)=1/(n*(n+1))

S=symsum(u(n),n,1,inf)
% 1
