% Compute the curvilinear integral
% int(C)y/x*dx+dy
% along the curve y=log(x) in the interval 0<=x<=e

% int (C) P*dx+Q*dy = int (a:b) (P(x,f(x))+Q(x,f(x))*df/dx)*dx

syms x dx e;
y=log(x)
dy=diff(y,x)*dx
% dx/x
df=y/x*dx+dy
% dx/x + (dx*log(x))/x
I=int(df/dx,x,1,e)
% (log(e)*(log(e) + 2))/2
I=subs(I,log(e),1)
% 3/2
