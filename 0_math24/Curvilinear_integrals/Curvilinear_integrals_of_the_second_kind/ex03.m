% Calculate
% int(C)(sqrt(x)*dx+sqrt(y)*dy)
% along the curve y=x^2 
% from the point O (0,0) to A (1,1)

% int (C) P*dx+Q*dy = int (a:b) (P(x,f(x))+Q(x,f(x))*df/dx)*dx

syms x dx real;
y=x^2
dy=diff(y,x)*dx
df=sqrt(x)*dx+sqrt(y)*dy
% dx*x^(1/2) + 2*dx*x*(x^2)^(1/2)
df= (x^(1/2)+2*x^2)*dx
I=int(df/dx,x,0,1)
% 4/3