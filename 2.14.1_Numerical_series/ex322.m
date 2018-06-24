% Investigate the convergence of the series
% 1/10+1/20+1/30+...+1/(10*n)+...

syms n;
digits(3)
u(n)=1/(10*n)

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% Inf

% The Cauchy test
LC=limit(u(n)^(1/n),n,inf)
% 1

% d'Alembert's test
LD=limit(u(n+1)/u(n),n,inf)
% 1

syms x;
f=1/(10*x)
I=int(f,x,1,inf)
% Inf
% series is diverges

syms i;
digits(4);
Su(1)=vpa(u(1));
for i=2:12
    Su(i)=Su(i-1)+vpa(u(i));
end
Su