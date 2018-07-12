% Find the radius and the interval of convergence of the power series
% S=sum(n=0:inf)(x+3)^n/n!

syms x n;
u(x,n)=(x+3)^n/factorial(n)

% u=x+3
syms u n;
u(x,n)=u^n/factorial(n)

a(n)=1/factorial(n)

R=limit(a(n)/a(n+1),n,inf)
% Inf => the interval of convergence is (-inf,+inf)


