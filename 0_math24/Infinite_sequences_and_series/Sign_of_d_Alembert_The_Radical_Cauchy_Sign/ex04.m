% Investigate the convergence series
% a(n)=3^n*n!/n^n

syms n;
a(n)=3^n*factorial(n)/n^n
digits(4)

D=limit(a(n+1)/a(n),n,inf)
% 3*exp(-1)
vpa(D)
% 1.104 > 1 => series diverges