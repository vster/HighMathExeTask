% Investigate the series S=sum(n=1:inf)atan(n)/(1+n^2) on convergence.

syms n
u(n)=atan(n)/(1+n^2)

syms x;
I=int(u(x),1,inf)
% (3*pi^2)/32 => S converges