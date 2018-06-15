% Calculate
% int(C)y*dx+x*dy
% along the curve y=x^2 
% from the point O (0,0) to A (1,1)

% int (C) P*dx+Q*dy = int (a:b) (P(x,f(x))+Q(x,f(x))*df/dx)*dx

syms x dx;
y=x^2
dy=diff(y)*dx
df=y*dx+x*dy
% 3*dx*x^2
I=int(df/dx,x,0,1)
% 1