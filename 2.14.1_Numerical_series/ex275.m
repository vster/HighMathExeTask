% Investigate the convergence of the series
% 1/11+1/12+1/13+...+1/(n+10)+...

syms n;
u(n)=1/(n+10)
S=symsum(u(n),1,inf)
% Inf