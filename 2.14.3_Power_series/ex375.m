% Investigate the convergence of a power series
% sum (n=1:inf) x^n/(2^n+3^n)

syms x n;
u(x,n)=x^n/(2^n+3^n)

a(n)=1/(2^n+3^n)
R=limit(a(n)/a(n+1),n,inf)
% 3 => -3<n<3

% x=3
u1(n)=subs(u(x,n),x,3)
% 3^n/(2^n + 3^n)

L=limit(u1(n),n,inf)
% 1 => at x=3 series diverges

% x=-3
u2(n)=subs(u(x,n),x,-3)
% (-3)^n/(2^n + 3^n)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:5
     u3(i)=vpa(abs(u2(i)));
end
u3
% [ 0.6, 0.692, 0.771, 0.835, 0.884]

% 2 condition
L=limit(abs(u2(n)),n,inf)
% 1 => at x=-3 series diverges

% -3<x<3



