% Compute the curvilinear integral
% int(C)x^2*dx-x*y*dy
% where C is the arc of the circle lying in the first quadrant, 
% which is traversed counterclockwise

% int (C) P*dx+Q*dy = int (a:b) (P(x,f(x))+Q(x,f(x))*df/dx)*dx

syms x dx a;
y=sqrt(a^2-x^2)
dy=diff(y)*dx
% -(dx*x)/(a^2 - x^2)^(1/2)
df=x^2*dx-x*y*dy
% 2*dx*x^2
I=int(df/dx,x,a,0)
% -(2*a^3)/3