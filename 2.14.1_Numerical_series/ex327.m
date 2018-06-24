% Investigate the convergence of the series
% 1+1/2^4+1/3^4+...+1/n^4+...

clear
syms n;
digits(3)
u(n)=1/n^4

syms i;
for i=1:8
     a(i)=vpa(u(i));
end
a
% [ 1.0, 0.0625, 0.0123, 0.00391, 0.0016, 7.72e-4, 4.16e-4, 2.44e-4]

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% pi^4/90

% The Cauchy test
C=limit(u(n)^(1/n),n,inf)
% 1

% d'Alembert's test
D=limit(u(n+1)/u(n),n,inf)
% 1

% Integral test
syms x;
f=1/x^4
I=int(f,x,1,inf)
% 1/3
% I is converges => S is converges
