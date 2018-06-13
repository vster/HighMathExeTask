% Using the Cauchy test, investigate the convergence of series
% sum(n=1:inf)((2n^2+2n+1)/(5n^2+2n+1))^n

syms n;
u(n)=((2*n^2+2*n+1)/(5*n^2+2*n+1))^n

C=limit(u(n)^(1/n),n,inf)
% 2/5
% C<1 => series is converges