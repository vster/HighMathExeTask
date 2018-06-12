% Investigate the convergence of the series
% with the second sign of comparison
% 1/(2*1-1)+sqrt(2)/(2*2-1)+...+sqrt(n)/(2n-1)+...

syms n;
digits(5)
u(n)=sqrt(n)/(2*n-1)
S=symsum(u(n),n,1,inf)

v(n)=1/(sqrt(n))
S1=symsum(v(n),n,1,inf)
% v(n) is diverges
L=limit(u(n)/v(n),n,inf)
% 1/2 >0 => u(n) is diverges