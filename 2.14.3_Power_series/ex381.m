% Find the sum of the series
% sum (n=1:inf) (-1)^n*2*n*x^(2*n-1)

syms x n a;
u(x,n)=(-1)^n*2*n*x^(2*n-1)

u1(x,n)=int(u(x,n),x)
% (-1)^n*x^(2*n)
% S=a1/(1-q)
a1=-x^2
q=-x^2
S=a1/(1-q)
% -x^2/(x^2 + 1)

S1=diff(S,x)
S1=simplify(S1)
% -(2*x)/(x^2 + 1)^2