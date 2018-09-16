% (x*cos(y)-y*sin(y))*dy+(x*sin(y)+y*cos(y))*dx=0

clear
% 1)
% y'==-(x*sin(y)+y*cos(y))/(x*cos(y)-y*sin(y))
syms x y(x)
eqn=diff(y(x))==-(x*sin(y)+y*cos(y))/(x*cos(y)-y*sin(y))
ySol=dsolve(eqn)
% solve(y*cos(y) - sin(y) + x*sin(y) == C17*exp(-x), y)
% y*cos(y) - sin(y) + x*sin(y) == C17*exp(-x)

% 2)
syms x y
P(x,y)=x*sin(y)+y*cos(y)
Q(x,y)=x*cos(y)-y*sin(y)
dPy=diff(P,y)
% cos(y) + x*cos(y) - y*sin(y)
dQx=diff(Q,x)
% cos(y)
% dPy /= dQx

eq1=(dPy-dQx)/Q
% 1
mu=exp(int(eq1,x))
% exp(x)
P1(x,y)=P(x,y)*mu
% exp(x)*(y*cos(y) + x*sin(y))
Q1(x,y)=Q(x,y)*mu
% exp(x)*(x*cos(y) - y*sin(y))
dP1y=diff(P1,y)
% exp(x)*(cos(y) + x*cos(y) - y*sin(y))
dQ1x=diff(Q1,x)
% exp(x)*(x*cos(y) - y*sin(y)) + exp(x)*cos(y)
% dP1y==dQ1x

% U(x,y)
% dUy=Q1, dUx=P1
% dUy=exp(x)*(x*cos(y) - y*sin(y))
% dUx=exp(x)*(y*cos(y) + x*sin(y))
syms C(x)
U=int(Q1,y)+C(x)
% C(x) + exp(x)*sin(y)*(x - 1) + y*exp(x)*cos(y)
dUx=simplify(diff(U,x))
% diff(C(x), x) + y*exp(x)*cos(y) + x*exp(x)*sin(y) == exp(x)*(y*cos(y) + x*sin(y))
% diff(C(x), x) = 0 => C(x)=C
% exp(x)*sin(y)*(x - 1) + y*exp(x)*cos(y) = C
% exp(x)*(x*sin(y)+y*cos(y)-sin(y))=C

