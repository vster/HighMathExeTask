% Show that the series 
% sum(n=1:inf)x^n
% converges unevenly in the interval (-1; 1)

syms x n;
u(x,n)=x^n

S(x)=symsum(x^n,n,1,inf)
% NaN

syms i;
R(x,n)=symsum(x^i,i,n+1,inf)
R(x,n)=x^(n+1)/(1-x)    % Why?

L1=limit(abs(R(x,n)),x,-1,'right') % =1/2 - Why?

% Don't work :(