% Find the sum of the series
% 1+(m-1)/m+((m-1)/m)^2+...+((m-1)/m)^n+...
clear
syms n m;
assume (m>1);
u(n)=((m-1)/m)^n
S=symsum(u(n),n,1,inf)
% m - m*limit((m - 1)^n/m^n, n == Inf) - 1
% limit((m - 1)^n/m^n, n == Inf) = 0
% m-1  -? correct - m