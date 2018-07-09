% Determine whether the series converges or diverges
% sum(n=1:inf)3^(1/n)

syms n;
u(n)=3^(1/n)

L=limit(u(n),n,inf)
% 1 > 0 => series converges