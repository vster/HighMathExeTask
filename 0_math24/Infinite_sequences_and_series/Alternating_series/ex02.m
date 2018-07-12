% Investigate the convergence series
% S=sum(n=1:inf)(-1)^n*(2*n+1)/(3*n+2)

syms n;
a(n)=(-1)^n*(2*n+1)/(3*n+2)

L=limit(abs(a(n)),n,inf)
% 2/3 /= 0 => series diverges