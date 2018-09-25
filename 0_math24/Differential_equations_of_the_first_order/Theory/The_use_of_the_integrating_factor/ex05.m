% Solve the differential equation
% y*dx+(x^2+y^2-x)*dy=0

% 1)
clear
% y'=-y/(x^2+y^2-x)
syms x y(x)
eqn=diff(y(x))==-y/(x^2+y^2-x)
ySol=dsolve(eqn)
%                                                   0
%                                                x*1i
% solve(y - (2*C7*y)/(C7 - exp(y*2i)*1i) == -x*1i, y)

% 2)
syms x y
P=y
Q=x^2+y^2-x
dQx=diff(Q,x)
% 2*x - 1
dPy=diff(P,y)
% 1
% dQx/=dPy

eq1=dPy-dQx
% 2 - 2*x

mu=x^2+y^2
z=x^2+y^2
dzx=diff(z,x)
% 2*x
dzy=diff(z,y)
% 2*y

eq2=(dPy-dQx)/(Q*dzx-P*dzy)
% -(2*x - 2)/(2*x*(x^2 - x + y^2) - 2*y^2)
eq2=simplify(eq2)
% -1/(x^2 + y^2)

% 1/mu*dmu/dz=-1/z
% dmu/mu+dz/z=0
syms mu z
eq3=int(1/mu,mu)+int(1/z,z)
% mu*z=1 => mu=+-1/z

mu1=1/(x^2+y^2)

P1=simplify(P*mu1)
% y/(x^2 + y^2)
Q1=simplify(Q*mu1)
% (x^2 - x + y^2)/(x^2 + y^2)
dQ1x=simplify(diff(Q1,x))
% (x^2 - y^2)/(x^2 + y^2)^2
dP1y=simplify(diff(P1,y))
% (x^2 - y^2)/(x^2 + y^2)^2
% dQ1x==dP1y

% u(x,y)
% dux=P1
% duy=Q1
u=int(P1,x)
% atan(x/y)
syms phi(y)
u=u+phi(y)
% atan(x/y) + phi(y)
duy=diff(u,y)
% diff(phi(y), y) - x/(y^2*(x^2/y^2 + 1))
eq3=simplify(duy-Q1)
% diff(phi(y), y) - 1
dphi=1
phi(y)=int(1,y)
% y
% atan(x/y) + y = C