% Find the sum of the series 
% S1 = sum (n=1:inf) n*x^(n-1) |x|<1 
% by differentiating term by term 
% S2 = sum (n=1:inf) x^(n-1) |x|<1

syms x n real;
u(x,n)=x^(n-1)
% u(x,n) - geometrical progression
% S=a/(1-q)
% a=1
% q=x
S2=1/(1-x)

S1=diff(S2)
% 1/(x - 1)^2



