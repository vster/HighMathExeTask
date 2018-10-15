% m*x''=-a*x
% m*x''+a*x=0

clear
syms x m a b k
eq1=m*k^2+a
kSol=solve(eq1,k).'
% [ (-a)^(1/2)/m^(1/2), -(-a)^(1/2)/m^(1/2)]
% k1=beta*i, k2=-beta*i
% beta=sqrt(a/m)
% x=C1*cos(beta*t)+C2*(beta*t)
% or
% x=A*sin(beta*t+phi0)
% where A=sqrt(C1^2+c2^2), sin(phi0)=C1/A, cos(phi0)=C2/A