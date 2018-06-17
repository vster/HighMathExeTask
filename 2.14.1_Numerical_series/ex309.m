% Using the integral criterion, 
% investigate the convergence of series
% int(n=1:inf)1/n^p, where p>1

syms n p;
assume(p>1)
S=symsum(1/n^p,n,1,inf)
% zeta(p)

syms x;
I=int(1/x^p,x,1,inf)
% 1/(p - 1)
% I is converges then S is converges