% Investigate the convergence of the series
% w(n)=1/n+1/10^n

syms n;
u(n)=1/n
v(n)=1/10^n
w(n)=u(n)+1i*v(n)

% u(n) diverges and v(n) converges => w(n) diverges