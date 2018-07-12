% Find the radius and the interval of convergence of the power series
% w(x,n)=2^n*x^n/sqrt((4*n+1)*5^n)

syms x n;
w(x,n)=2^n*x^n/sqrt((4*n+1)*5^n)
a(n)=2^n/sqrt((4*n+1)*5^n)

R=limit(abs(a(n)/a(n+1)),n,inf)
R=simplify(R)
% 5^(1/2)/2

x=-5^(1/2)/2
w1(n)=simplify(w(x,n))
% (2^n*(-5^(1/2)/2)^n)/(5^n*(4*n + 1))^(1/2)
L=limit(w1(n),n,inf)
% 0 => series converges on the basis of Leibniz sign

x=5^(1/2)/2
w2(n)=simplify(w(x,n))
% 5^(n/2)/(5^n*(4*n + 1))^(1/2)

% use integral test
syms y;
I=int(w2(y),y,0,inf)
% Inf => series diverges

% the interval of convergence of the original series is 
% -5^(1/2)/2 <= x < 5^(1/2)/2
