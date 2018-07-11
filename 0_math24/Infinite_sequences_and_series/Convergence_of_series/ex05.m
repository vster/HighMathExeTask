% Investigate the series 
% sum(n=1:inf)n^(1/2)/(2*n^2+n+5) 
% on convergence

syms n;
u(n)= n^(1/2)/(2*n^2+n+5) 

v(n)=1/n^(3/2)

L=limit(u(n)/v(n),n,inf)
% 1/2
% v(n) converges => u(n) converges
