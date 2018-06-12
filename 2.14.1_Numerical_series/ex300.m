% Show that the series
% sum (n=1:inf) (2^n+1)^2/4n
% is diverges

syms n;
u(n)=(2^n+1)^2/(4*n)
symsum(u(n),1,inf)
% symsum((2^n + 1)^2/n, n, 1, Inf)/4 - ?

v(n)=(2^n)^2/(4*n)
symsum(v(n),1,inf)
% Inf => 
% v(n) is diverges and u(n)>v(n) => u(n) is diverges