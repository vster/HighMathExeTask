% Find the domain of convergence of the series
% w(z,n)=factorial(n)*(z-1-i)^n

syms z n;
w(z,n)=factorial(n)*(z-1-i)^n

% t=z-1-i
syms t;
w1(t,n)=factorial(n)*t^n
a(n)=factorial(n)

R=limit(abs(a(n)/a(n+1)),n,inf)
% 0 => t=0 => Domain of convergence is point z=1+i 
