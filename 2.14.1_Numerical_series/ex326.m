% Investigate the convergence of the series
% 1+2!/2^2+3!/3^3+...+n!/n^n+...

clear
syms n;
digits(3)
u(n)=factorial(n)/n^n

syms i;
for i=1:8
     a(i)=vpa(u(i));
end
a
% [ 1.0, 0.5, 0.222, 0.0938, 0.0384, 0.0154, 0.00612, 0.0024]

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% symsum(factorial(n)/n^n, n, 1, Inf)

% The Cauchy test
C=limit(u(n)^(1/n),n,inf)
% exp(-1)
% C<1 => series is converges

% d'Alembert's test
D=limit(u(n+1)/u(n),n,inf)
% exp(-1)
% D<1 => series is converges

