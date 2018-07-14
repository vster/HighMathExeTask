% Find the sum of the series
% sum (n=1:inf) (n*(n+1))/a^(n+1)*x^(n-1)

syms x n a real
u(x,n)=(n*(n+1))/a^(n+1)*x^(n-1)

u1(x,n)=int(int(u,x),x)
% x^(n + 1)/a^(n + 1)
% u1(x,n) - geometrical progression
% S=a1/(1-q)
a1=x^2/a^2
q=x/a
S=a1/(1-q)
% -x^2/(a^2*(x/a - 1))
S=simplify(S)
% x^2/(a*(a - x))

S1=diff(S,x,2)
S1=simplify(S1)
% (2*a)/(a - x)^3
