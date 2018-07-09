% Investigate the convergence of the series
% u(x,n)=x^(3*(n-1))/10^(n-1)

syms x n;
u(x,n)=x^(3*(n-1))/10^(n-1)

q=x^3/10
% Series is geometric progression
% if |q|<1 series convergs
% if |q|>=1 series diverges
% |x^3/10|<1 => -10^(1/3)<x<10^(1/3)

a(n)=1/10^n
p=3

R=limit(abs(a(n)/a(n+1)),n,inf)^(1/p)
% 10^(1/3)


