% Compute the integral
% int (C) ds/(y-x)
% where C  - line segment from point (0,-2) to (4,0)

% (y+2)/(0+2)=(x-0)/(4-0) => y=x/2-2

% int (C) F(x,y)*ds = int (a:b) F(x,f(x))*sqrt(1+diff(f(x))^2) *dx

syms x;
y=x/2-2
ds=sqrt(1+diff(y)^2)
f1=ds/(y-x)
% -5^(1/2)/(2*(x/2 + 2))
I=int(f1,x,0,4)
% -5^(1/2)*log(2)
vpa(I)
% ~-1.55