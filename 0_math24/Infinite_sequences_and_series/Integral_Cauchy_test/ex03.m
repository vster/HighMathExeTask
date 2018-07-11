% Determine whether the series converges or diverges
% u(n)=1/((n+1)*log(n+1))

syms n;
u(n)=1/((n+1)*log(n+1))

syms x;
I=int(u(x),x,1,inf)
% Inf