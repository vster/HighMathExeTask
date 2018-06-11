% Investigate the convergence of the series
% 1+1/2^p+1/3^p+..., where p<1

syms n p;
assume(p>0);
assume(p<1);
u(n)=1/n^p;
L=limit(u(n),n,inf)
% inf
S=symsum(u(n),n,1,inf)
% Inf

