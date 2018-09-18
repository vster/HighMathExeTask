% Solve equation
% (1+2*x*sqrt(x^2-y^2))*dx-2*y*sqrt(x^2-y^2)*dy=0

% 1)
clear
% y'=(1+2*x*sqrt(x^2-y^2))/(2*y*sqrt(x^2-y^2))
syms x y(x)
eqn=diff(y(x))==(1+2*x*sqrt(x^2-y^2))/(2*y*sqrt(x^2-y^2))
ySol=dsolve(eqn)
%   (x^2 - (C24 - (3*x)/2)^(2/3))^(1/2)
%  -(x^2 - (C24 - (3*x)/2)^(2/3))^(1/2)

% 2)
syms x y
P(x,y)=1+2*x*sqrt(x^2-y^2)
Q(x,y)=-2*y*sqrt(x^2-y^2)
dQx=diff(Q,x)
% -(2*x*y)/(x^2 - y^2)^(1/2)
dPy=diff(P,y)
% -(2*x*y)/(x^2 - y^2)^(1/2)
% dPx=dPy

% dUx=P(x,y), dUy=Q(x,y)
U(x,y)=int(P,x)
% x + (2*(x^2 - y^2)^(3/2))/3
syms phi(y)
U(x,y)=U(x,y)+phi(y)
% x + phi(y) + (2*(x^2 - y^2)^(3/2))/3
dUy=diff(U(x,y),y)
% diff(phi(y), y) - 2*y*(x^2 - y^2)^(1/2)
eq1=dUy-Q
% diff(phi(y), y)
dphi(y)=sym(0)
phi(y)=int(dphi(y),y)
% C
% x + (2*(x^2 - y^2)^(3/2))/3 + C = 0