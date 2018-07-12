% Investigate the convergence series
% S=sum(n=1:inf)(-1)^(n+1)*2^n/(2*n+1)!

syms n;
a(n)=(-1)^(n+1)*2^n/factorial(2*n+1)

D=limit(abs(a(n+1)/a(n)),n,inf)
% 0 => series converges absolutely