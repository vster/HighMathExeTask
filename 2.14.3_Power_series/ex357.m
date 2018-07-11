% Investigate the convergence of a power series
% u(x,n)=1/n*x^n

syms x n;
u(x,n)=1/n*x^n
a(n)=1/n
digits(3)

R=limit(abs(a(n)/a(n+1)),n,inf)
% 1 => -1 < x < 1

x=-1
u1(n)=u(x,n)
% (-1)^n/n

% Use the Leibniz test
% 1 condition
syms i;
for i=1:5
     u2(i)=vpa(abs(u1(i)));
end
u2
% [ 1.0, 0.5, 0.333, 0.25, 0.2, 0.167, 0.143, 0.125, 0.111, 0.1]

% 2 condition
L=limit(abs(u1(n)),n,inf)
% 0 => if x=-1 then series conerges

x=1
u1(n)=u(x,n)
% 1/n => series diverges
% So, the domain of convergence of the series is 
% -1 <= x < 1
