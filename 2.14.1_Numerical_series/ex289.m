% Investigate the convergence of the series
% 1/2-2/(2^2+1)+3/(3^2+1)+...+(-1)^n*(n/(n^2+1))+...

clear
syms n;
digits(5)
u(n)=(-1)^(n+1)*(n/(n^2+1))
% Use the Leibniz test
L=limit(abs(u(n)),n,inf)
% 0
% L=0 => series is converge