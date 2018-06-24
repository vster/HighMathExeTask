% Investigate the convergence of the series
% 1/(2*log(2)*log(log(2)))+1/(3*log(3)*log(log(3)))+...
%   ...+1/((n+1)*log(n+1)*log(log(n+1)))+...

clear
syms n;
digits(3)
u(n)=1/((n+1)*log(n+1)*log(log(n+1)))

syms i;
for i=1:8
     a(i)=vpa(u(i));
end
a
% [ -1.97, 3.23, 0.552, 0.261, 0.159, 0.11, 0.0821, 0.0642]

L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% symsum(1/(log(n + 1)*log(log(n + 1))*(n + 1)), n, 1, Inf)

% The Cauchy test
C=limit(u(n)^(1/n),n,inf)
% 1

% d'Alembert's test
D=limit(u(n+1)/u(n),n,inf)
% 1

% Integral test
syms x;
f=1/((x+1)*log(x+1)*log(log(x+1)))
I=int(f,x,2,inf)
% Inf => series is diverges