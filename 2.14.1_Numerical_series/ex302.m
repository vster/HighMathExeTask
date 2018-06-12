% Investigate the convergence of the series
% with the first sign of comparison
% sum(n=1:inf)2^n/(5^n+1)

syms n;
u(n)=2^n/(5^n+1)
S=symsum(u(n),n,1,inf)

u1(n)=2^n/5^n
S1=symsum(v(n),n,1,inf)
% 2/3
% u(n)<v(n) and v(n) is converge => u(n) is converge
