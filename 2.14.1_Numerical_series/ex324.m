% Investigate the convergence of the series
% 1+2/5+3/5^2+...+n/5^(n-1)+...

clear
syms n;
digits(3)
u(n)=n/5^(n-1)

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% 25/16

syms i;
for i=1:8
     a(i)=vpa(u(i));
end
a
% [ 1.0, 0.4, 0.12, 0.032, 0.008, 0.00192, 4.48e-4, 1.02e-4]

% The Cauchy test
C=limit(u(n)^(1/n),n,inf)
% 1/5
% C<1 => series is converges

% d'Alembert's test
D=limit(u(n+1)/u(n),n,inf)
% 1/5
% D<1 => series is converges

syms x;
f=x/5^(x-1)
I=int(f,x,1,inf)
% (log(5) + 1)/log(5)^2
vpa(I)
% 1.01