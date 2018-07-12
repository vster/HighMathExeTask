% Investigate the convergence series
% S=sum(n=1:inf)3^n/n^2

syms n;
a(n)=3^n/n^2

D=limit(a(n+1)/a(n),n,inf)
% 3 > 1 => series diverges