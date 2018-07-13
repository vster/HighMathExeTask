% Find the sum of the series 
% sum (n=1:inf) x^n/n (|x|<1)

syms x n;
u(x,n)=x^n/n

u1=diff(u)
% x^(n - 1)
% u1(x,n) - geometrical progression
% S=a/(1-q)
% a=1
% q=x
S1=1/(1-x)

S2=int(S1)
% -log(x - 1)