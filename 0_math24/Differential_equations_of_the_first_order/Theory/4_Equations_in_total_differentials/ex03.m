% Solve the differential equation
% exp(y)*dx+(2*y+x*exp(y))*dy=0

% 1)
clear
% y'=-exp(y)/(2*y+x*exp(y))
syms x y(x)
eqn=diff(y(x))==-exp(y)/(2*y+x*exp(y))
ySol=dsolve(eqn)
% solve(x*exp(y) + y^2 == -C22, y)
% x*exp(y) + y^2 == -C22

% 2)
syms x y
P(x,y)=exp(y)
Q(x,y)=2*y+x*exp(y)
dQx=diff(Q,x)
% exp(y)
dPy=diff(P,y)
% exp(y)
% dPx=dPy

% dUx=P(x,y), dUy=Q(x,y)
U(x,y)=int(P,x)
% x*exp(y)
syms phi(y)
U(x,y)=U(x,y)+phi(y)
% phi(y) + x*exp(y)
dUy=diff(U(x,y),y)
% diff(phi(y), y) + x*exp(y)
eq1=dUy-Q
% diff(phi(y), y) - 2*y
dphi(y)=2*y
phi(y)=int(dphi(y),y)
% y^2
% y^2 + x*exp(y) = C