% Using d'Alembert's test, investigate the convergence of series
% 11/10+(11/10)^2*1/2^5+...+(11/10)^n*1/n^5+...

syms n;
u(n)=(11/10)^n*1/n^5
D=limit(u(n+1)/u(n),n,inf)
% 11/10
% D>1 => series is diverges