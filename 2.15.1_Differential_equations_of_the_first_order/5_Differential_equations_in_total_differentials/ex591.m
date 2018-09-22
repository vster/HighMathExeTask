% y*dx-x*dy+log(x)*dx=0  (mu=phi(x))

clear
% 1)
% (y+log(x))*dx-x*dy=0
% y'=(y+log(x))/x
syms x y(x)
eqn=diff(y(x))==(y+log(x))/x
ySol=dsolve(eqn)
% C1*x - log(x) - 1

% 2)
syms x y
P(x,y)=y+log(x)
Q(x,y)=-x
dPy=diff(P,y)
% 1
dQx=diff(Q,x)
% -1
% dPy/=dQx

eq1=(dPy-dQx)/Q
% -2/x
mu=exp(int(eq1,x))
% 1/x^2
P1(x,y)=P(x,y)*mu
% (y + log(x))/x^2
Q1(x,y)=Q(x,y)*mu
% -1/x
dP1y=diff(P1,y)
% 1/x^2
dQ1x=diff(Q1,x)
% 1/x^2
% dP1y==dQ1x

syms C(x)
U=int(Q1,y)+C(x)
% C(x) - y/x
dUx=simplify(diff(U,x))
% diff(C(x), x) + y/x^2
dCx=dUx-P1
% diff(C(x), x) + y/x^2 - (y + log(x))/x^2
dCx=-log(x)/x^2
C(x)=int(-log(x)/x^2,x)
% (log(x) + 1)/x
% (log(x) + 1)/x-y/x+C1=0
% log(x) + 1-y=-C1*x
% y=C1*x - log(x) - 1