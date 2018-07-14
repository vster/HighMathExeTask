% Find the sum of the series
% sum (n=1:inf) n*x^(n-1)/a^n if |x|<a

syms x n a real
u(x,n)=n*x^(n-1)/a^n

u1(x,n)=int(u,x)
% x^n/a^n
% u1(x,n) - geometrical progression
% S=a1/(1-q)
% a1=1/a
% q=x/a
S=a/(a-x)

S1=diff(S,x)
% a/(a - x)^2
