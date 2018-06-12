% Investigate the convergence of the series
% with the second sign of comparison
% (2+1)/(5+1)+(2^2+1)/(5^2+1)+...+(2^n+1)/(5^n+1)+...

syms n;
u(n)=(2^n+1)/(5^n+1)
S=symsum(u(n),n,1,inf)
v(n)=(2/5)^n
S1=symsum(v(n),n,1,inf)
% 2/3 => v(n) is converge
L=limit(u(n)/v(n),n,inf)
% 1 > 0 => u(n) is converge
