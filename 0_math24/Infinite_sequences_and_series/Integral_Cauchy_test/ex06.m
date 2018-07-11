% Определить, сходится или расходится ряд S=sum(n=0:inf)n*exp(-n)

syms n;
u(n)=n*exp(-n)

syms x;
I=int(u(x),x,0,inf)
% 1 => S converges