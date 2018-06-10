% Find the sum of the series
% 1/(1*3)+1/(3*5)+1/(5*7)+...+1/((2n-1)*(2n+1))+...

syms n;
u(n)=1/((2*n-1)*(2*n+1))
S=symsum(u(n),1,inf)
% 1/2