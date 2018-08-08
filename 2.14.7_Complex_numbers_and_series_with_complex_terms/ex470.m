% Investigate the convergence of the series
% w(n)=1/(n*sqrt(n))+i/2^n

syms n;
w(n)=1/(n*sqrt(n))+i/2^n

Lw=limit(w(n),n,inf)
% 0 => w(n) converges

Sw=symsum(w(n),n,1,inf)
% zeta(3/2) + 1i