% m*x''=-b*x'-a*x
% m*x''+b*x'+a*x=0

clear
syms x m a b k
eq1=m*k^2+b*k+a
kSol=solve(eq1,k).'
% [ -(b + (b^2 - 4*a*m)^(1/2))/(2*m), -(b - (b^2 - 4*a*m)^(1/2))/(2*m)]

% 1)
% b^2 - 4*a*m>0
r=-kSol
% [ (b + (b^2 - 4*a*m)^(1/2))/(2*m), (b - (b^2 - 4*a*m)^(1/2))/(2*m)]
% x=C1*exp(-r(1)*t)+C2*exp(-r(2)*t)

% 2)
% b^2 - 4*a*m=0
% k(1)=k(2)=-b/(2*m) = -r
% x=(C1+C2*t)*exp(-r*t)

% 3)
% b^2 - 4*a*m<0
% k1=-alfa+beta*i, k2=-alfa-beta*i
% where alfa=b/(2*m), beta=sqrt(4*a*m-b^2)/(2*m)
% x=exp(-alfa*t)*(C1*cos(beta*t)+C2*sin(beta*t))
% or
% x=A*exp(-alfa*t)*sin(beta*t+phi0)
% where A=sqrt(C1^2+c2^2), sin(phi0)=C1/A, cos(phi0)=C2/A