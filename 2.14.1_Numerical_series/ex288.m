% Investigate the convergence of the series
% 1/2*log(2)+1/3*log(3)+...+1/((n+1)*log(n+1))+...

syms n x;
u(n)=1/((n+1)*log(n+1))
f(x)=1/((x+1)*log(x+1))

% Apply integral test
I=int(f,x,1,inf)
% Inf
% Integral is diverges => Series is diverges