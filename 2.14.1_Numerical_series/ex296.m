% Find the sum of the series
% 1/(1*2)+1/(2*3)+...+1/(n*(n+1))+...

syms n;
u(n)=1/(n*(n+1))
S=symsum(u(n),n,1,inf)
% 1