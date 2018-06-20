% Investigate the convergence of the series
% 2/1+2^2/(1*2)+2^3/(1*2*3)+...+2^n/n!+...

syms n;
u(n)=2^n/factorial(n);

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% exp(2) - 1
% series is converge