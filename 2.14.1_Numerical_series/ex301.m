% Investigate the convergence of the series
% with the first sign of comparison
% 1/log(2)+1/log(3)+1/log(4)+...+1/log(n+1)+...

clear
syms n;
u(n)=1/log(n+1)
S=symsum(u(n),n,1,inf)
v(n)=1/n
S1=symsum(v(n),n,1,inf)
% Inf
% v(n)<u(n) and v(n) is diverges => u(n) is diverges

