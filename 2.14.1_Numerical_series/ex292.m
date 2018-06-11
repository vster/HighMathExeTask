% Investigate the convergence of the series
% 1-1/2-1/2^2+1/2^3-1/2^4-1/2^5+...

clear
syms n;
% series from positive values
u(n)=1/2^(n-1)
S=symsum(u(n),n,1,inf)
% 2 => the series converges