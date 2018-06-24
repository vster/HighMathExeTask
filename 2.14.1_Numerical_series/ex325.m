% Investigate the convergence of the series
% 1!/5+2!/5^2+3!/5^3+...+n!/5^n+...

clear
syms n;
digits(3)
u(n)=factorial(n)/5^n

L=limit(u(n),n,inf)
% Inf
% series is diverges

syms i;
for i=1:10
     a(i)=vpa(u(i));
end
a
% [ 0.2, 0.08, 0.048, 0.0384, 0.0384, 0.0461, 0.0645, 0.103, 0.186, 0.372]