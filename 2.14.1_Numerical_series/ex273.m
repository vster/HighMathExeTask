% Find the sum of the series
% 1/(1*2*3)+1/(2*3*4)+...+1/(n(n+1)(n+2))+...

syms n;
u(n)=1/(n*(n+1)*(n+2))
S=symsum(u(n),1,inf)
% 1/4