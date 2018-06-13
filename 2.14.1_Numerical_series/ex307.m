% Using d'Alembert's test, investigate the convergence of series
% 10/11+(10/11)^2*2^5+...+(10/11)^n*n^5+...

syms n;
u(n)=(10/11)^n*n^5
D=limit(u(n+1)/u(n),n,inf)
% 10/11
% D<1 => series is converges