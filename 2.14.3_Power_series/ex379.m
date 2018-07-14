% Find the sum of the series
% sum (n=1:inf) x^(n+1)/((n+1)*a^n)

syms x n a real
u(x,n)=x^(n+1)/((n+1)*a^n)

u1(x,n)=diff(u(x,n),x)
% x^n/a^n
% u1(x,n) - geometrical progression
% S=a1/(1-q)
% a1=x/a
% q=x/a
S=(x/a)/(1-x/a)
S=simplify(S)
% x/(a - x)

S1=int(S,x)
% - x - a*log(x - a)