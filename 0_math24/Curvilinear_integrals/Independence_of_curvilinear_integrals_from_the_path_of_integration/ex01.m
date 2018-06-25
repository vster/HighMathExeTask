% Compute the curvilinear integral
% int(AB)(x+y)*dx+x*dy
% for two paths of integration:
% 1. AB is the straight line segment from point A (0,0) to point B (1,1);
% 2. AB is the parabola portion of y = x^2 from A (0,0) to B (1,1).

syms x dx;
% 1)
y=x
dy=dx
P=x+y
Q=x

% int(AB)P(x,y)*dx+Q(x,y)*dy=int(a:b)(P(x,y)+Q(x,y)*dy/dx)*dx

df=P*dx+Q*dy
% 3*dx*x
I1=int(df/dx,x,0,1)
% 3/2

% 2)
y=x^2
dy=2*x*dx
P=x+y
Q=x

df=P*dx+Q*dy
% dx*(x^2 + x) + 2*dx*x^2
df=simplify(df)
% dx*x*(3*x + 1)
I2=int(df/dx,x,0,1)
% 3/2

syms x y;
P=x+y
Q=x
DPy=diff(P,y)
% 1
DQx=diff(Q,x)
% 1
% DPy=DQx => F=(x+y,x) is potential field