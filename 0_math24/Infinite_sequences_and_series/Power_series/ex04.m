% For what values of x does the series 
% S=sum(n=0:inf)x^n/(n+1) 
% converge?

syms x n;
u(x,n)=x^n/(n+1)
a(n)=1/(n+1)

R=limit(abs(a(n)/a(n+1)),n,inf)
% R=1 

x=-1
u1(n)=u(x,n)
% (-1)^n/(n + 1) - converges on the basis of Leibniz sign

x=1
u2(n)=u(x,n)
% 1/(n + 1) - diverges
% the interval of convergence of a given series is -1<=x<1