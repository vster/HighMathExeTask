% Investigate the convergence of the series
% sum(n=1:inf)1/((n+pi)*(n+pi+1))

syms n;
u(n)=1/((n+pi)*(n+pi+1))
digits(4)

S=symsum(u(n),n,1,inf)
% 1/(pi + 1)
vpa(S)
% 0.2415

