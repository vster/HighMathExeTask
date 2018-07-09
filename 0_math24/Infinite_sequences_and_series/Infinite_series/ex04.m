% Investigate the convergence of the series
% sum(n=0:inf)(1/3^n+1/5^n)

syms n;
u(n)=1/3^n+1/5^n

u1(n)=1/3^n
u2(n)=1/5^n

S1=symsum(u1(n),n,0,inf)
% 3/2
S2=symsum(u2(n),n,0,inf)
% 5/4
S3=S1+S2
% 11/4

S=symsum(u(n),n,0,inf)
% 11/4