% (x^2*cos(x)-y)*dx+x*dy=0 (mu=phi(x))

clear
% 1)
% y'=-(x^2*cos(x)-y)/x
syms x y(x)
eqn=diff(y(x))==-(x^2*cos(x)-y)/x
ySol=dsolve(eqn)
% C2*x - x*sin(x)

% 2)
syms x y
P(x,y)=x^2*cos(x)-y
Q(x,y)=x
dPy=diff(P,y)
% -1
dQx=diff(Q,x)
% 1
% dPy/=dQx

eq1=(dPy-dQx)/Q
% -2/x
mu=exp(int(eq1,x))
% 1/x^2
P1(x,y)=P(x,y)*mu
% -(y - x^2*cos(x))/x^2
Q1(x,y)=Q(x,y)*mu
% 1/x
dP1y=diff(P1,y)
% -1/x^2
dQ1x=diff(Q1,x)
% -1/x^2
% dP1y==dQ1x

syms C(x)
U=int(Q1,y)+C(x)
% C(x) + y/x
dUx=simplify(diff(U,x))
% diff(C(x), x) - y/x^2
dCx=simplify(dUx-P1)
% diff(C(x), x) - cos(x)
dCx=cos(x)
C(x)=int(cos(x),x)
% sin(x)
% sin(x) + y/x = C1
% y=C1*x-x*sin(x)