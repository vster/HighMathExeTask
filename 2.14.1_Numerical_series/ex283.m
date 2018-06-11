% Investigate the convergence of the series
% sum (n=1:inf) (1/2^n)*(1+1/n)^(n^2)

clear
syms n;
u(n)=(1/2^n)*(1+1/n)^(n^2)
% apply the Cauchy criterion
C=limit(u(n)^(1/n),n,inf)
% 2^(1/log(2) - 1)
vpa(C)
% 1.359 > 1 => u(n) is diverges