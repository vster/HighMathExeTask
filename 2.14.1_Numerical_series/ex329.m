% Investigate the convergence of the series
% 1/2+1/(2^3+1)+1/(3^3+1)+...+1/(n^3+1)+...

clear
syms n;
digits(3)
u(n)=1/(n^3+1)

syms i;
for i=1:8
     a(i)=vpa(u(i));
end
a
% [ 0.5, 0.111, 0.0357, 0.0154, 0.00794, 0.00461, 0.00291, 0.00195]

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% eulergamma/3 + (psi(1/2 - (3^(1/2)*sqrt(-1))/2)*(3^(1/2)*sqrt(-1) + 1))/6 
%   - (psi((3^(1/2)*sqrt(-1))/2 + 1/2)*(3^(1/2)*sqrt(-1) - 1))/6 - 1/3

% The Cauchy test
C=limit(u(n)^(1/n),n,inf)
% 1

% d'Alembert's test
D=limit(u(n+1)/u(n),n,inf)
% 1

% Integral test
syms x;
f=1/(x^3+1)
I=int(f,x,1,inf)
% (pi*3^(1/2))/9 - log(2)/3
% I is converges => S is converges