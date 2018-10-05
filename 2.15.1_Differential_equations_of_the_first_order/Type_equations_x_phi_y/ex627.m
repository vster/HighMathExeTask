% Integrate equation
% x=y'+log(y')

% Put y'=p (dy=p*dx)
% x=p+log(p)

syms p
x1=p+log(p)
dx1=diff(x1,p)
% 1/p + 1
% (1/p + 1)*dp = dx = dy/p
% dy=(1+p)*dp
y1=int(1+p,p)
% y=(p*(p + 2))/2+C
% y=1/2*(p+1)^2+C

% / x=p+log(p)
% \ y=1/2*(p+1)^2+C

syms y C
eq1=y-(1/2*(p+1)^2+C)
pSol=solve(eq1,p)

x2=subs(x1,p,pSol(1))
% log(2^(1/2)*(y - C)^(1/2) - 1) + 2^(1/2)*(y - C)^(1/2) - 1
