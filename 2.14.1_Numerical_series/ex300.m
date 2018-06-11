% Show that the series
% sum (n=1:inf) (2^n+1)^2/4n
% is diverges

syms n;
u(n)=(2^n+1)^2/(4*n)
symsum(u(n),1,inf)
% symsum((2^n + 1)^2/n, n, 1, Inf)/4 - ?

u1(n)=(2^n)^2/(4*n)
symsum(u1(n),1,inf)
% Inf => 
% u1(n) is diverges and u(n)>u1(n) => u(n) is diverges