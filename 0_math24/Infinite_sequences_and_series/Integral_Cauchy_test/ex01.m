% Determine whether the series converges or diverges
% S=sum(n=1:inf)1/(1+10*n)

syms n;
u(n)=1/(1+10*n)

syms x;
I=int(u(x),x,1,inf)
% I=Inf => S diverges