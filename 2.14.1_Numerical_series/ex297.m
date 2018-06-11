% Find the sum of the series
% sum (n=1:inf) (2n+1)/(n^2*(n+1)^2)

syms n;
u(n)=(2*n+1)/(n^2*(n+1)^2)
S=symsum(u(n),n,1,inf)
% 1