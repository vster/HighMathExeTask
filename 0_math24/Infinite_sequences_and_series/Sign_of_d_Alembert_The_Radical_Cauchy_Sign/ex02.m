% Investigate the convergence series
% S=sum(n=1:inf)n^3/log(3)^n

syms n;
a(n)=n^3/log(sym(3))^n
digits(4)

D=limit(a(n+1)/a(n),n,inf)
% 1/log(3)
vpa(D)
% 0.9102 < 1 => series converges