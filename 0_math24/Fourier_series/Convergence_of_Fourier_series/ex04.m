% Prove that the Fourier series of the function f(x) = x, 
% given in the interval [-pi, pi], converges in the space L2.

syms x n;
f(x)=x;
a0=sym(0)
abf(n)=(2*(-1)^(n + 1)*sin(n*x))/n

% f(x,N)=2*sum(n=1:N)(-1)^(n + 1)*sin(n*x)/n
% ||f(x)-f(x,N)||=||sum(n=N+1:inf)(2*(-1)^(n + 1)*sin(n*x))/n||
%  <=sum(n=N+1:inf)||2/n||=lim(N->+inf)sum(n=N+1:inf)(4/n^2)=0